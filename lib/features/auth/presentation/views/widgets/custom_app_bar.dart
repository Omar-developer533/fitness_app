import 'package:fitness_app/features/auth/presentation/views/widgets/logo.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.onPressed,
    required this.widget, this.padding,
    
  });
  final void Function()? onPressed;
  final Widget widget;final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding?? EdgeInsets.symmetric(horizontal: 16),
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

          widget,
        ],
      ),
    );
  }
}
