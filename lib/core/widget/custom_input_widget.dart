import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class CustomInputWidget extends StatelessWidget {
  const CustomInputWidget({
    super.key,
    required this.labelText,
    this.style,
    required this.textField,
    this.width, this.padding,
  });
  final String labelText;
  final TextStyle? style;
  final Widget textField;
  final double? width;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: padding?? const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(labelText, style: style ?? Styles.regularTextStyle14),
            const SizedBox(height: 3),
            textField,
          ],
        ),
      ),
    );
  }
}
