part of 'workout_cubit.dart';

@immutable
sealed class WorkoutState {}

final class WorkoutInitial extends WorkoutState {}

final class AddWorkoutLoading extends WorkoutState {}

final class AddWorkoutSuccess extends WorkoutState {
 


}

final class AddWorkoutFailure extends WorkoutState { final String FailureMessage;

  AddWorkoutFailure({required this.FailureMessage});}
