import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/add_items.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/adding_items.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/selected_date.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/weight_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:go_router/go_router.dart';

class BodyWeightViewBody extends StatelessWidget {
  const BodyWeightViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            CustomAppBar(
              padding: EdgeInsets.symmetric(horizontal: 0),
              onPressed: () {
                GoRouter.of(context).pop();
              },
              widget: Text(
                'Body weight',
                style: Styles.mediumTextStyle18.copyWith(
                  color: Color(0xffA1A1AA),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 100, height: 47, child: SelectedDate()),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: BoxBorder.all(color: Color(0xffFFA05C)),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      calenderIcon,
                      height: 16,
                      width: 16,
                      colorFilter: ColorFilter.mode(
                        Color(0xffFFA05C),
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            SvgPicture.asset(chairty, height: 264, width: 356),
            SizedBox(height: 15),
            WeightCard(),
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Weekly weight log', style: Styles.mediumTextStyle16),
            ),
            SizedBox(height: 7),
            AddItems(text: 'Add new weight'),
            AddingItem(weekNumber: 'Week 9', weight: '130kg', onPressed: () {}),
            AddingItem(weekNumber: 'Week 8', weight: '140kg', onPressed: () {}),
            AddingItem(weekNumber: 'Week 7', weight: '145kg', onPressed: () {}),
            AddingItem(weekNumber: 'Week 6', weight: '150kg', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
