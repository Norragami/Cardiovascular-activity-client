import 'package:bloc/bloc.dart';
import 'package:cardiovascular_client/domain/repositories/julia_server_repository.dart';
import 'package:cardiovascular_client/presentation/utility/extract_data_from_json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'ap_state.dart';
part 'ap_cubit.freezed.dart';

class ApCubit extends Cubit<ApState> {
  ApCubit() : super(ApState.initial());
  final JuliaServerRepository _juliaServerRepository =
      GetIt.I<JuliaServerRepository>();

  void getApData(String path, int startPoint, int endPoint) async {
    var apData =
        await _juliaServerRepository.getApData(path, startPoint, endPoint);

    var outputAp = extractDataFromJson("outputAP", apData);
    var outputApX = extractDataFromJson("outputAP_X", apData);
    var outputApPeaksX = extractDataFromJson("outputAP_Peaks_x", apData);
    var outputApPeaksY = extractDataFromJson("outputAP_Peaks_y", apData);
    var outputApMinsX = extractDataFromJson("outputAP_Mins_x", apData);
    var outputApMinsY = extractDataFromJson("outputAP_Mins_y", apData);

    emit(ApState.loaded(outputAp, outputApX, outputApPeaksX, outputApPeaksY,
        outputApMinsX, outputApMinsY));
  }
}
