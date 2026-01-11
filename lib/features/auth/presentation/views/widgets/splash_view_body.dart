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
        SizedBox(height: 150),
        Center(
          child: Container(
            width: 85,
            height: 100.6,
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage(kLogoImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text('Helios Sports Tech', style: Styles.boldTextStyle28),
        Text('Here To Compete', style: Styles.mediumTextStyle16),
        CustomButton(text: 'Get started', style: Styles.boldTextStyle16),
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
          colors: [Color(0xffFFA05C), Color(0xffF06500)],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
    );
  }
}
