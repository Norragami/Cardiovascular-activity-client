import 'package:bloc/bloc.dart';
import 'package:cardiovascular_client/domain/repositories/julia_server_repository.dart';
import 'package:cardiovascular_client/presentation/utility/extract_data_from_json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'decimated_ecg_state.dart';
part 'decimated_ecg_cubit.freezed.dart';

class DecimatedEcgCubit extends Cubit<DecimatedEcgState> {
  DecimatedEcgCubit() : super(DecimatedEcgState.initial());
  final JuliaServerRepository _juliaServerRepository =
      GetIt.I<JuliaServerRepository>();
  bool moved = false;
  double rectWidth = 200;

  
  void getDecimatedEcgData(String path) async {

    var decimatedEcgData =
        await _juliaServerRepository.getDecimatedEcgData(path);

        var outputDecimatedEcg = extractDataFromJson("outputDecimatedECG", decimatedEcgData);
        var outputDecimatedEcgX = extractDataFromJson("outputDecimatedECG_X", decimatedEcgData);

        emit(DecimatedEcgState.loaded(outputDecimatedEcg, outputDecimatedEcgX,rectWidth));

  }

  void windowChanged(int value, String path) async {
    switch (value) {
      case 1:
        rectWidth = 200;
        getDecimatedEcgData(path);
        break;
      case 2:
      rectWidth = 400;
        getDecimatedEcgData(path);
        break;
      case 3:
      rectWidth = 600;
        getDecimatedEcgData(path);
        break;
    }
  }
}
