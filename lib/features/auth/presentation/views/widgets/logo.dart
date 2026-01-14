
import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(kLogoImage, height: 37.9, width: 32));
  }
}