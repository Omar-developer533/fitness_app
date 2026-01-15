import 'package:fitness_app/features/auth/presentation/views/create_account_Part_1.dart';
import 'package:fitness_app/features/auth/presentation/views/create_account_part_2.dart';
import 'package:fitness_app/features/auth/presentation/views/log_in_view.dart';
import 'package:fitness_app/features/auth/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouer {
  static const kHomeView = '/homeView';
  static const kLogInView = '/logInView';
  static const kCreateAccount1 = '/createAccountPart1';
  static const kCreatAccountPart2 = '/createAccountPart2';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kLogInView, builder: (context, state) => LogInView()),

      GoRoute(
        path: kCreateAccount1,
        builder: (context, state) => CreatAccountPart1(),
      ),
      GoRoute(
        path: kCreatAccountPart2,
        builder: (context, state) => CreateAccountPart2(),
      ),
    ],
  );
}
