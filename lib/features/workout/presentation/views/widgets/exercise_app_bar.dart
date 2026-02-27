import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class ExerciseAppBar extends StatelessWidget {
  const ExerciseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        Text(
          'Exercises List',
          style: Styles.mediumTextStyle18.copyWith(color: Color(0xffA1A1AA)),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite, color: buttonColorStart),
        ),
      ],
    );
  }
}
