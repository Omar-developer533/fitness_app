

import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MetricTypeCard extends StatelessWidget {
  const MetricTypeCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle, this.onTap,
  });
  final String icon;
  final String title;
  final String subTitle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 141,
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: RadialGradient(
              radius: 1,
              center: const Alignment(0, -1.9),

              colors: [
                const Color(0xffEA8945),
                const Color(0xff161512).withValues(alpha: 0.71),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 9, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(icon, height: 48, width: 48),
                Text(title, style: Styles.semiBoldTextStyle18),
                Text(
                  subTitle,
                  style: Styles.regularTextStyle14.copyWith(
                    color: const Color(0xffA1A1AA),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}