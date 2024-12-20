import 'dart:math';

import 'package:cardiovascular_client/repositories/julia_server_repository.dart';
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
  List<double> ecgdata = [];
  List<double> outputRx = [];
  List<double> outputRy = [];
  List<double> outputQx = [];
  List<double> outputQy = [];
  List<double> outputSx = [];
  List<double> outputSy = [];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(105, 0, 0, 0),
              child: Text('Пациент: Петров Петр Петрович', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
        SizedBox(
          height: 400,
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
                    for (int i = 0; i < ecgdata.length; i++)
                      FlSpot(i.toDouble() / 1000, ecgdata[i])
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
                          return Text(value.toStringAsFixed(2));
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
              var data = await GetIt.I<JuliaServerRepository>().getEcgData(
                  "Мельникова_Елизавета_Дмитриевна_21-04-22_11-43-20_", 1, 2000);
              //       List<double> newData = data["outputECG"].map((e) => e is num ? e.toDouble() : null)
              // .whereType<double>() // Filters out any nulls or non-numeric values
              // .toList();
              setState(() {
                ecgdata = _extractDataFromJson("outputECG", data);
                outputRx = _extractDataFromJson("outputR_x", data);
                outputRy = _extractDataFromJson("outputR_y", data);
                outputQx = _extractDataFromJson("outputQ_x", data);
                outputQy = _extractDataFromJson("outputQ_y", data);
                outputSx = _extractDataFromJson("outputS_x", data);
                outputSy = _extractDataFromJson("outputS_y", data);
              });
            },
            child: const Text('Получить данные', style: TextStyle(fontSize: 20)),
          ),
        )
      ]),
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
