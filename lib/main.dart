import 'package:cardiovascular_client/home_screen.dart';
import 'package:cardiovascular_client/repositories/julia_server_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

void main() {
  GetIt.I.registerSingleton<Talker>(TalkerFlutter.init());  
  GetIt.I.registerSingleton<JuliaServerRepository>(JuliaServerRepository());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(child: Text('Приложение для анализа сердечно-сосудистой деятельности')),
        ),
        body:  const HomeScreen(),
      ),
    );
  }
}


