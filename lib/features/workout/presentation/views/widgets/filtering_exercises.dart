import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class FilteringExercise extends StatefulWidget {
  const FilteringExercise({super.key});

  @override
  State<FilteringExercise> createState() => _FilteringExerciseState();
}

class _FilteringExerciseState extends State<FilteringExercise> {
  String curruntItem = 'targetMuscles';
  List<String> items = const ['targetMuscles', 'bodyParts', 'equipments'];
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isExpanded: true,
      dropdownColor: const Color(0xff353A40),
      initialValue: curruntItem,
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
      items: items
          .map(
            (year) => DropdownMenuItem(
              value: year,
              child: Text(
                year,
                style: Styles.mediumTextStyle16.copyWith(
                  color: const Color(0xffFFA05C),
                ),
              ),
            ),
          )
          .toList(),
      onChanged: (String? value) {
        setState(() {
          curruntItem = value!;
        });
      },
    );
  }
}
