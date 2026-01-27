import 'package:fitness_app/features/auth/presentation/views/create_account_Part_1.dart';
import 'package:fitness_app/features/auth/presentation/views/create_account_part_2.dart';
import 'package:fitness_app/features/auth/presentation/views/log_in_view.dart';
import 'package:fitness_app/features/auth/presentation/views/splash_view.dart';
import 'package:fitness_app/features/home/presentation/views/home_view.dart';
import 'package:fitness_app/features/tracking/presentation/views/body_weight_view.dart';
import 'package:fitness_app/features/tracking/presentation/views/calorie_tracking_view.dart';
import 'package:fitness_app/features/tracking/presentation/views/goal_view.dart';
import 'package:fitness_app/features/tracking/presentation/views/metrics_view.dart';
import 'package:fitness_app/features/workout/presentation/views/creat_exercise_view.dart';
import 'package:fitness_app/features/workout/presentation/views/time_under_tension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kCreateExerciseView = '/createExercisePart1';
  static const kGoalView = '/goalview';
  static const kHomeView = '/homeView';
  static const kLogInView = '/logInView';
  static const kCreateAccount1 = '/createAccountPart1';
  static const kCreatAccountPart2 = '/createAccountPart2';
  static const kMetricsView = '/metricsView';
  static const kBodyWeightView = '/bodyWeightView';
  static const kCalorieTrackingView = '/calorieTrackingView';
  static const kTimeUnderTensionView = '/timeUnderTension';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: kLogInView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const LogInView(),
            transitionDuration: const Duration(seconds: 1),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
          );
        },
      ),

      GoRoute(
        path: kCreateAccount1,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const CreatAccountPart1(),
            reverseTransitionDuration: const Duration(milliseconds: 300),
            transitionDuration: const Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0, 1),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  );
                },
          );
        },
      ),
      GoRoute(
        path: kCreatAccountPart2,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const CreateAccountPart2(),
            transitionDuration: const Duration(milliseconds: 300),
            reverseTransitionDuration: const Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(1, 0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  );
                },
          );
        },
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kMetricsView,
        builder: (context, state) => const MetricsView(),
      ),
      GoRoute(
        path: kBodyWeightView,
        builder: (context, state) => const BodyWeightView(),
      ),
      GoRoute(
        path: kCalorieTrackingView,
        builder: (context, state) => const CalorieTrackingView(),
      ),
      GoRoute(
        path: kTimeUnderTensionView,
        builder: (context, state) => const TimeUnderTension(),
      ),
      GoRoute(path: kGoalView, builder: (context, state) => GoalView()),
      GoRoute(
        path: kCreateExerciseView,
        builder: (context, state) => CreatExerciseView(),
      ),
    ],
  );
}
