import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/create_account_part_2_body.dart';
import 'package:flutter/material.dart';

class CreateAccountPart2 extends StatelessWidget {
  const CreateAccountPart2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: AppGradientBackground(child: CreateAccountPart2Body()),
      ),
    );
  }
}
