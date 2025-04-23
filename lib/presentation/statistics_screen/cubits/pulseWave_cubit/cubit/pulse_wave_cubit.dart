import 'package:bloc/bloc.dart';
import 'package:cardiovascular_client/domain/repositories/julia_server_repository.dart';
import 'package:cardiovascular_client/presentation/utility/extract_data_from_json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'pulse_wave_state.dart';
part 'pulse_wave_cubit.freezed.dart';

class PulseWaveCubit extends Cubit<PulseWaveState> {
  PulseWaveCubit() : super(PulseWaveState.initial());


  final JuliaServerRepository _juliaServerRepository = GetIt.I<JuliaServerRepository>();

  void getPulseWaveReachTimeData(String path) async {
    var pulseWaveIntervalsData =
        await _juliaServerRepository.getPulseWaveIntervalsData(path);
    var pulseWaveReachTime = extractDataFromJson("PulseWaveReachTime",pulseWaveIntervalsData );
    var intervalsX = extractDataFromJson("Intervals_X", pulseWaveIntervalsData);
    emit(PulseWaveState.loaded( pulseWaveReachTime, intervalsX));
  }
}
