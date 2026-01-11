import 'package:fitness_app/core/utls/app_rouer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FitnessApp());
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouer.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.blueGrey.shade900,
      ),
    );
  }
}
