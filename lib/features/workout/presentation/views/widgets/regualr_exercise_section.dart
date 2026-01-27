
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/core/widget/custom_button.dart';
import 'package:fitness_app/core/widget/custom_input_widget.dart';
import 'package:fitness_app/core/widget/custom_text_field.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/workout_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegularExerciseSection extends StatelessWidget {
  const RegularExerciseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CustomInputWidget(
            padding: EdgeInsets.zero,
            style: Styles.mediumTextStyle20,
            labelText: 'Regular exercise',
            textField: CustomTextFormField(
              color: const Color(0xff52525B),
              borderColor: const Color(0xff52525B),
              hintText: 'Enter a title for the exercise',
              style: Styles.regularTextStyle14.copyWith(
                color: const Color(0xffC6C6C6),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              const Text('Set Goal', style: Styles.mediumTextStyle14),
              const SizedBox(width: 8),
              SvgPicture.asset(whatIcon, height: 16, width: 16),
            ],
          ),
          const SizedBox(height: 6),
          CustomTextFormField(
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
              children: const [
                WorkoutItem(boxname: 'Reps:', unit: 'reps', number: 7),
                WorkoutItem(boxname: 'Sets', unit: 'sets', number: 10),
                WorkoutItem(boxname: 'Weight', unit: 'lbs', number: 150),
                WorkoutItem(boxname: 'Rest timer:', unit: 's', number: 80),
              ],
            ),
          ),
          const CustomButton(text: 'Create workout', padding: EdgeInsets.zero),
        ],
      ),
    );
  }
}
