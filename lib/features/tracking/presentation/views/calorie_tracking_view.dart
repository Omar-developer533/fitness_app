import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/calorie_tracking_view_body.dart';
import 'package:flutter/material.dart';

class CalorieTrackingView extends StatelessWidget {
  const CalorieTrackingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.transparent,
    body: SafeArea(child: AppGradientBackground(child: CalorieTrackingViewBody())),);
  }
}
