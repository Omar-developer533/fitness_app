import 'package:dartz/dartz.dart';
import 'package:fitness_app/core/errors/failure.dart';
import 'package:fitness_app/features/workout/data/models/exercise_model.dart';
import 'package:flutter/material.dart';

abstract class Exerciserepo {
  Future <Either<List<ExerciseModel>, Failure>> getExerciseSortBy(String sortBy);
}
