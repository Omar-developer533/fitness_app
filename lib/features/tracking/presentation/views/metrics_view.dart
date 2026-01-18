import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/metrics_view_body.dart';
import 'package:flutter/material.dart';

class MetricsView extends StatelessWidget {
  const MetricsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(child: AppGradientBackground(child: MetricsViewBody())),
    );
  }
}
