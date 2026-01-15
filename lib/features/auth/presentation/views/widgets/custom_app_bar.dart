import 'package:fitness_app/features/auth/presentation/views/widgets/logo.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: onPressed,
                icon: Icon(Icons.arrow_back, size: 24, color: Colors.white),
              ),
            ],
          ),

          Logo(),
        ],
      ),
    );
  }
}
