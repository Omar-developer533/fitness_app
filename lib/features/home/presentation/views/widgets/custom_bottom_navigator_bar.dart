
import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigatorBar extends StatelessWidget {
  const CustomBottomNavigatorBar({super.key, required this.currentIndex, required this.onTap});
final int currentIndex;
final void Function(int value) onTap;
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              colors: [gradientStartColor, gradientEndColor],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: BottomNavigationBar(
            elevation: 0,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            unselectedItemColor: Color(0xff71717A),
            selectedItemColor: Color(0xffFFA05C),
            type: BottomNavigationBarType.fixed,
            onTap: onTap,

            backgroundColor: Colors.transparent,
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 24),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  vectorIcon,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    Color(0xff71717A),
                    BlendMode.srcIn,
                  ),
                ),
                label: 'workout',
                activeIcon: SvgPicture.asset(
                  calenderIcon,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    Color(0xffFFA05C),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_sharp, size: 24),
                label: 'add',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  calenderIcon,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    Color(0xff71717A),
                    BlendMode.srcIn,
                  ),
                ),
                label: 'creat',
                activeIcon: SvgPicture.asset(
                  calenderIcon,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    Color(0xffFFA05C),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  imageIcon,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    Color(0xff71717A),
                    BlendMode.srcIn,
                  ),
                ),
                activeIcon: SvgPicture.asset(
                  imageIcon,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    Color(0xffFFA05C),
                    BlendMode.srcIn,
                  ),
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      );
  }
}