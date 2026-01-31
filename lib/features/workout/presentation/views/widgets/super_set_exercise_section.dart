import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/core/widget/custom_button.dart';
import 'package:fitness_app/core/widget/custom_input_widget.dart';
import 'package:fitness_app/core/widget/custom_text_field.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/workout_item.dart';
import 'package:flutter/material.dart';

class SuperSetExerciseSection extends StatefulWidget {
  const SuperSetExerciseSection({super.key});

  @override
  State<SuperSetExerciseSection> createState() =>
      _SuperSetExerciseSectionState();
}

class _SuperSetExerciseSectionState extends State<SuperSetExerciseSection> {
  int setNum = 1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: RichText(
              text: TextSpan(
                text: 'Super Set  ',
                style: Styles.mediumTextStyle20,
                children: [
                  TextSpan(
                    text: '(',
                    style: Styles.mediumTextStyle16.copyWith(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  TextSpan(
                    text: '$setNum',
                    style: Styles.mediumTextStyle16.copyWith(
                      color: const Color(0xffFFA05C),
                    ),
                  ),
                  TextSpan(
                    text: 'of 5)',
                    style: Styles.mediumTextStyle16.copyWith(
                      color: Colors.grey.shade300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 6),
          CustomTextFormField(
            color: const Color(0xff52525B),
            borderColor: const Color(0xff52525B),
            hintText: 'Enter a title for the exercise',
            style: Styles.regularTextStyle14.copyWith(
              color: const Color(0xffC6C6C6),
            ),
          ),
          const SizedBox(height: 15),

          CustomInputWidget(
            padding: EdgeInsets.zero,
            labelText: 'Exercise duration',
            textField: CustomTextFormField(
              borderColor: const Color(0xff52525B),
              color: Colors.transparent,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_drop_down,
                  size: 24,
                  color: Color(0xffA1A1AA),
                ),
              ),
              hintText: '2 months',
              style: Styles.regularTextStyle14.copyWith(
                color: const Color(0xffC6C6C6),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: GridView(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 3 / 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: MediaQuery.of(context).size.width * 0.07,
                crossAxisCount: 2,
              ),
              children: [
                WorkoutItem(
                  boxname: 'Reps:',
                  unit: 'reps',
                  number: 7,
                  onTapCount: (currentCount) {},
                ),
                WorkoutItem(
                  boxname: 'Sets',
                  unit: 'sets',
                  number: 10,
                  onTapCount: (currentCount) {},
                ),
                WorkoutItem(
                  boxname: 'Weight',
                  unit: 'lbs',
                  number: 150,
                  onTapCount: (currentCount) {},
                ),
                WorkoutItem(
                  boxname: 'Rest timer:',
                  unit: 's',
                  number: 80,
                  onTapCount: (currentCount) {},
                ),
              ],
            ),
          ),
          CustomButton(
            text: 'Next set',
            padding: EdgeInsets.zero,
            onTap: () {
              if (setNum < 5) {
                setNum++;
              } else {
                setNum = 1;
              }
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
