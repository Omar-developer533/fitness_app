import 'package:bloc/bloc.dart';
import 'package:fitness_app/features/tracking/data/repos/tracking_repo.dart';
import 'package:meta/meta.dart';

part 'weight_state.dart';

class WeightCubit extends Cubit<WeightState> {
  WeightCubit(this.trackingRepo) : super(WeightInitial());
  final TrackingRepo trackingRepo;

  Future<void> addWeight(String weight) async {
    emit(AddWeightLoading());
    var add = await trackingRepo.addWeight(weight);
    add.fold(
      (fail) {
        emit(AddWeightFailure(failureMessage: fail));
      },
      (add) {
        emit(AddWeightSuccess());
      },
    );
  }

  void getWeight() {
    emit(GetWeightLoading());
    var get = trackingRepo.getWeight();
    get.fold(
      (fail) {
        emit(GetWeightFailure(failureMessage: fail));
      },
      (weights) {
        emit(GetWeightSuccess(weights: weights));
      },
    );
  }
}
