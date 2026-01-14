
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:flutter/material.dart';

class LoginWith extends StatelessWidget {
  const LoginWith({super.key, required this.icon, required this.text});
  final Widget icon;
  final Widget text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: linearGradient(buttonColorStart, buttonColorEnd),
        ),
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            decoration: BoxDecoration(
              gradient: linearGradient(gradientStartColor, gradientEndColor),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [icon, text],
            ),
          ),
        ),
      ),
    );
  }
}
