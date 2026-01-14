import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.style,
    this.gradient,
    this.onTap,
  });
  final String text;
  final TextStyle? style;
  final Gradient? gradient;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          height: 50,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient:
                gradient ?? linearGradient(buttonColorStart, buttonColorEnd),
          ),
          child: Center(
            child: Text(text, style: style ?? Styles.boldTextStyle16),
          ),
        ),
      ),
    );
  }
}
