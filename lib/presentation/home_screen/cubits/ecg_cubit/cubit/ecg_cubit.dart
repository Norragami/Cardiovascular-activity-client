import 'package:bloc/bloc.dart';
import 'package:cardiovascular_client/domain/repositories/julia_server_repository.dart';
import 'package:cardiovascular_client/presentation/utility/extract_data_from_json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'ecg_state.dart';
part 'ecg_cubit.freezed.dart';

class EcgCubit extends Cubit<EcgState> {
  EcgCubit() : super(EcgState.initial());
  final JuliaServerRepository _juliaServerRepository =
      GetIt.I<JuliaServerRepository>();

  void getEcgData(String path, int startPoint, int endPoint) async {
    var ecgData =
        await _juliaServerRepository.getEcgData(path, startPoint, endPoint);

    var outputEcg = extractDataFromJson("outputECG", ecgData);
    var outputEcgX = extractDataFromJson("outputECG_X", ecgData);
    var outputRx = extractDataFromJson("outputR_x", ecgData);
    var outputRy = extractDataFromJson("outputR_y", ecgData);
    var outputQx = extractDataFromJson("outputQ_x", ecgData);
    var outputQy = extractDataFromJson("outputQ_y", ecgData);
    var outputSx = extractDataFromJson("outputS_x", ecgData);
    var outputSy = extractDataFromJson("outputS_y", ecgData);

    emit(EcgState.loaded(outputEcg, outputEcgX, outputRx, outputRy, outputQx,
        outputQy, outputSx, outputSy));
  }





}




