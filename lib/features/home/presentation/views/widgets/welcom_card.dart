import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/logo.dart';
import 'package:flutter/material.dart';

class WelcomCard extends StatelessWidget {
  const WelcomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: RadialGradient(
          radius: 1,
          center: const Alignment(1.5, -0.5),

          colors: [
            const Color(0xffEA8945),
            const Color(0xff161512).withValues(alpha: 0.71),
          ],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 3, bottom: 6, left: 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Logo(height: 16, width: 13.93),
                    SizedBox(width: 3),
                    Text(' Helios', style: Styles.semiBoldTextStyle12),
                  ],
                ),
                const SizedBox(height: 3),
                const Text('Welcome back,', style: Styles.semiBoldTextStyle20),
                const Text('Nick!', style: Styles.semiBoldTextStyle20),
                const SizedBox(height: 3),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFFA05C),
                    border: Border.all(width: 2),
                  ),

                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Text(
                        'Try Premium Now',
                        style: Styles.regularTextStyle10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset('assets/images/body.png', height: 87, width: 74),
        ],
      ),
    );
  }
}
