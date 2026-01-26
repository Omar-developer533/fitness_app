import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class CustomSwitchButton extends StatefulWidget {
  const CustomSwitchButton({super.key});

  @override
  State<CustomSwitchButton> createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton> {
  bool buttomOnePressd = true;
  bool buttomTowPressd = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(color: Color(0xff27272A)),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                buttomOnePressd = true;
                buttomTowPressd = false;
                setState(() {});
              },
              child: Container(
                decoration: BoxDecoration(
                  color: buttomOnePressd
                      ? const Color(0xffFFA05C)
                      : Colors.transparent,
                  borderRadius: buttomOnePressd
                      ? BorderRadius.circular(4)
                      : BorderRadius.circular(0),
                ),
                child: Center(
                  child: Text(
                    'Plans',
                    style: Styles.mediumTextStyle20.copyWith(
                      color: buttomOnePressd
                          ? Colors.white
                          : const Color(0xffA1A1AA),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                buttomOnePressd = false;
                buttomTowPressd = true;
                setState(() {});
              },
              child: Container(
                decoration: BoxDecoration(
                  color: buttomTowPressd
                      ? const Color(0xffFFA05C)
                      : Colors.transparent,
                  borderRadius: buttomTowPressd
                      ? BorderRadius.circular(4)
                      : BorderRadius.circular(0),
                ),
                child: Center(
                  child: Text(
                    'Exercises',
                    style: Styles.mediumTextStyle20.copyWith(
                      color: buttomTowPressd
                          ? Colors.white
                          : const Color(0xffA1A1AA),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
