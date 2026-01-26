import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/custom_bottom_navigator_bar.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/goal_view_body.dart';
import 'package:flutter/material.dart';

class GoalView extends StatefulWidget {
  const GoalView({super.key});

  @override
  State<GoalView> createState() => _GoalViewState();
}

class _GoalViewState extends State<GoalView> {
  int currentIndex = 0;
  void onTap(value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: const SafeArea(child: AppGradientBackground(child: GoalViewBody())),
      bottomNavigationBar: CustomBottomNavigatorBar(
        currentIndex: currentIndex,
        onTap: onTap,
      ),
    );
  }
}
