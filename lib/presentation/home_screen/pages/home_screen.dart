import 'package:cardiovascular_client/domain/core/strings.dart';
import 'package:cardiovascular_client/presentation/home_screen/cubits/ap_cubit/cubit/ap_cubit.dart';
import 'package:cardiovascular_client/presentation/home_screen/cubits/decimated_ecg_cubit/cubit/decimated_ecg_cubit.dart';
import 'package:cardiovascular_client/presentation/home_screen/cubits/ecg_cubit/cubit/ecg_cubit.dart';
import 'package:cardiovascular_client/presentation/home_screen/cubits/ppg_cubit/cubit/ppg_cubit.dart';
import 'package:cardiovascular_client/presentation/settings_screen/pages/settings_screen.dart';
import 'package:cardiovascular_client/presentation/statistics_screen/pages/statistics_screen.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ecgCubit = context.read<EcgCubit>();
    final ppgCubit = context.read<PpgCubit>();
    final apCubit = context.read<ApCubit>();
    final decimatedEcgCubit = context.read<DecimatedEcgCubit>();
    // TODO Заменить путь на выбранный пользователем
    ecgCubit.getEcgData(Strings.patient1, 20000, 25000);
    ppgCubit.getPpgData(Strings.patient1, 20000, 25000);
    apCubit.getApData(Strings.patient1, 20000, 25000);
    decimatedEcgCubit.getDecimatedEcgData(Strings.patient1);
 // Height of the rectangle // Width of the rectangle

    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Приложение для анализа сердечно-сосудистой деятельности'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade400,
        actions: [IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) => const SettingsScreen()));
        }, icon: const Icon(Icons.settings))],
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            children: [
               Padding(
                padding: EdgeInsets.fromLTRB(105, 10, 0, 0),
                child: SizedBox(
                  height: 30,
                  child: DropdownMenu(dropdownMenuEntries: <DropdownMenuEntry> [
                    DropdownMenuEntry(value: 1, label: 'Петров Пётр Петрович')
                  ],initialSelection: 1,
                  
                  ),
                )
              ),
              const SizedBox(width: 50, height: 30,),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const StatisticsScreen(path: Strings.patient1,)));
                }, child: Center(child: Text('Статистика'))),
              ),
              const SizedBox(width: 50, height: 30,),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: SizedBox(
                  height: 30,
                  child: DropdownMenu(dropdownMenuEntries: <DropdownMenuEntry> [
                    DropdownMenuEntry(value: 1, label: 'Окно 10 с'),
                    DropdownMenuEntry(value: 2, label: 'Окно 20 с'),
                    DropdownMenuEntry(value: 3, label: 'Окно 30 с'),
                  ],
                  initialSelection: 1,
                  onSelected: (value) {
                    decimatedEcgCubit.windowChanged(value, Strings.patient1);
                  },
                  
                  ),
                )
              ),
            ],
          ),
          BlocBuilder<DecimatedEcgCubit, DecimatedEcgState>(
  builder: (context, state) => state.when(
    initial: () => const CircularProgressIndicator(),
    loading: () => const CircularProgressIndicator(),
    loaded: (outputDecimatedEcg, outputDecimatedEcgX,rectWidth) {
      final xMin = outputDecimatedEcgX.first;
      final xMax = outputDecimatedEcgX.last;
      

      final dragX = ValueNotifier<double?>((xMax + xMin) / 2); // initial position in center

      return ValueListenableBuilder<double?>(
        valueListenable: dragX,
        builder: (context, value, _) {
          double? startX;
          double? endX;

          if (value != null) {
            startX = (value - rectWidth / 2).clamp(xMin, xMax - rectWidth);
            endX = (value + rectWidth / 2).clamp(xMin + rectWidth, xMax);
          }

          return SizedBox(
            height: 170,
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: LayoutBuilder(builder: (context, constraints) {
                final chartWidth = constraints.maxWidth;
                

                return GestureDetector(
                  onPanStart: (_) => decimatedEcgCubit.moved = false,
                  onPanUpdate: (details) {
                    decimatedEcgCubit.moved = true; // Set flag if there's movement
                    final deltaX = details.delta.dx;
                    final deltaData = deltaX / chartWidth * (xMax - xMin);
                    dragX.value = (dragX.value! + deltaData).clamp(xMin + rectWidth / 2, xMax - rectWidth / 2);
                  },
                  onPanEnd: (_) {
                    if (decimatedEcgCubit.moved){
                    final start = (dragX.value! - rectWidth / 2).clamp(xMin, xMax - rectWidth);
                    final end = (dragX.value! + rectWidth / 2).clamp(xMin + rectWidth, xMax);
                    print('Начальная точка: $start, конечная точка: $end');
                    ecgCubit.getEcgData(Strings.patient1, start.toInt()*50, end.toInt()*50);
                    ppgCubit.getPpgData(Strings.patient1, start.toInt()*50, end.toInt()*50);
                    apCubit.getApData(Strings.patient1, start.toInt()*50, end.toInt()*50);
                    }
                  },
                  child: Stack(
                    children: [
                      LineChart(
                        LineChartData(
                          clipData: const FlClipData.all(),
                          lineTouchData: LineTouchData(enabled: false),
                          lineBarsData: [
                            LineChartBarData(
                              spots: [
                                for (int i = 0; i < outputDecimatedEcg.length; i++)
                                  FlSpot(outputDecimatedEcgX[i] * 50 / 1000, outputDecimatedEcg[i])
                              ],
                              dotData: const FlDotData(show: false),
                            ),
                          ],
                          titlesData: FlTitlesData(
                            leftTitles: AxisTitles(
                              axisNameSize: 40,
                              sideTitles: SideTitles(
                                showTitles: false,
                                reservedSize: 35,
                                getTitlesWidget: (value, meta) => Text(value.toStringAsFixed(1)),
                              ),
                            ),
                              bottomTitles: AxisTitles(
                              axisNameWidget: const Text("Время,с", style: TextStyle(fontSize: 14)),
                              axisNameSize: 30,
                              sideTitles: SideTitles(showTitles: true, reservedSize: 30,
                              getTitlesWidget: (value, meta) => Padding(
                            padding: const EdgeInsets.fromLTRB(0,5,0,0),
                            child: Text(value.toStringAsFixed(0)),
                          ),
                          maxIncluded: false,
                          
                              ),
                            ),
                            topTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            rightTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                          ),
                        ),
                      ),
                      if (startX != null && endX != null)
                        Positioned(
                          left: (startX - xMin) / (xMax - xMin) * chartWidth,
                          child: Container(
                            width: (endX - startX) / (xMax - xMin) * chartWidth,
                            height: 58,
                            color: Colors.green.withAlpha(90),
                          ),
                        ),
                    ],
                  ),
                );
              }),
            ),
          );
        },
      );
    },
  ),
),

          BlocBuilder<EcgCubit, EcgState>(builder: (context, state) => state.when(
            initial: () => const CircularProgressIndicator(),
            loading: () => const CircularProgressIndicator(),
            loaded: (outputEcg, outputEcgX, outputRx, outputRy, outputQx,
                outputQy, outputSx, outputSy) => SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: LineChart(LineChartData(
                lineTouchData: LineTouchData(
                  
                    touchTooltipData: LineTouchTooltipData(
                  
                  getTooltipColor: (touchedSpot) => Colors.blue.shade400,
                  getTooltipItems: (touchedSpots) {
                    return touchedSpots
                        .map((spot) => LineTooltipItem(
                            '${spot.y.toStringAsFixed(2)} отн.ед. \n ${spot.x.toStringAsFixed(2)} с',
                            const TextStyle()))
                        .toList();
                  },
                )),
                clipData: const FlClipData.all(),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      for (int i = 0; i < outputEcg.length; i++)
                        FlSpot(outputEcgX[i] / 1000, outputEcg[i])
                    ],
                    dotData: const FlDotData(show: false),
                  ),
                  LineChartBarData(barWidth: 0, color: Colors.red, spots: [
                    for (int i = 0; i < outputRx.length; i++)
                      FlSpot(outputRx[i] / 1000, outputRy[i])
                  ]),
                  LineChartBarData(barWidth: 0, color: Colors.green, spots: [
                    for (int i = 0; i < outputQx.length; i++)
                      FlSpot(outputQx[i] / 1000, outputQy[i])
                  ]),
                  LineChartBarData(barWidth: 0, color: Colors.pink, spots: [
                    for (int i = 0; i < outputSx.length; i++)
                      FlSpot(outputSx[i] / 1000, outputSy[i])
                  ]),
                ],
                titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                        axisNameWidget: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: const Text(
                            "Амплитуда,отн.ед.",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        axisNameSize: 40,
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 35,
                          maxIncluded: false,
                          minIncluded: false,
                          getTitlesWidget: (value, meta) {
                            // if (value == meta.max) {
                            //   return const Text(''); // Don't show max value
                            // }
                            return Text(value.toStringAsFixed(1));
                          },
                        )),
                    bottomTitles: AxisTitles(
                        axisNameWidget: const Text(
                          "Время,с",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        axisNameSize: 30,
                        sideTitles: SideTitles(
                          getTitlesWidget: (value, meta) => Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(value.toStringAsFixed(1)),
                          ),
                          maxIncluded: false,
                          minIncluded: false,
                          showTitles: true,
                          reservedSize: 30,
                        )),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    )),
              )),
            ),
          ),
          )),
          
          BlocBuilder<PpgCubit, PpgState>(builder: (context, state) => state.when(
            initial: () => const CircularProgressIndicator(),
            loading: () => const CircularProgressIndicator(),
            loaded: (outputPpg, outputPpgX, outputPpgPeaksX, outputPpgPeaksY, outputPpgMinsX, outputPpgMinsY) => SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: LineChart(LineChartData(
                lineTouchData: LineTouchData(
                    touchTooltipData: LineTouchTooltipData(
                  getTooltipColor: (touchedSpot) => Colors.blue.shade400,
                  getTooltipItems: (touchedSpots) {
                    return touchedSpots
                        .map((spot) => LineTooltipItem(
                            '${spot.y.toStringAsFixed(2)} отн.ед. \n ${spot.x.toStringAsFixed(2)} с',
                            const TextStyle()))
                        .toList();
                  },
                )),
                clipData: const FlClipData.all(),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      for (int i = 0; i < outputPpg.length; i++)
                        FlSpot(outputPpgX[i] / 1000, outputPpg[i])
                    ],
                    dotData: const FlDotData(show: false),
                  ),
                  LineChartBarData(barWidth: 0, color: Colors.red, spots: [
                    for (int i = 0; i < outputPpgPeaksX.length; i++)
                      FlSpot(outputPpgPeaksX[i] / 1000, outputPpgPeaksY[i])
                  ]),
                  LineChartBarData(barWidth: 0, color: Colors.red, spots: [
                    for (int i = 0; i < outputPpgMinsX.length; i++)
                      FlSpot(outputPpgMinsX[i] / 1000, outputPpgMinsY[i])
                  ]),
                ],
                titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                        axisNameWidget: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: const Text(
                            "Амплитуда,отн.ед.",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        axisNameSize: 30,
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 50,
                          maxIncluded: false,
                          minIncluded: false,
                          getTitlesWidget: (value, meta) {
                            // if (value == meta.max) {
                            //   return const Text(''); // Don't show max value
                            // }
                            return Text(value.toStringAsFixed(1));
                          },
                        )),
                    bottomTitles: AxisTitles(
                        axisNameWidget: const Text(
                          "Время,с",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        axisNameSize: 30,
                        sideTitles: SideTitles(
                          getTitlesWidget: (value, meta) => Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(value.toStringAsFixed(1)),
                          ),
                          maxIncluded: false,
                          minIncluded: false,
                          showTitles: true,
                          reservedSize: 30,
                        )),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    )),
              )),
            ),
          ),),),
          BlocBuilder<ApCubit, ApState>(builder: (context, state) => state.when(
            initial: () => const CircularProgressIndicator(),
            loading: () => const CircularProgressIndicator(),
            loaded: (outputAp, outputApX, outputApPeaksX, outputApPeaksY, outputApMinsX, outputApMinsY) => SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: LineChart(LineChartData(
                lineTouchData: LineTouchData(
                    touchTooltipData: LineTouchTooltipData(
                  getTooltipColor: (touchedSpot) => Colors.blue.shade400,
                  getTooltipItems: (touchedSpots) {
                    return touchedSpots
                        .map((spot) => LineTooltipItem(
                            '${spot.y.toStringAsFixed(2)} отн.ед. \n ${spot.x.toStringAsFixed(2)} с',
                            const TextStyle()))
                        .toList();
                  },
                )),
                clipData: const FlClipData.all(),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      for (int i = 0; i < outputAp.length; i++)
                        FlSpot(outputApX[i] / 1000, outputAp[i])
                    ],
                    dotData: const FlDotData(show: false),
                  ),
                  LineChartBarData(barWidth: 0, color: Colors.red, spots: [
                    for (int i = 0; i < outputApPeaksX.length; i++)
                      FlSpot(outputApPeaksX[i] / 1000, outputApPeaksY[i])
                  ]),
                  LineChartBarData(barWidth: 0, color: Colors.red, spots: [
                    for (int i = 0; i < outputApMinsX.length; i++)
                      FlSpot(outputApMinsX[i] / 1000, outputApMinsY[i])
                  ]),
                ],
                titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                        axisNameWidget: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0 ),
                          child: const Text(
                            "мм рт.ст.",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        axisNameSize: 30,
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 50,
                          maxIncluded: false,
                          minIncluded: false,
                          getTitlesWidget: (value, meta) {
                            // if (value == meta.max) {
                            //   return const Text(''); // Don't show max value
                            // }
                            return Text(value.toStringAsFixed(1));
                          },
                        )),
                    bottomTitles: AxisTitles(
                        axisNameWidget: const Text(
                          "Время,с",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        axisNameSize: 30,
                        sideTitles: SideTitles(
                          getTitlesWidget: (value, meta) => Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(value.toStringAsFixed(1)),
                          ),
                          maxIncluded: false,
                          minIncluded: false,
                          showTitles: true,
                          reservedSize: 30,
                        )),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    
                    )
                    )
                    )
                )),
      ),),),
          
                    
           
           
        ]),
      ),
    );
  }
}


