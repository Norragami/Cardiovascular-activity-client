import 'dart:io';

import 'package:cardiovascular_client/domain/repositories/julia_server_repository.dart';
import 'package:cardiovascular_client/presentation/home_screen/cubits/ap_cubit/cubit/ap_cubit.dart';
import 'package:cardiovascular_client/presentation/home_screen/cubits/decimated_ecg_cubit/cubit/decimated_ecg_cubit.dart';
import 'package:cardiovascular_client/presentation/home_screen/cubits/ecg_cubit/cubit/ecg_cubit.dart';
import 'package:cardiovascular_client/presentation/home_screen/cubits/ppg_cubit/cubit/ppg_cubit.dart';
import 'package:cardiovascular_client/presentation/home_screen/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows) {
      await windowManager.ensureInitialized();

      WindowOptions windowOptions = const WindowOptions(
        minimumSize: Size(1400, 800),
        size: Size(1600, 900),
        center: true,
        // skipTaskbar: false,
        titleBarStyle: TitleBarStyle.normal,
        title: 'Система поддержки принятия решений врача-кардиолога',
        // windowButtonVisibility: false,
      );
      windowManager.waitUntilReadyToShow(windowOptions, () async {
        await windowManager.show();
        await windowManager.focus();
      });
    }
  

  GetIt.I.registerSingleton<Talker>(TalkerFlutter.init());  
  GetIt.I.registerSingleton<JuliaServerRepository>(JuliaServerRepository());

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
       home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => EcgCubit()),
          BlocProvider(create: (context) => ApCubit()),
          BlocProvider(create: (context) => PpgCubit()),
          BlocProvider(create: (context) => DecimatedEcgCubit()),
        ],
        child: const HomeScreen(),
       ),
      supportedLocales: [
        Locale('ru','RU'),
      ],
    );
  }
}


