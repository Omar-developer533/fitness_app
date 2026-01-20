import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class SelectedDate extends StatefulWidget {
  const SelectedDate({super.key});

  @override
  State<SelectedDate> createState() => _SelectedDateState();
}

class _SelectedDateState extends State<SelectedDate> {
  String currentvalue = '2000';
  List<String> years = [for (int i = 1950; i <= 2050; i++) i.toString()];
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      dropdownColor: const Color(0xff353A40),
      initialValue: currentvalue,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffFFA05C)),
          borderRadius: BorderRadius.circular(4),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffFFA05C)),
          borderRadius: BorderRadius.circular(4),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffFFA05C)),
          borderRadius: BorderRadius.circular(4),
        ),
        suffixIcon: const Icon(Icons.arrow_drop_down, color: Color(0xffFFA05C)),
      ),
      items: years
          .map(
            (year) => DropdownMenuItem(
              value: year,
              child: Text(
                year,
                style: Styles.mediumTextStyle14.copyWith(
                  color: const Color(0xffFFA05C),
                ),
              ),
            ),
          )
          .toList(),
      onChanged: (String? value) {
        setState(() {
          currentvalue = value!;
        });
      },
    );
  }
}
