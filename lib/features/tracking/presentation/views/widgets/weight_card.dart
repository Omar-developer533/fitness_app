
import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class WeightCard extends StatelessWidget {
  const WeightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: RadialGradient(
          radius: 1,
          center: Alignment(0, -1.6),

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Weight goal:',
                  style: Styles.mediumTextStyle14.copyWith(
                    color: Color(0xffA1A1AA),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '120kg',
                  style: Styles.semiBoldTextStyle20.copyWith(
                    color: Color(0xffFFA05C),
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
                    color: Color(0xffA1A1AA),
                  ),
                ),
                SizedBox(height: 5),
                Text('10/9/2023', style: Styles.regularTextStyle16),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit, color: Color(0xffFFA05C)),
            ),
          ],
        ),
      ),
    );
  }
}
