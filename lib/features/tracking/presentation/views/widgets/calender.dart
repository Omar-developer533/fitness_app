
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/selected_date.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Calender extends StatelessWidget {
  const Calender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      const  SizedBox(width: 90, height: 47, child: SelectedDate()),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: BoxBorder.all(color: const Color(0xffFFA05C)),
          ),
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              calenderIcon,
              height: 16,
              width: 16,
              colorFilter: const ColorFilter.mode(
                Color(0xffFFA05C),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
