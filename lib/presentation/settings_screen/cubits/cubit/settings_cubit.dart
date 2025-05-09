import 'package:bloc/bloc.dart';
import 'package:cardiovascular_client/domain/repositories/hive_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsState.initial());
  
   
  

  HiveRepository hiveRepository = GetIt.I<HiveRepository>();
  
  void saveSettings()  {
      hiveRepository.saveValueToBox('SDRR',form.control('SDRR').value);
      hiveRepository.saveValueToBox('rMSD',form.control('rMSD').value);
      hiveRepository.saveValueToBox('PNN50',form.control('PNN50').value);
  }

  void loadSettings() {
    if (hiveRepository.isBoxNotEmpty()) {
    var sdrr = hiveRepository.getValueFromBox('SDRR');
    var rMSD = hiveRepository.getValueFromBox('rMSD');
    var pnn50 = hiveRepository.getValueFromBox('PNN50');
    
    form.control('SDRR').value = sdrr;
    form.control('rMSD').value = rMSD;
    form.control('PNN50').value = pnn50;
    }
  }
  
  String readSettingsParameter(String key){
    return hiveRepository.getValueFromBox(key);
  }

  final form = fb.group(
    {
      
      'SDRR': FormControl<String>(
        value: '',
        validators: [RequiredCustomValidator()],
      ),
      'rMSD': FormControl<String>(
        value: '',
        validators: [RequiredCustomValidator()],
      ),
      'PNN50': FormControl<String>(
        value: '',
        validators: [RequiredCustomValidator()],
      ),
      
    },
  );

  List<String> checkSettings() {
    var sdrr = hiveRepository.getValueFromBox('SDRR');
    var rMSD = hiveRepository.getValueFromBox('rMSD');
    var pnn50 = hiveRepository.getValueFromBox('PNN50');
    return [sdrr, rMSD, pnn50];
  }

  
}



class RequiredCustomValidator extends Validator<dynamic> {
  const RequiredCustomValidator() : super();
  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    return control.value != null && control.value.toString().isNotEmpty && double.tryParse(control.value.toString()) != null
        ? null
        : {'Это обязательное поле. Должно содержать только числовые значения': 'This field is required'};
  }
}