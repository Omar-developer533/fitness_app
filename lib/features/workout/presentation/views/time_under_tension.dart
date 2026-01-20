import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/time_under_tension_body.dart';
import 'package:flutter/material.dart';

class TimeUnderTension extends StatelessWidget {
  const TimeUnderTension({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(child: AppGradientBackground(child: TimeUnderTensionBody())),
    );
  }
}
