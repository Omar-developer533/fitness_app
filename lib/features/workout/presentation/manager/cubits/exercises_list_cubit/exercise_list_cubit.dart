import 'package:bloc/bloc.dart';
import 'package:fitness_app/features/workout/data/models/exercise_model.dart';
import 'package:meta/meta.dart';

part 'exercises_list_state.dart';

class ExerciseListCubit extends Cubit<ExercisesListState> {
  ExerciseListCubit(super.initialState);
  
}
