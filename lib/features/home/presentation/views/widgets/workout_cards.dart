import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class WorkoutCards extends StatelessWidget {
  const WorkoutCards({
    super.key,
    required this.title,
    required this.buttonName,
    this.titleStyle,
    required this.subTitle,
    this.center,
  });
  final AlignmentGeometry? center;
  final String title;
  final String buttonName;
  final TextStyle? titleStyle;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: RadialGradient(
            radius: 1,
            center: center ?? const Alignment(0, -1.6),

            colors: [
              const Color(0xffEA8945),
              const Color(0xff161512).withValues(alpha: 0.71),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 12,
            bottom: 10,
            left: 8,
            right: 8,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          titleStyle ??
                          Styles.mediumTextStyle16.copyWith(
                            color: const Color(0xffFFA05C),
                          ),
                    ),
                    const SizedBox(height: 3),
                    Text(subTitle, style: Styles.semiBoldTextStyle24),
                    const SizedBox(height: 3),
                    Table(
                      columnWidths: const {
                        0: FlexColumnWidth(6),
                        1: FlexColumnWidth(3),
                        2: FlexColumnWidth(3),
                        3: FlexColumnWidth(5),
                      },
                      children: [
                        TableRow(
                          children: [
                            Text(
                              'Duration:',
                              style: Styles.regularTextStyle14.copyWith(
                                color: const Color(0xffA1A1AA),
                              ),
                            ),
                            Text(
                              'Sets:',
                              style: Styles.regularTextStyle14.copyWith(
                                color: const Color(0xffA1A1AA),
                              ),
                            ),
                            Text(
                              'Reps:',
                              style: Styles.regularTextStyle14.copyWith(
                                color: const Color(0xffA1A1AA),
                              ),
                            ),
                            Text(
                              'Exercise:',
                              style: Styles.regularTextStyle14.copyWith(
                                color: const Color(0xffA1A1AA),
                              ),
                            ),
                          ],
                        ),
                      const  TableRow(
                          children: [
                            Text('30 minutes', style: Styles.mediumTextStyle14),
                            Text('115', style: Styles.mediumTextStyle14),
                            Text('15', style: Styles.mediumTextStyle14),
                            Text('5', style: Styles.mediumTextStyle14),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomButton(
                hieght: 30,
                width: 93,
                text: buttonName,
                style: Styles.semiBoldTextStyle14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
