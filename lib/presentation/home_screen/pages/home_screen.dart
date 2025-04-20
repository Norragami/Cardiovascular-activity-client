import 'package:cardiovascular_client/presentation/home_screen/cubits/ap_cubit/cubit/ap_cubit.dart';
import 'package:cardiovascular_client/presentation/home_screen/cubits/decimated_ecg_cubit/cubit/decimated_ecg_cubit.dart';
import 'package:cardiovascular_client/presentation/home_screen/cubits/ecg_cubit/cubit/ecg_cubit.dart';
import 'package:cardiovascular_client/presentation/home_screen/cubits/ppg_cubit/cubit/ppg_cubit.dart';
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
    ecgCubit.getEcgData("Мельникова_Елизавета_Дмитриевна_21-04-22_11-43-20_", 20000, 25000);
    ppgCubit.getPpgData("Мельникова_Елизавета_Дмитриевна_21-04-22_11-43-20_", 20000, 25000);
    apCubit.getApData("Мельникова_Елизавета_Дмитриевна_21-04-22_11-43-20_", 20000, 25000);
    decimatedEcgCubit.getDecimatedEcgData("Мельникова_Елизавета_Дмитриевна_21-04-22_11-43-20_");
 // Height of the rectangle // Width of the rectangle

    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Приложение для анализа сердечно-сосудистой деятельности'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade400,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(105, 0, 0, 0),
                child: Text('Пациент: Петров Петр Петрович',
                    style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
          BlocBuilder<DecimatedEcgCubit, DecimatedEcgState>(
  builder: (context, state) => state.when(
    initial: () => const CircularProgressIndicator(),
    loading: () => const CircularProgressIndicator(),
    loaded: (outputDecimatedEcg, outputDecimatedEcgX) {
      final xMin = outputDecimatedEcgX.first;
      final xMax = outputDecimatedEcgX.last;
      const rectWidth = 200.0;

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
                    ecgCubit.getEcgData("Мельникова_Елизавета_Дмитриевна_21-04-22_11-43-20_", start.toInt()*50, end.toInt()*50);
                    ppgCubit.getPpgData("Мельникова_Елизавета_Дмитриевна_21-04-22_11-43-20_", start.toInt()*50, end.toInt()*50);
                    apCubit.getApData("Мельникова_Елизавета_Дмитриевна_21-04-22_11-43-20_", start.toInt()*50, end.toInt()*50);
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
                            bottomTitles: const AxisTitles(
                              axisNameWidget: Text("Время,с", style: TextStyle(fontSize: 14)),
                              axisNameSize: 30,
                              sideTitles: SideTitles(showTitles: true, reservedSize: 30),
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
                            color: Colors.blue.withAlpha(70),
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
                          getTitlesWidget: (value, meta) {
                            // if (value == meta.max) {
                            //   return const Text(''); // Don't show max value
                            // }
                            return Text(value.toStringAsFixed(1));
                          },
                        )),
                    bottomTitles: const AxisTitles(
                        axisNameWidget: Text(
                          "Время,с",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        axisNameSize: 30,
                        sideTitles: SideTitles(
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
                          getTitlesWidget: (value, meta) {
                            // if (value == meta.max) {
                            //   return const Text(''); // Don't show max value
                            // }
                            return Text(value.toStringAsFixed(1));
                          },
                        )),
                    bottomTitles: const AxisTitles(
                        axisNameWidget: Text(
                          "Время,с",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        axisNameSize: 30,
                        sideTitles: SideTitles(
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
                          getTitlesWidget: (value, meta) {
                            // if (value == meta.max) {
                            //   return const Text(''); // Don't show max value
                            // }
                            return Text(value.toStringAsFixed(1));
                          },
                        )),
                    bottomTitles: const AxisTitles(
                        axisNameWidget: Text(
                          "Время,с",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        axisNameSize: 30,
                        sideTitles: SideTitles(
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


