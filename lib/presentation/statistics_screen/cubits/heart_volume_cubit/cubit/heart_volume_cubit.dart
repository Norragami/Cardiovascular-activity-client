import 'package:bloc/bloc.dart';
import 'package:cardiovascular_client/domain/repositories/julia_server_repository.dart';
import 'package:cardiovascular_client/presentation/utility/extract_data_from_json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'heart_volume_state.dart';
part 'heart_volume_cubit.freezed.dart';

class HeartVolumeCubit extends Cubit<HeartVolumeState> {
  HeartVolumeCubit() : super(HeartVolumeState.initial());

final JuliaServerRepository _juliaServerRepository = GetIt.I<JuliaServerRepository>();


void getStrokeVolumeData(String path) async {
  var strokeVolumeData = await _juliaServerRepository.getStrokeVolumeData(path);
  var strokeVolume = extractDataFromJson("HeartVolume",strokeVolumeData);
  var strokeVolumePeaksCoordinates = extractDataFromJson("HeartVolumePeaksCoordinates",strokeVolumeData);
  
  emit(HeartVolumeState.loaded(strokeVolume,strokeVolumePeaksCoordinates));
}



}
