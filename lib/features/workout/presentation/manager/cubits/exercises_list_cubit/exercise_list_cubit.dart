import 'package:fitness_app/core/utls/services/api_services.dart';
import 'package:fitness_app/features/workout/data/models/exercise_model.dart';
import 'package:fitness_app/features/workout/data/repos/wourkout_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'exercises_list_state.dart';

class ExerciseListCubit extends Cubit<ExercisesListState> {
  ExerciseListCubit(this.wourkoutRepo) : super(ExercisesListInitial());
  final WorkoutRepo wourkoutRepo;
  Future<void> getExercisesSortBy(String sortBy, ApiServices apiService) async {
    emit(GetExercisesListLoading());
    var data = await wourkoutRepo.getExerciseSortBy(apiService, sortBy);
    data.fold(
      (exercises) {
        emit(GetExercisesListSuccess(exercises: exercises));
      },
      (failure) {
        emit(GetExercisesListFailure(errorMessage: failure.errorMessage));
      },
    );
  }
}
