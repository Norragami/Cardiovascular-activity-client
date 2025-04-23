part of 'pulse_wave_cubit.dart';

@freezed
class PulseWaveState with _$PulseWaveState {
  const factory PulseWaveState.initial() = _Initial;
  const factory PulseWaveState.loading() = _Loading;
  const factory PulseWaveState.loaded(List<double> pulseWaveReachTime,List<double> pulseWaveReachTimeX) = _Loaded;
}
