import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/log_in_view_body.dart';
import 'package:flutter/material.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor:Colors.transparent,
    body: SafeArea(child: AppGradientBackground(child: LogInViewBody())),);
  }
}