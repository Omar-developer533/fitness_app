import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/workout/data/models/wourkout_model.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/exercise_type.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/regualr_exercise_section.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/super_set_exercise_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateExerciseViewBody extends StatefulWidget {
  const CreateExerciseViewBody({super.key});

  @override
  State<CreateExerciseViewBody> createState() => _CreateExerciseViewBodyState();
}

class _CreateExerciseViewBodyState extends State<CreateExerciseViewBody> {
  late WourkoutModel exerciseModel;
  List<IconData> icons = [
    Icons.autorenew,
    Icons.access_time_filled_rounded,
    Icons.pie_chart,
  ];

  List<String> names = ['Warm up', 'Main', 'cool down'];

  List<Widget> exerciseTyps = const [
    RegularExerciseSection(),
    SizedBox(),
    SuperSetExerciseSection(),
  ];

  int currentSelectedIndex = 0;
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 25),
            CustomAppBar(
              padding: EdgeInsets.zero,
              onPressed: () {
                GoRouter.of(context).pop();
              },
              widget: Text(
                'Create Exercise',
                style: Styles.mediumTextStyle18.copyWith(
                  color: const Color(0xffA1A1AA),
                ),
              ),
            ),
            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(3, (index) {
                isPressed = currentSelectedIndex == index;
                return ExerciseType(
                  isPressed: isPressed,
                  icon: icons[index],
                  exerciseName: names[index],
                  onTap: () {
                    currentSelectedIndex = index;
                    setState(() {});
                  },
                );
              }),
            ),

            const SizedBox(height: 35),
            exerciseTyps[currentSelectedIndex],

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
