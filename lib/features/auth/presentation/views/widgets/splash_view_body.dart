import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/app_router.dart';
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

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> fadingAnimation;
  late final Animation<Offset> slidingAnimation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    fadingAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(animationController);
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: const Offset(0, 0),
    ).animate(animationController);

    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(flex: 2),
        FadeTransition(
          opacity: fadingAnimation,
          child: Center(
            child: Image.asset(kLogoImage, height: 100.67, width: 85),
          ),
        ),

        const Text('Helios Sports Tech', style: Styles.boldTextStyle28),
        SlideTransition(
          position: slidingAnimation,
          child: Text(
            'Here To Compete',
            style: Styles.mediumTextStyle16.copyWith(
              color: const Color(0xffC0C0C0),
            ),
          ),
        ),
        const Spacer(flex: 4),
        CustomButton(
          onTap: () {
            GoRouter.of(context).go(AppRouter.kExerciseListView);
          },
          gradient: linearGradient(buttonColorStart, buttonColorEnd),
          text: 'Get started',
          style: Styles.boldTextStyle16.copyWith(color: Colors.white),
        ),
        const Spacer(flex: 1),
      ],
    );
  }
}
