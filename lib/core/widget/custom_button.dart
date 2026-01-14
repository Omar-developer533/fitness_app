import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.style,
    this.gradient, this.onTap,
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
            gradient: gradient,
          ),
          child: Center(child: Text(text, style: style)),
        ),
      ),
    );
  }
}
