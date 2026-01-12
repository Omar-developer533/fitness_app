import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(child: AppGradientBackground(child: SplashViewBody())),
    );
  }
}
