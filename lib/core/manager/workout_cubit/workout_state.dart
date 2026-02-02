part of 'workout_cubit.dart';

@immutable
sealed class WorkoutState {}

final class WorkoutInitial extends WorkoutState {}

final class AddWorkoutLoading extends WorkoutState {}

final class AddWorkoutSuccess extends WorkoutState {}

final class AddWorkoutFailure extends WorkoutState {
  final String failureMessage;

  AddWorkoutFailure({required this.failureMessage});
}

final class GetWorkoutLoading extends WorkoutState {}

final class GetWorkoutSuccess extends WorkoutState {
  final List<ExerciseModel> exercises;

  GetWorkoutSuccess({required this.exercises});
}

final class GetWorkoutFailure extends WorkoutState {
  final String failureMessage;

  GetWorkoutFailure({required this.failureMessage});
}
