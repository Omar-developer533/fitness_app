import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/app_router.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/core/utls/validator.dart';
import 'package:fitness_app/core/widget/custom_button.dart';
import 'package:fitness_app/core/widget/custom_input_widget.dart';
import 'package:fitness_app/core/widget/custom_text_field.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/information_type.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CreateAccountPart2Body extends StatefulWidget {
  const CreateAccountPart2Body({super.key});

  @override
  State<CreateAccountPart2Body> createState() => _CreateAccountPart2BodyState();
}

class _CreateAccountPart2BodyState extends State<CreateAccountPart2Body> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController dateOfBirthdayController =
      TextEditingController();
  final TextEditingController cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            const SizedBox(height: 25),
            CustomAppBar(
              widget: Logo(),
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
            const SizedBox(height: 29.1),
        const    Text('Create an Account', style: Styles.semiBoldTextStyle24),
            Text(
              'Help us finish setting up your account.',
              style: Styles.mediumTextStyle14.copyWith(
                color: Color(0xffE4E4E7),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InformationType(
                    text: ' Account information',
                    iconNumber: oneIcon,
                  ),
                 const SizedBox(width: 16),
                  InformationType(
                    iconNumber: towOrangeIcon,
                    text: ' Biodata information',
                    style: Styles.mediumTextStyle12,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                CustomInputWidget(
                  padding: EdgeInsets.only(left: 16, right: 8),
                  width: MediaQuery.of(context).size.width * .5,
                  labelText: 'First name',
                  textField: CustomTextFormField(
                    controller: firstNameController,
                    onChanged: (value) {},
                    validator: Validators.userName,
                    keyboardType: TextInputType.name,

                    hintText: 'E.g John',
                  ),
                ),
                CustomInputWidget(
                  padding: EdgeInsets.only(right: 16, left: 8),
                  width: MediaQuery.of(context).size.width * .5,
                  labelText: 'Last name',
                  textField: CustomTextFormField(
                    controller: lastNameController,
                    onChanged: (value) {},
                    validator: Validators.userName,
                    keyboardType: TextInputType.name,

                    hintText: 'E.g Appleseed',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            CustomInputWidget(
              labelText: 'Date of Birth',
              textField: CustomTextFormField(
                controller: dateOfBirthdayController,
                onChanged: (value) {},
                validator: Validators.date,
                prefixIcon: SvgPicture.asset(
                  calenderIcon,
                  width: 16,
                  height: 16,
                ),
                hintText: 'Select a date',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon:const Icon(Icons.keyboard_arrow_down, size: 16),
                ),
              ),
            ),
            const SizedBox(height: 16),
            CustomInputWidget(
              labelText: 'Location',
              textField: CustomTextFormField(
                controller: locationController,
                onChanged: (value) {},
                validator: Validators.location,
                prefixIcon:const Icon(Icons.location_on, size: 16),
                hintText: 'Select a location',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon:const Icon(Icons.keyboard_arrow_down, size: 16),
                ),
              ),
            ),
            const SizedBox(height: 16),
            CustomInputWidget(
              labelText: 'City',
              textField: CustomTextFormField(
                controller: cityController,
                onChanged: (value) {},
                validator: Validators.city,
                hintText: 'Select city in your location',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon:const Icon(Icons.keyboard_arrow_down, size: 16),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .12),
            CustomButton(
              text: 'Create your account',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  autovalidateMode = AutovalidateMode.disabled;
                  setState(() {});
                  firstNameController.clear();
                  lastNameController.clear();
                  locationController.clear();
                  cityController.clear();
                  dateOfBirthdayController.clear();
                  GoRouter.of(context).push(AppRouter.kHomeView);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          const  SizedBox(height: 70),
          ],
        ),
      ),
    );
    
  }
}
