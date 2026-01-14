import 'dart:math';

import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/app_rouer.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).go(AppRouer.kLogInView);
    });
    super.initState();
  }

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
          gradient: linearGradient(buttonColorStart, buttonColorEnd),
          text: 'Get started',
          style: Styles.boldTextStyle16.copyWith(color: Colors.white),
        ),
        Spacer(flex: 1),
      ],
    );
  }
}
