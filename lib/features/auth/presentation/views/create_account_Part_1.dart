import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/create_account_1_body.dart';
import 'package:flutter/material.dart';

class CreatAccountPart1 extends StatelessWidget {
  const CreatAccountPart1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: AppGradientBackground(child: CreateAccountPart1Body()),
      ),
    );
  }
}
