import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class NewPLanButton extends StatelessWidget {
  const NewPLanButton({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: BoxDecoration(
          gradient: linearGradient(buttonColorStart, buttonColorEnd),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: onPressed,
              icon: const Icon(Icons.add, size: 25, color: Colors.white),
            ),
            const Text('Create new plan', style: Styles.semiBoldTextStyle16),
          ],
        ),
      ),
    );
  }
}
