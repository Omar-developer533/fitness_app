import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/body_weight_view_body.dart';
import 'package:flutter/material.dart';

class BodyWeightView extends StatelessWidget {
  const BodyWeightView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(child: AppGradientBackground(child: BodyWeightViewBody())),
    );
  }
}
