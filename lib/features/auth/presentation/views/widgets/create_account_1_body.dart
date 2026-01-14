import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreateAccount1Body extends StatelessWidget {
  const CreateAccount1Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 44),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            Logo(),
          ],
        ),
        SizedBox(height: 29.1),
        Text('Create an Account', style: Styles.semiBoldTextStyle24),
        Text(
          'Help us finish setting up your account.',
          style: Styles.mediumTextStyle14.copyWith(color: Color(0xffE4E4E7)),
        ),
        SizedBox(height: 24),
        Row(
          children: [
            InformationType(text: ' Account information', iconNumber: oneIcon),
            SizedBox(width: 15),
            InformationType(
              iconNumber: towIcon,
              text: ' Biodata information',
              style: Styles.mediumTextStyle12.copyWith(
                color: Color(0xffA1A1AA),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

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
