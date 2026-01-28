import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, this.hieght, this.color});
  final double? hieght;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      padding: const WidgetStatePropertyAll(
        EdgeInsets.only(right: 15, left: 8),
      ),
      trailing: [SvgPicture.asset(searchIcon, height: 16, width: 16)],
      elevation: const WidgetStatePropertyAll(0),
      backgroundColor: WidgetStatePropertyAll(color ?? Color(0xff161512)),
      constraints: const BoxConstraints(minHeight: 37),
      hintText: 'Search plans or exercises',
      hintStyle: const WidgetStatePropertyAll(Styles.regularTextStyle14),
    );
  }
}
