

import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormTracking extends StatelessWidget {
  const FormTracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Container(
        height: 141,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xff161512).withValues(alpha: 0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 9, top: 8, right: 9),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: SvgPicture.asset(calorieIcon, height: 48, width: 48),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      gradient: linearGradient(
                        buttonColorStart,
                        buttonColorEnd,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        'coming soon',
                        style: Styles.regularTextStyle10,
                      ),
                    ),
                  ),
                ],
              ),
              Opacity(
                opacity: 0.5,
                child: Text('Form tracking', style: Styles.semiBoldTextStyle18),
              ),
              Opacity(
                opacity: 0.5,
                child: Text(
                  'Track your form and techniqu',
                  style: Styles.regularTextStyle14.copyWith(
                    color: Color(0xffA1A1AA),
                  ),
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
