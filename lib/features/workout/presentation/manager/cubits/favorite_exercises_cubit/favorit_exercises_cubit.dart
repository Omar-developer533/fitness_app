import 'package:bloc/bloc.dart';
import 'package:fitness_app/features/workout/data/models/exercise_model.dart';
import 'package:fitness_app/features/workout/data/repos/wourkout_repo.dart';
import 'package:meta/meta.dart';

part 'favorit_exercises_state.dart';

class FavoritExercisesCubit extends Cubit<FavoritExercisesState> {
  FavoritExercisesCubit(this.workoutRepo) : super(FavoritExercisesInitial());
  final WorkoutRepo workoutRepo;
  Future<void> addFavoriteExercise(ExerciseModel exercise) async {
    emit(AddFavoriteExerciseLoaging());
    var data = await workoutRepo.addFavoriteExercise(exercise);
    data.fold(
      (error) {
        emit(AddFavoriteExerciseFailure(errorMessage: error));
      },
      (success) {
        emit(AddFavoriteExerciseSuccess());
      },
    );
  }

  void getFavoriteExercises() {
    emit(GetFavoriteExercisesLoading());
    var data = workoutRepo.getFavoriteExercises();
    data.fold(
      (error) {
        emit(GetFavoriteExercisesFailure(errorMessage: error));
      },
      (exercises) {
        emit(GetFavoriteExercisesSuccess(exercises: exercises));
      },
    );
  }
}
