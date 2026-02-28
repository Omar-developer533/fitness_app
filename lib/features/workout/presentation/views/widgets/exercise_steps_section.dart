import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class ExerciseStepsSection extends StatelessWidget {
  const ExerciseStepsSection({super.key});
  final List<String> steps = const [
    'Step:1 Attach a weight to one end of a rope or bar.',
    'Step:1 Attach a weight to one end of a rope or bar.',
    'Step:1 Attach a weight to one end of a rope or bar.',
    'Step:1 Attach a weight to one end of a rope or bar.',
    'Step:1 Attach a weight to one end of a rope or bar.',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Steps :', style: Styles.mediumTextStyle18),
        SizedBox(height: 8),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
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
            padding: const EdgeInsets.only(right: 12, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(5, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 5),
                  child: Text(
                    steps[index],
                    style: Styles.regularTextStyle14.copyWith(
                      color: Color(0xffA1A1AA),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
