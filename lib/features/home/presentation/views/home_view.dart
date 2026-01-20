
import 'package:fitness_app/core/widget/app_gradient_background.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/custom_bottom_navigator_bar.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:const SafeArea(child: AppGradientBackground(child: HomeViewBody())),
      bottomNavigationBar:CustomBottomNavigatorBar(currentIndex: currentIndex, onTap: onTap)
    );
  }
}