import 'package:cardiovascular_client/domain/repositories/julia_server_repository.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<double> outputEcg = [];
  List<double> outputEcgX = [];
  List<double> outputRx = [];
  List<double> outputRy = [];
  List<double> outputQx = [];
  List<double> outputQy = [];
  List<double> outputSx = [];
  List<double> outputSy = [];
  List<double> outputPpg = [];
  List<double> outputPpgX = [];
  List<double> outputPpgPeaksX = [];
  List<double> outputPpgPeaksY = [];
  List<double> outputPpgMinsX = [];
  List<double> outputPpgMinsY = [];
  List<double> outputAp = [];
  List<double> outputApX = [];
  List<double> outputApPeaksX = [];
  List<double> outputApPeaksY = [];
  List<double> outputApMinsX = [];
  List<double> outputApMinsY = [];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Приложение для анализа сердечно-сосудистой деятельности'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade400,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(105, 0, 0, 0),
                child: Text('Пациент: Петров Петр Петрович', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
          SizedBox(
            height: 250,
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
                        axisNameWidget: const Text(
                          "Амплитуда,отн.ед.",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        axisNameSize: 30,
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 50,
                          getTitlesWidget: (value, meta) {
                            if (value == meta.max) {
                              return const Text(''); // Don't show max value
                            }
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
          SizedBox(
            height: 250,
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
                        axisNameWidget: const Text(
                          "Амплитуда,отн.ед.",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        axisNameSize: 30,
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 50,
                          getTitlesWidget: (value, meta) {
                            if (value == meta.max) {
                              return const Text(''); // Don't show max value
                            }
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
          SizedBox(
            height: 250,
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
                        axisNameWidget: const Text(
                          "Амплитуда,отн.ед.",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        axisNameSize: 30,
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 50,
                          getTitlesWidget: (value, meta) {
                            if (value == meta.max) {
                              return const Text(''); // Don't show max value
                            }
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
          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              onPressed: () async {
                var ecgData = await GetIt.I<JuliaServerRepository>().getEcgData(
                    "Мельникова_Елизавета_Дмитриевна_21-04-22_11-43-20_", 20000, 30000);
                var ppgData = await GetIt.I<JuliaServerRepository>().getPpgData(
                    "Мельникова_Елизавета_Дмитриевна_21-04-22_11-43-20_", 20000, 30000);
                var apData = await GetIt.I<JuliaServerRepository>().getApData(
                    "Мельникова_Елизавета_Дмитриевна_21-04-22_11-43-20_", 20000, 30000);
                    
      
                //       List<double> newData = data["outputECG"].map((e) => e is num ? e.toDouble() : null)
                // .whereType<double>() // Filters out any nulls or non-numeric values
                // .toList();
                setState(() {
                  outputEcg = _extractDataFromJson("outputECG", ecgData);
                  outputEcgX = _extractDataFromJson("outputECG_X", ecgData);
                  outputRx = _extractDataFromJson("outputR_x", ecgData);
                  outputRy = _extractDataFromJson("outputR_y", ecgData);
                  outputQx = _extractDataFromJson("outputQ_x", ecgData);
                  outputQy = _extractDataFromJson("outputQ_y", ecgData);
                  outputSx = _extractDataFromJson("outputS_x", ecgData);
                  outputSy = _extractDataFromJson("outputS_y", ecgData);
      
                  outputPpg = _extractDataFromJson("outputPPG", ppgData);
                  outputPpgX = _extractDataFromJson("outputPPG_X", ppgData);
                  outputPpgPeaksX = _extractDataFromJson("outputPPGPeaks_x", ppgData);
                  outputPpgPeaksY = _extractDataFromJson("outputPPGPeaks_y", ppgData);
                  outputPpgMinsX = _extractDataFromJson("outputPPGMins_x", ppgData);
                  outputPpgMinsY = _extractDataFromJson("outputPPGMins_y", ppgData);

                  outputAp = _extractDataFromJson("outputAP", apData);
                  outputApX = _extractDataFromJson("outputAP_X", apData);
                  outputApPeaksX = _extractDataFromJson("outputAP_Peaks_x", apData);
                  outputApPeaksY = _extractDataFromJson("outputAP_Peaks_y", apData);
                  outputApMinsX = _extractDataFromJson("outputAP_Mins_x", apData);
                  outputApMinsY = _extractDataFromJson("outputAP_Mins_y", apData);
                  
      
      
      
      
                });
              },
              child: const Text('Получить данные', style: TextStyle(fontSize: 20)),
            ),
          )
        ]),
      ),
    );
  }
}

List<double> _extractDataFromJson(String key, Map<String, dynamic> data) {
  final result = data[key]
      .map((e) => e is num ? e.toDouble() : null)
      .whereType<double>() // Filters out any nulls or non-numeric values
      .toList();
  return result;
}
