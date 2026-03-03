import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class LevelCard extends StatelessWidget {
  const LevelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: RadialGradient(
          radius: 1,
          center: const Alignment(0, -1.9),

          colors: [
            const Color(0xffEA8945),
            const Color(0xff161512).withValues(alpha: 0.71),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Suggested Time under tension',
              style: Styles.mediumTextStyle14.copyWith(
                color: const Color(0xffA1A1AA),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Beginner',
                      style: Styles.semiBoldTextStyle20.copyWith(
                        color: const Color(0xffFFA05C),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Body building',
                      style: Styles.mediumTextStyle16.copyWith(
                        color: const Color(0xffA1A1AA),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Explosives:',
                      style: Styles.mediumTextStyle16.copyWith(
                        color: const Color(0xffA1A1AA),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Sustained',
                      style: Styles.mediumTextStyle16.copyWith(
                        color: const Color(0xffA1A1AA),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Powerlifting',
                      style: Styles.mediumTextStyle16.copyWith(
                        color: const Color(0xffA1A1AA),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '0:0:0:0',
                      style: Styles.semiBoldTextStyle20.copyWith(
                        color: const Color(0xffFFA05C),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text('0:0:0:0', style: Styles.mediumTextStyle16),
                    const SizedBox(height: 5),
                    const Text('0:0:0:0', style: Styles.mediumTextStyle16),
                    const SizedBox(height: 5),
                    const Text('0:0:0:0', style: Styles.mediumTextStyle16),
                    const SizedBox(height: 5),
                    const Text('0:0:0:0', style: Styles.mediumTextStyle16),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
