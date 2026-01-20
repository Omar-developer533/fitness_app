import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class WeightGoalCard extends StatelessWidget {
  const WeightGoalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: RadialGradient(
          radius: 1,
          center: const Alignment(0, -1.6),

          colors: [
            const Color(0xffEA8945),
            const Color(0xff161512).withValues(alpha: 0.71),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Weight goal:',
                  style: Styles.mediumTextStyle14.copyWith(
                    color: const Color(0xffA1A1AA),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '120kg',
                  style: Styles.semiBoldTextStyle20.copyWith(
                    color: const Color(0xffFFA05C),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Time left to goal',
                  style: Styles.mediumTextStyle14.copyWith(
                    color: const Color(0xffA1A1AA),
                  ),
                ),
                const SizedBox(height: 5),
                const Text('10/9/2023', style: Styles.regularTextStyle16),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit, color: Color(0xffFFA05C)),
            ),
          ],
        ),
      ),
    );
  }
}
