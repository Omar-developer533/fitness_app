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
import 'package:go_router/go_router.dart';

class CreateAccountPart1Body extends StatefulWidget {
  const CreateAccountPart1Body({super.key});

  @override
  State<CreateAccountPart1Body> createState() => _CreateAccountPart1BodyState();
}

class _CreateAccountPart1BodyState extends State<CreateAccountPart1Body> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  bool obscureText = true;
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
            const Text('Create an Account', style: Styles.semiBoldTextStyle24),
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
                  const SizedBox(width: 15),
                  InformationType(
                    iconNumber: towIcon,
                    text: ' Biodata information',
                    style: Styles.mediumTextStyle12.copyWith(
                      color: Color(0xffA1A1AA),
                    ),
                    lineColor: Color(0xff3F3F46),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            CustomInputWidget(
              labelText: 'Username',
              textField: CustomTextFormField(
                controller: userNameController,
                onChanged: (value) {},
                validator: Validators.userName,
                keyboardType: TextInputType.name,
                prefixIcon: Icon(Icons.person, size: 16),
                hintText: 'E.g Johntheone',
              ),
            ),
            const SizedBox(height: 16),
            CustomInputWidget(
              labelText: 'Emai',
              textField: CustomTextFormField(
                controller: emailController,
                onChanged: (value) {},
                validator: Validators.email,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icon(Icons.email, size: 16),
                hintText: 'Enter your email address',
              ),
            ),
            const SizedBox(height: 16),
            CustomInputWidget(
              labelText: 'Password',
              textField: CustomTextFormField(
                controller: passwordController,
                onChanged: (value) {},
                validator: Validators.password,
                keyboardType: TextInputType.visiblePassword,
                obscureText: obscureText,
                prefixIcon: Icon(Icons.lock, size: 16),
                hintText: 'Enter a password',
                suffixIcon: IconButton(
                  onPressed: () {
                    obscureText = !obscureText;
                    setState(() {});
                  },
                  icon: Icon(Icons.visibility, size: 16),
                ),
              ),
            ),
            const SizedBox(height: 16),
            CustomInputWidget(
              labelText: 'Confirm password',
              textField: CustomTextFormField(
                controller: confirmController,
                onChanged: (value) {},
                validator: Validators.password,
                keyboardType: TextInputType.visiblePassword,
                prefixIcon: Icon(Icons.lock, size: 16),
                hintText: 'Confirm password',
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .12),
            CustomButton(
              text: 'Continue',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  autovalidateMode = AutovalidateMode.disabled;
                  setState(() {});
                  passwordController.clear();
                  confirmController.clear();
                  emailController.clear();
                  userNameController.clear();
                  GoRouter.of(context).push(AppRouter.kCreatAccountPart2);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
