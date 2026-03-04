part of 'exercise_list_cubit.dart';

@immutable
sealed class ExercisesListState {}

final class GetExercisesListLoading extends ExercisesListState {}

final class GetExercisesListSuccess extends ExercisesListState {
  final List<ExerciseModel> exercises;

  GetExercisesListSuccess({required this.exercises});
}

final class GetExercisesListFailure extends ExercisesListState {
  final String errorMessage;

  GetExercisesListFailure({required this.errorMessage});
}
