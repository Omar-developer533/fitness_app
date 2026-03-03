

import 'package:dartz/dartz.dart';
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/features/workout/data/models/wourkout_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class WorkoutRepo {
  Future<Either<String, void>> addExercise(WourkoutModel exercise);
  Either<String, List<WourkoutModel>> getExercise();
}

class WourkoutRepoImpl extends WorkoutRepo {
  @override
  Future<Either<String, void>> addExercise(WourkoutModel exercise) async {
    var workoutBox = Hive.box<WourkoutModel>(exerciseBox);

    try {
      await workoutBox.add(exercise);
      return const Right(null);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Either<String, List<WourkoutModel>> getExercise() {
    var workoutBox = Hive.box<WourkoutModel>(exerciseBox);
    try {
      List<WourkoutModel> exercises = workoutBox.values.toList();
      return right(exercises);
    } catch (e) {
      return left(e.toString());
    }
  }
}
