import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(flex: 2),
        Center(child: Image.asset(kLogoImage, height: 100.67, width: 85)),

        Text('Helios Sports Tech', style: Styles.boldTextStyle28),
        Text(
          'Here To Compete',
          style: Styles.mediumTextStyle16.copyWith(color: Color(0xffC0C0C0)),
        ),
        Spacer(flex: 4),
        CustomButton(
          text: 'Get started',
          style: Styles.boldTextStyle16.copyWith(color: Colors.white),
        ),
        Spacer(flex: 1),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.style});
  final String text;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(text, style: style)),
      height: 50,
      width: 343,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [buttonColorStart, buttonColorEnd],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
    );
  }
}
