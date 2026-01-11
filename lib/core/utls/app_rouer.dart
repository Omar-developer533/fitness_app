import 'package:fitness_app/features/auth/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouer {
  static final router = GoRouter(
    routes: [GoRoute(path: '/', builder: (context, state) => SplashView())],
  );
}
