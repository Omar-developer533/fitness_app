import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class CustomInputWidget extends StatelessWidget {
  const CustomInputWidget({
    super.key,
    required this.labelText,
    this.style,
    required this.textField,
  });
  final String labelText;
  final TextStyle? style;
  final Widget textField;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(labelText, style: style ?? Styles.regularTextStyle14),
            SizedBox(height: 3),
            textField,
          ],
        ),
      ),
    );
  }
}
