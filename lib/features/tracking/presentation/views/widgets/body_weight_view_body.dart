import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/add_items.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/calender.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/weight_adding_card.dart';
import 'package:fitness_app/features/tracking/presentation/views/widgets/weight_goal_card.dart';
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
         const   SizedBox(height: 25),
            CustomAppBar(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              onPressed: () {
                GoRouter.of(context).pop();
              },
              widget: Text(
                'Body weight',
                style: Styles.mediumTextStyle18.copyWith(
                  color: const Color(0xffA1A1AA),
                ),
              ),
            ),
         const   SizedBox(height: 20),
        const    Calender(),
          const  SizedBox(height: 15),
            SvgPicture.asset(chairty, height: 264, width: 356),
          const  SizedBox(height: 15),
        const    WeightGoalCard(),
         const   SizedBox(height: 15),
            const Align(
              alignment: Alignment.centerLeft,
              child:Text('Weekly weight log', style: Styles.mediumTextStyle16),
            ),
          const  SizedBox(height: 7),
         const   AddItems(text: 'Add new weight'),
            WeightAddingCard(
              weekNumber: 'Week 9',
              weight: '130kg',
              onPressed: () {},
            ),
            WeightAddingCard(
              weekNumber: 'Week 8',
              weight: '140kg',
              onPressed: () {},
            ),
            WeightAddingCard(
              weekNumber: 'Week 7',
              weight: '145kg',
              onPressed: () {},
            ),
            WeightAddingCard(
              weekNumber: 'Week 6',
              weight: '150kg',
              onPressed: () {},
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
