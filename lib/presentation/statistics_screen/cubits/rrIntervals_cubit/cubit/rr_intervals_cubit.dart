import 'package:bloc/bloc.dart';
import 'package:cardiovascular_client/domain/repositories/julia_server_repository.dart';
import 'package:cardiovascular_client/presentation/utility/extract_data_from_json.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'rr_intervals_state.dart';
part 'rr_intervals_cubit.freezed.dart';

class RrIntervalsCubit extends Cubit<RrIntervalsState> {
  RrIntervalsCubit() : super(RrIntervalsState.initial());

    final JuliaServerRepository _juliaServerRepository =
      GetIt.I<JuliaServerRepository>();

  void getRrIntervalsData(String path) async {
    var rrIntervalsData =
        await _juliaServerRepository.getRrIntervalsData(path);
    var outputRrIntervals = extractDataFromJson("RrIntervals", rrIntervalsData);
    
    var mRR = extractDataFromJson("mRR", rrIntervalsData);
    var sdrr = extractDataFromJson("SDRR", rrIntervalsData);
    var pnn50 = extractDataFromJson("pNN50", rrIntervalsData);
    var rmssd = extractDataFromJson("rMSSD", rrIntervalsData);
    var msd = extractDataFromJson("MSD", rrIntervalsData);
    emit(RrIntervalsState.loaded(outputRrIntervals,mRR.first,sdrr.first,msd.first, rmssd.first,pnn50.first ));
  }

}
