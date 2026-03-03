import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class CreateExerciseCustomButon extends StatelessWidget {
  const CreateExerciseCustomButon({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: const Color(0xffFFA05C)),
        ),
        child: Center(
          child: Text(
            'Create Exercise',
            style: Styles.mediumTextStyle16.copyWith(
              color: const Color(0xffFFA05C),
            ),
          ),
        ),
      ),
    );
  }
}
