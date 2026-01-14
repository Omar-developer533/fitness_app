
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InformationType extends StatelessWidget {
  const InformationType({
    super.key,
    required this.iconNumber,
    required this.text,
    this.style,
    this.lineColor,
  });
  final String iconNumber;
  final String text;
  final TextStyle? style;
  final Color? lineColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(iconNumber, width: 14, height: 14),
              Text(text, style: style ?? Styles.mediumTextStyle12),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 3),
            height: 4,
            width: 164,
            decoration: BoxDecoration(
              color: lineColor,

              gradient: lineColor == null
                  ? linearGradient(buttonColorStart, buttonColorEnd)
                  : null,

              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
    );
  }
}
