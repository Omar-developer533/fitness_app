part of 'favorit_exercises_cubit.dart';

@immutable
sealed class FavoritExercisesState {}

final class FavoritExercisesInitial extends FavoritExercisesState {}

final class AddFavoriteExerciseLoaging extends FavoritExercisesState {}

final class AddFavoriteExerciseSuccess extends FavoritExercisesState {}

final class AddFavoriteExerciseFailure extends FavoritExercisesState {
  final String errorMessage;

  AddFavoriteExerciseFailure({required this.errorMessage});
}

final class GetFavoriteExercisesLoading extends FavoritExercisesState {}

final class GetFavoriteExercisesFailure extends FavoritExercisesState {
  final String errorMessage;

  GetFavoriteExercisesFailure({required this.errorMessage});
}

final class GetFavoriteExercisesSuccess extends FavoritExercisesState {
  final List<ExerciseModel> exercises;

  GetFavoriteExercisesSuccess({required this.exercises});
}
