import 'package:cardiovascular_client/domain/core/strings.dart';
import 'package:cardiovascular_client/presentation/statistics_screen/cubits/heart_volume_cubit/cubit/heart_volume_cubit.dart';
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
    final heartVolumeCubit = context.read<HeartVolumeCubit>();

    rrIntervalsCubit.getRrIntervalsData(Strings.patient1);
    pulseWaveCubit.getPulseWaveReachTimeData(Strings.patient1);
    heartVolumeCubit.getStrokeVolumeData(Strings.patient1);


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
                      loaded: (rrIntervals,mRR, sdrr, msd, rmsd, pnn50 ) =>
                      Padding(
              padding: const EdgeInsets.all(5.0),
              child: BarChart(BarChartData(
                barTouchData: BarTouchData(
                  
                    touchTooltipData: BarTouchTooltipData(
                  
                  getTooltipColor: (touchedSpot) => Colors.blue.shade400,
                  getTooltipItem: (group, groupIndex, rod, rodIndex) {
                    return BarTooltipItem(
                      'Значение: ${rod.toY.toString()}, с',
                      const TextStyle(
                        color: Colors.black,
                        
                      ),
                    );
                  }
                    )),
                borderData: FlBorderData(
                  border: const Border(
                    bottom: BorderSide(width: 0),
                    left: BorderSide(width: 0.25),
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
                          "R-R интервалы",
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
                      'Значение: ${rod.toY.toString()}, мс \n Время R-R ${(intervalsX[groupIndex]/1000).toStringAsFixed(1)}с',
                      const TextStyle(
                        color: Colors.black,
                        
                      ),
                    );
                  }
                    )),
                borderData: FlBorderData(
                  border: const Border(
                    bottom: BorderSide(width: 0),
                    left: BorderSide(width: 0.25),
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
                            "Время распространения, мс",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        axisNameSize: 40,
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 45,
                          maxIncluded: false,
                          getTitlesWidget: (value, meta) {
                            return Text(value.toStringAsFixed(1));
                          },
                        )),
                    bottomTitles: const AxisTitles(
                        axisNameWidget: Text(
                          "Пульсовые волны",
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            SizedBox(
                  width: 700,
                  height: 300,
                  child: 
                  BlocBuilder<HeartVolumeCubit, HeartVolumeState>(
                    builder: (context, state) => state.when(
                        initial: () => Center(child: SizedBox(width: 100, height: 100, child: const CircularProgressIndicator())),
                         loading: () => Center(child: SizedBox(width: 100, height: 100, child: const CircularProgressIndicator())),
                          loaded: (heartVolumes, heartVolumesPeaksCoordinates) =>
                          
                          Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: BarChart(BarChartData(
                    barTouchData: BarTouchData(
                      
                        touchTooltipData: BarTouchTooltipData(
                      
                      getTooltipColor: (touchedSpot) => Colors.blue.shade400,
                      getTooltipItem: (group, groupIndex, rod, rodIndex) {
                        return BarTooltipItem(
                          'Значение: ${rod.toY.toStringAsFixed(2)}мл\nВремя пика АД ${(heartVolumesPeaksCoordinates[groupIndex]/1000).toStringAsFixed(1)}с',
                          const TextStyle(
                            color: Colors.black,
                            
                          ),
                        );
                      }
                        )),
                    borderData: FlBorderData(
                      border: const Border(
                        bottom: BorderSide(width: 0),
                        left: BorderSide(width: 0.25),
                      ),
                    ),
                     barGroups: [
                    for (int i = 0; i < heartVolumes.length; i++)
                      BarChartGroupData(
                        x: i,
                        barsSpace: 1,
                        barRods: [
                          BarChartRodData(
                            toY: heartVolumes[i],
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
                                "Ударный объем, мл",
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
                              "N сердечных сокращений",
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
                                "Ритмограмма ударного объема",
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
            height: 300,
            width: 700,
            child: BlocBuilder<RrIntervalsCubit,RrIntervalsState>(
              builder:(context,state)=> state.when(
                initial: () => Center(child: SizedBox(width: 100, height: 100, child: const CircularProgressIndicator())),
                loading: () => Center(child: SizedBox(width: 100, height: 100, child: const CircularProgressIndicator())),
                loaded: (rrIntervals,mRR, sdrr, msd, rmssd, pnn50)=> Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                      Text('mRR: ${mRR.toStringAsFixed(5)} мс', style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10,),
                      Text('SDRR: ${sdrr.toStringAsFixed(5)} мс', style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10,),
                      Text('MSD: ${msd.toStringAsFixed(5)} мс', style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10,),
                      Text('rMSD: ${rmssd.toStringAsFixed(5)} мс', style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10,),
                      Text('PNN50: ${pnn50.toStringAsFixed(2)} %', style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10,),
                    ],
                  ),
                  ),
                
                )
                
              ),
          )
          ],
        ),
        ]
      ),
    );
  }
}