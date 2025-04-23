import 'package:cardiovascular_client/presentation/statistics_screen/cubits/pulseWave_cubit/cubit/pulse_wave_cubit.dart';
import 'package:cardiovascular_client/presentation/statistics_screen/cubits/rrIntervals_cubit/cubit/rr_intervals_cubit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatisticsScreen extends StatelessWidget {
   const StatisticsScreen({super.key, required this.path});

  final String path;
 
  @override
  Widget build(BuildContext context) {

    final rrIntervalsCubit = context.read<RrIntervalsCubit>();
    final pulseWaveCubit = context.read<PulseWaveCubit>();

    rrIntervalsCubit.getRrIntervalsData("Мельникова_Елизавета_Дмитриевна_21-04-22_11-43-20_");
    pulseWaveCubit.getPulseWaveReachTimeData("Мельникова_Елизавета_Дмитриевна_21-04-22_11-43-20_");



    return Scaffold(
      appBar: AppBar(
        title: const Text('Статистика'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade400,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
        [ Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 700,
              height: 300,
              child: 
              BlocBuilder<RrIntervalsCubit, RrIntervalsState>(
                builder: (context, state) => state.when(
                    initial: () => Center(child: SizedBox(width: 100, height: 100, child: const CircularProgressIndicator())),
                     loading: () => Center(child: SizedBox(width: 100, height: 100, child: const CircularProgressIndicator())),
                      loaded: (rrIntervals, rrIntervalsX) =>
                      
                      Padding(
              padding: const EdgeInsets.all(5.0),
              child: BarChart(BarChartData(
                barTouchData: BarTouchData(
                  
                    touchTooltipData: BarTouchTooltipData(
                  
                  getTooltipColor: (touchedSpot) => Colors.blue.shade400,
                  getTooltipItem: (group, groupIndex, rod, rodIndex) {
                    return BarTooltipItem(
                      '${rod.toY.toString()}, с',
                      const TextStyle(
                        color: Colors.black,
                        
                      ),
                    );
                  }
                    )),
                borderData: FlBorderData(
                  border: const Border(
                    bottom: BorderSide(width: 1),
                    left: BorderSide(width: 1),
                  ),
                ),
                 barGroups: [
                for (int i = 0; i < rrIntervals.length; i++)
                  BarChartGroupData(
                    x: i,
                    barsSpace: 1,
                    barRods: [
                      BarChartRodData(
                        toY: rrIntervals[i],
                        width: 1,
                        color: Colors.blue.shade400,
                      ),
                    ]
                  )
                
                  
                  
                ],
                titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                        axisNameWidget: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: const Text(
                            "Длительность, с",
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
                          
                            return Text(value.toStringAsFixed(1));
                          },
                        )),
                    bottomTitles: const AxisTitles(
                        axisNameWidget: Text(
                          "N интервала",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        axisNameSize: 30,
                        sideTitles: SideTitles(
                          showTitles: false,
                          reservedSize: 30,
                        )),
                    topTitles: AxisTitles(
                        axisNameWidget: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: const Text(
                            "Ритмограмма R-R интервалов",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        axisNameSize: 40,
                        sideTitles: SideTitles(
                          showTitles: false,
                          
                        )),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    )),
              )),
            ),
                      
                      )
                    
                )
              ),
            SizedBox(
              width: 700,
              height: 300,
              child: 
              BlocBuilder<PulseWaveCubit, PulseWaveState>(
                builder: (context, state) => state.when(
                    initial: () => Center(child: SizedBox(width: 100, height: 100, child: const CircularProgressIndicator())),
                     loading: () => Center(child: SizedBox(width: 100, height: 100, child: const CircularProgressIndicator())),
                      loaded: (pulseWaveReachTime, intervalsX) =>
                      
                      Padding(
              padding: const EdgeInsets.all(5.0),
              child: BarChart(BarChartData(
                barTouchData: BarTouchData(
                  
                    touchTooltipData: BarTouchTooltipData(
                  
                  getTooltipColor: (touchedSpot) => Colors.blue.shade400,
                  getTooltipItem: (group, groupIndex, rod, rodIndex) {
                    return BarTooltipItem(
                      '${rod.toY.toString()}, с \n Время R-R ${(intervalsX[groupIndex]/1000).toStringAsFixed(1)} с',
                      const TextStyle(
                        color: Colors.black,
                        
                      ),
                    );
                  }
                    )),
                borderData: FlBorderData(
                  border: const Border(
                    bottom: BorderSide(width: 1),
                    left: BorderSide(width: 1),
                  ),
                ),
                 barGroups: [
                for (int i = 0; i < pulseWaveReachTime.length; i++)
                  BarChartGroupData(
                    x: i,
                    barsSpace: 1,
                    barRods: [
                      BarChartRodData(
                        toY: pulseWaveReachTime[i],
                        width: 1,
                        color: Colors.blue.shade400,
                      ),
                    ]
                  )
                ],
                titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                        axisNameWidget: Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: const Text(
                            "Длительность, с",
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
                            return Text(value.toStringAsFixed(1));
                          },
                        )),
                    bottomTitles: const AxisTitles(
                        axisNameWidget: Text(
                          "N интервала",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        axisNameSize: 30,
                        sideTitles: SideTitles(
                          showTitles: false,
                          reservedSize: 30,
                        )),
                    topTitles: AxisTitles(
                        axisNameWidget: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: const Text(
                            "Ритмограмма времени распространения пульсовой волны",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        axisNameSize: 40,
                        sideTitles: SideTitles(
                          showTitles: false,
                          
                        )),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    )),
              )),
            ),
                      
                      )
                    
                )
              ),
            
          ],
        ),
        SizedBox(height: 100,),
        SizedBox(
              width: 500,
              height: 300,
              child: Card(
                color: Colors.red,
              ),
              ),
        ]
      ),
    );
  }
}