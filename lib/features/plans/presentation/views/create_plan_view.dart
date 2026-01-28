import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/plans/presentation/views/widgets/create_plan_view_body.dart';
import 'package:flutter/material.dart';

class CreatePlanView extends StatelessWidget {
  const CreatePlanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(child: AppGradientBackground(child: CreatePlanViewBody())),
    );
  }
}
