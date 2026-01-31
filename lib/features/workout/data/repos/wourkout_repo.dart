import 'package:dartz/dartz.dart';
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/features/workout/data/models/exercise_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class WorkoutRepo {
  Future<Either<String, void>> addExercise(ExerciseModel exercise);
}

class WourkoutRepoImpl extends WorkoutRepo {
  @override
  Future<Either<String, void>> addExercise(ExerciseModel exercise) async {
    var workoutBox = Hive.box<ExerciseModel>(exerciseBox);

    try {
      await workoutBox.add(exercise);
      return const Right(null);
    } catch (e) {
      return left(e.toString());
    }
  }
}
