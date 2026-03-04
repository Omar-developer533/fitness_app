import 'package:fitness_app/core/manager/workout_cubit/workout_cubit.dart';
import 'package:fitness_app/features/auth/presentation/views/create_account_Part_1.dart';
import 'package:fitness_app/features/auth/presentation/views/create_account_part_2.dart';
import 'package:fitness_app/features/auth/presentation/views/log_in_view.dart';
import 'package:fitness_app/features/auth/presentation/views/splash_view.dart';
import 'package:fitness_app/features/home/presentation/views/home_view.dart';
import 'package:fitness_app/features/plans/presentation/views/create_plan_view.dart';
import 'package:fitness_app/features/tracking/data/repos/tracking_repo.dart';
import 'package:fitness_app/features/tracking/presentation/manager/cubits/weight/weight_cubit.dart';
import 'package:fitness_app/features/tracking/presentation/views/body_weight_view.dart';
import 'package:fitness_app/features/tracking/presentation/views/calorie_tracking_view.dart';
import 'package:fitness_app/features/tracking/presentation/views/goal_view.dart';
import 'package:fitness_app/features/tracking/presentation/views/metrics_view.dart';
import 'package:fitness_app/features/workout/data/repos/wourkout_repo.dart';
import 'package:fitness_app/features/workout/presentation/manager/cubits/exercise_type_cubit/exercise_type_cubit.dart';
import 'package:fitness_app/features/workout/presentation/manager/cubits/exercises_list_cubit/exercise_list_cubit.dart';
import 'package:fitness_app/features/workout/presentation/views/creat_exercise_view.dart';
import 'package:fitness_app/features/workout/presentation/views/exercise_details_view.dart';
import 'package:fitness_app/features/workout/presentation/views/exercise_list_view.dart';
import 'package:fitness_app/features/workout/presentation/views/time_under_tension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kExerciseDetailsView = '/exerciseDetailsView';
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
  static const kCreatePlaneView = '/createPlanView';
  static const kExerciseListView = '/exerciseListView';

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
      GoRoute(
        path: kHomeView,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const HomeView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          transitionDuration: const Duration(seconds: 1),
          reverseTransitionDuration: const Duration(seconds: 1),
        ),
      ),
      GoRoute(
        path: kMetricsView,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const MetricsView(),
          reverseTransitionDuration: const Duration(milliseconds: 300),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, -1),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        ),
      ),
      GoRoute(
        path: kBodyWeightView,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: BlocProvider(
            create: (context) => WeightCubit(TrackingRepoImpl()),
            child: const BodyWeightView(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          reverseTransitionDuration: const Duration(seconds: 1),
          transitionDuration: const Duration(seconds: 1),
        ),
      ),
      GoRoute(
        path: kCalorieTrackingView,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: BlocProvider(
            create: (context) => WeightCubit(TrackingRepoImpl()),
            child: const CalorieTrackingView(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          reverseTransitionDuration: const Duration(seconds: 1),
          transitionDuration: const Duration(seconds: 1),
        ),
      ),
      GoRoute(
        path: kTimeUnderTensionView,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const TimeUnderTension(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          reverseTransitionDuration: const Duration(seconds: 1),
          transitionDuration: const Duration(seconds: 1),
        ),
      ),
      GoRoute(
        path: kGoalView,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: const GoalView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          reverseTransitionDuration: const Duration(seconds: 1),
          transitionDuration: const Duration(seconds: 1),
        ),
      ),
      GoRoute(
        path: kCreateExerciseView,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: BlocProvider(
            create: (context) => ExerciseTypeCubit(),
            child: const CreatExerciseView(),
          ),
          reverseTransitionDuration: const Duration(milliseconds: 300),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        ),
      ),
      GoRoute(
        path: kCreatePlaneView,
        pageBuilder: (context, state) => CustomTransitionPage(
          child: BlocProvider(
            create: (context) => WorkoutCubit(WourkoutRepoImpl()),
            child: const CreatePlanView(),
          ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          reverseTransitionDuration: const Duration(seconds: 1),
          transitionDuration: const Duration(seconds: 1),
        ),
      ),
      GoRoute(
        path: kExerciseListView,
        builder: (context, state) => BlocProvider(
          create: (context) => ExerciseListCubit(WourkoutRepoImpl()),
          child: const ExerciseListView(),
        ),
      ),
      GoRoute(
        path: kExerciseDetailsView,
        builder: (context, state) => const ExerciseDetailsView(),
      ),
    ],
  );
}
