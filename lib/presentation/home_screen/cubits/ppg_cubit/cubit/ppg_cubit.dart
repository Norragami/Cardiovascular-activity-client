import 'package:bloc/bloc.dart';
import 'package:cardiovascular_client/domain/repositories/julia_server_repository.dart';
import 'package:cardiovascular_client/presentation/utility/extract_data_from_json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'ppg_state.dart';
part 'ppg_cubit.freezed.dart';

class PpgCubit extends Cubit<PpgState> {
  PpgCubit() : super(PpgState.initial());
  final JuliaServerRepository _juliaServerRepository =
      GetIt.I<JuliaServerRepository>();

  void getPpgData(String path, int startPoint, int endPoint) async {
    var ppgData =
        await _juliaServerRepository.getPpgData(path, startPoint, endPoint);
    var outputPpg = extractDataFromJson("outputPPG", ppgData);
    var outputPpgX = extractDataFromJson("outputPPG_X", ppgData);
    var outputPpgPeaksX = extractDataFromJson("outputPPGPeaks_x", ppgData);
    var outputPpgPeaksY = extractDataFromJson("outputPPGPeaks_y", ppgData);
    var outputPpgMinsX = extractDataFromJson("outputPPGMins_x", ppgData);
    var outputPpgMinsY = extractDataFromJson("outputPPGMins_y", ppgData);

    emit(PpgState.loaded(outputPpg, outputPpgX, outputPpgPeaksX,
        outputPpgPeaksY, outputPpgMinsX, outputPpgMinsY));
  }
}
