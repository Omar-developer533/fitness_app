import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'exercise_type_state.dart';

class ExerciseTypeCubit extends Cubit<ExerciseTypeState> {
  ExerciseTypeCubit({
    this.coolDownPress = false,
    this.warmUpPress = true,
    this.mainIsPress = false,
  }) : super(ExerciseTypeInitial());
  bool mainIsPress;
  bool coolDownPress;
  bool warmUpPress;
  void exerciseType() {
    if (coolDownPress) {
      emit(ExerciseTypeSuperSet());
    } else if (warmUpPress) {
      emit(ExerciseTypeRegular());
    }
  }
}
