import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/core/utls/validator.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.prefixIcon,
    this.hintText,
    this.style,

    this.onChanged,
    this.validator,
    this.obscureText = false,
    this.suffixIcon,
    this.keyboardType,
    this.controller,
  });
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final TextStyle? style;

  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: prefixIcon == null
            ? const EdgeInsetsDirectional.fromSTEB(3, 12, 16, 12)
            : const EdgeInsetsDirectional.fromSTEB(0, 12, 16, 12),
        suffixIcon: suffixIcon,
        suffixIconConstraints: BoxConstraints(minHeight: 16, minWidth: 16),
        filled: true,
        fillColor: Color(0xff3F3F46),
        hintStyle:
            style ??
            Styles.mediumTextStyle14.copyWith(color: Color(0xffC6C6C6)),
        hintText: hintText,
        prefixIcon: prefixIcon != null
            ? Padding(
                padding: const EdgeInsets.only(left: 6),
                child: prefixIcon,
              )
            : null,
        prefixIconConstraints: BoxConstraints(minWidth: 16, minHeight: 16),
        isDense: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
