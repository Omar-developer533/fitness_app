import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class WeightAddingCard extends StatelessWidget {
  const WeightAddingCard({
    super.key,
    required this.weekNumber,
    required this.weight,
    required this.onPressed,
  });
  final String weekNumber;
  final String weight;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: RadialGradient(
            radius: 1,
            center: Alignment(0, -1.8),

            colors: [
              Color(0xffEA8945),
              Color(0xff161512).withValues(alpha: 0.71),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(weekNumber, style: Styles.mediumTextStyle16),
              Text(weight, style: Styles.semiBoldTextStyle16),
              IconButton(
                onPressed: onPressed,
                icon: Icon(Icons.edit, color: Color(0xffFFA05C)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
