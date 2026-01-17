import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/auth/presentation/views/create_account_Part_1.dart';
import 'package:fitness_app/features/auth/presentation/views/create_account_part_2.dart';
import 'package:fitness_app/features/auth/presentation/views/splash_view.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/create_account_1_body.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/create_account_part_2_body.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/custom_bottom_navigator_bar.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  void onTap(int value) {
   
    setState(() { currentIndex = value;
      
    });
  }

  // final List<Widget> pages = [
  //   HomeViewBody(),
  //   CreateAccountPart1Body(),
  //   CreateAccountPart2Body(),
  //   SplashView(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: AppGradientBackground(child: HomeViewBody())),
      bottomNavigationBar:CustomBottomNavigatorBar(currentIndex: currentIndex, onTap: onTap)
    );
  }
}