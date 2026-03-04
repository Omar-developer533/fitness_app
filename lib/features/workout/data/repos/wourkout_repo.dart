import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/errors/failure.dart';
import 'package:fitness_app/core/utls/services/api_services.dart';
import 'package:fitness_app/features/workout/data/models/exercise_model.dart';
import 'package:fitness_app/features/workout/data/models/wourkout_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class WorkoutRepo {
  Future<Either<String, void>> addWorkout(WourkoutModel exercise);
  Either<String, List<WourkoutModel>> getWorkout();
  Future<Either<List<ExerciseModel>, Failure>> getExerciseSortBy(
    ApiServices apiService,
    String sortBy,
  );
  Future<Either<String, void>> addFavoriteExercise(ExerciseModel exercise);
  Either<String, List<ExerciseModel>> getFavoriteExercises();
}

class WourkoutRepoImpl extends WorkoutRepo {
  @override
  Future<Either<String, void>> addWorkout(WourkoutModel exercise) async {
    var workoutBox = Hive.box<WourkoutModel>(exerciseBox);

    try {
      await workoutBox.add(exercise);
      return const Right(null);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Either<String, List<WourkoutModel>> getWorkout() {
    var workoutBox = Hive.box<WourkoutModel>(exerciseBox);
    try {
      List<WourkoutModel> exercises = workoutBox.values.toList();
      return right(exercises);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Future<Either<List<ExerciseModel>, Failure>> getExerciseSortBy(
    ApiServices apiService,
    String sortBy,
  ) async {
    try {
      var data = await apiService.get(
        'https://www.exercisedb.dev/api/v1/exercises?sortBy=$sortBy',
      );
      List<dynamic> jsonData = data['data'];
      List<ExerciseModel> exercises = jsonData
          .map((e) => ExerciseModel.fromJson(e))
          .toList();
      return left(exercises);
    } catch (e) {
      if (e is DioException) {
        return right(ServerFailure.fromdioError(e));
      } else {
        return right(ServerFailure(errorMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<String, void>> addFavoriteExercise(
    ExerciseModel exercise,
  ) async {
    var favoriteExercisesBox = Hive.box<ExerciseModel>(favoriteExercises);
    try {
      await favoriteExercisesBox.add(exercise);
      return right(null);
    } catch (e) {
      return left(e.toString());
    }
  }

  @override
  Either<String, List<ExerciseModel>> getFavoriteExercises() {
    var favoriteExercisesBox = Hive.box<ExerciseModel>(favoriteExercises);
    try {
      List<ExerciseModel> exercises = favoriteExercisesBox.values.toList();
      return right(exercises);
    } catch (e) {
      return left(e.toString());
    }
  }
}
