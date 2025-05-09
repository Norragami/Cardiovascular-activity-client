
import 'package:cardiovascular_client/presentation/settings_screen/cubits/cubit/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var settingsCubit = context.read<SettingsCubit>();
    settingsCubit.loadSettings();
    return Scaffold(
    appBar: AppBar(
        title: const Text('Настройки'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade400,
      ),
      body: ReactiveForm(
        formGroup: settingsCubit.form,
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReactiveTextField(
                  formControlName: 'SDRR',
                  decoration: const InputDecoration(
                    labelText: 'SDRR более чем ... ,мс',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 25),
                ReactiveTextField(
                  formControlName: 'rMSD',
                  decoration: const InputDecoration(
                    labelText: 'rMSD более чем ... ,мс',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 25),
                ReactiveTextField(
                  formControlName: 'PNN50',
                  decoration: const InputDecoration(
                    labelText: 'PNN50 более чем ... ,%',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(onPressed: (){
                  //Сохранить настройки
                  settingsCubit.saveSettings();
                }, child: Text('Сохранить',style: TextStyle(fontSize: 20),)),
                
              ],
            ),
          ),
        ),
      ),

    );
  }
}