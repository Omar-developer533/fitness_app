import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class ForotPassword extends StatelessWidget {
  const ForotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GestureDetector(
          onTap: () {},
          child: Text(
            'Forgot password?',
            style: Styles.mediumTextStyle16.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}
