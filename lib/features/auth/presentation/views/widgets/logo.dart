import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, this.height, this.width});
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        kLogoImage,
        height: height ?? 37.9,
        width: width ?? 32,
      ),
    );
  }
}
