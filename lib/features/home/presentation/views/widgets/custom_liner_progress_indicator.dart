import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/percent_progress_indicator.dart';
import 'package:flutter/material.dart';

class CustomLinerProgressIndicator extends StatelessWidget {
  const CustomLinerProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Overall progress:',
              style: Styles.mediumTextStyle16.copyWith(
                color: const Color(0xffD4D4D8),
              ),
            ),
            const Text('70%', style: Styles.semiBoldTextStyle16),
          ],
        ),
        const PercentageProgressIndicator(),
      ],
    );
  }
}
