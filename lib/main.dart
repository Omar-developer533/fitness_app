import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/app_router.dart';
import 'package:fitness_app/features/workout/data/models/exercise_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(ExerciseModelAdapter());
  await Hive.openBox<ExerciseModel>(exerciseBox);

  runApp(const FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.transparent,
      ),
    );
  }
}
