import 'package:bloc/bloc.dart';
import 'package:fitness_app/features/workout/data/models/wourkout_model.dart';
import 'package:fitness_app/features/workout/data/repos/wourkout_repo.dart';
import 'package:meta/meta.dart';

part 'workout_state.dart';

class WorkoutCubit extends Cubit<WorkoutState> {
  WorkoutCubit(this.workoutRepo) : super(WorkoutInitial());
  final WorkoutRepo workoutRepo;

  int sets = 0, reps = 0, timer = 0, wight = 0;
  String name = '', type = '';
  Future<void> addWokout() async {
    emit(AddWorkoutLoading());
    var add = await workoutRepo.addWorkout(
      WourkoutModel(
        name: name,
        reps: reps,
        restTimer: timer,
        sets: sets,
        weight: wight,
      ),
    );
    add.fold(
      (failer) {
        emit(AddWorkoutFailure(failureMessage: failer));
      },
      (succes) {
        emit(AddWorkoutSuccess());
      },
    );
  }

  void getWorkouts() {
    emit(GetWorkoutLoading());
    var get = workoutRepo.getWorkout();
    get.fold(
      (faier) {
        emit(GetWorkoutFailure(failureMessage: faier));
      },
      (exercises) {
        emit(GetWorkoutSuccess(exercises: exercises));
      },
    );
  }
}
