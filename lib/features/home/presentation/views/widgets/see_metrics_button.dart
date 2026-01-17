
import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class SeeMetricsButton extends StatelessWidget {
  const SeeMetricsButton({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xffFFA05C)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.signal_cellular_alt,
              size: 20,
              color: Color(0xffFFA05C),
            ),
          ),
          Text(
            'See metrics',
            style: Styles.mediumTextStyle16.copyWith(color: Color(0xffFFA05C)),
          ),
        ],
      ),
    );
  }
}
