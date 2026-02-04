part of 'weight_cubit.dart';

@immutable
sealed class WeightState {}

final class WeightInitial extends WeightState {}

final class AddWeightLoading extends WeightState {}

final class AddWeightSuccess extends WeightState {}

final class AddWeightFailure extends WeightState {
  final String failureMessage;

  AddWeightFailure({required this.failureMessage});
}

final class GetWeightLoading extends WeightState {}

final class GetWeightSuccess extends WeightState {
  final List<String> weights;

  GetWeightSuccess({required this.weights});
}

final class GetWeightFailure extends WeightState {
  final String failureMessage;

  GetWeightFailure({required this.failureMessage});
}
