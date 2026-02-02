
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
    
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: linearGradient(buttonColorStart, buttonColorEnd),
      ),
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
