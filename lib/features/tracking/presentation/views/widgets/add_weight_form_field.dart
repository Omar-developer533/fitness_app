
import 'package:fitness_app/core/utls/validator.dart';
import 'package:flutter/material.dart';

class AddWeightFormField extends StatelessWidget {
  const AddWeightFormField({
    super.key,
    required this.textEditingController,
  });

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      validator: Validators.weight,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: const Color(0xff3F3F46),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Colors.orange),
        ),
      ),
    );
  }
}
