import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/app_rouer.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/core/utls/validator.dart';
import 'package:fitness_app/core/widget/custom_button.dart';
import 'package:fitness_app/core/widget/custom_input_widget.dart';
import 'package:fitness_app/core/widget/custom_text_field.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/forgot_password.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/login_with.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/logo.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogInViewBody extends StatefulWidget {
  const LogInViewBody({super.key});

  @override
  State<LogInViewBody> createState() => _LogInViewBodyState();
}

class _LogInViewBodyState extends State<LogInViewBody> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController emailControlar = TextEditingController();
  final TextEditingController passwordlControlar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: autovalidateMode,
        key: formKey,
        child: Column(
          children: [
            SizedBox(height: 40),
            Logo(),
            SizedBox(height: 29.1),
            Text('Login to your Account', style: Styles.semiBoldTextStyle24),
            SizedBox(height: 26),
            CustomInputWidget(
              labelText: 'Email',
              textField: CustomTextFormField(
                controller: emailControlar,
                onChanged: (value) {},
                validator: Validators.email,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icon(Icons.email, size: 16),
                hintText: 'Enter your email address',
              ),
            ),
            SizedBox(height: 13),
            CustomInputWidget(
              labelText: 'Password',
              textField: CustomTextFormField(
                controller: passwordlControlar,
                obscureText: true,
                onChanged: (value) {},
                validator: Validators.password,
                prefixIcon: Icon(Icons.lock, size: 16),
                hintText: 'Enter password',
                suffixIcon: Icon(Icons.visibility, size: 16),
              ),
            ),
            SizedBox(height: 21),
            ForotPassword(),
            SizedBox(height: 59),
            CustomButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  passwordlControlar.clear();
                  emailControlar.clear();
                  autovalidateMode = AutovalidateMode.disabled;
                  setState(() {});
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              text: 'Login',
              style: Styles.boldTextStyle16,
              gradient: linearGradient(buttonColorStart, buttonColorEnd),
            ),
            SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account? ',
                  style: Styles.mediumTextStyle16,
                ),
                GestureDetector(
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouer.kCreateAccount1);
                    },
                    child: Text(
                      'Sign up',
                      style: Styles.mediumTextStyle16.copyWith(
                        color: Color(0xffFFA05C),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 61),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Alternatively Login with:',
                style: Styles.mediumTextStyle14,
              ),
            ),
            SizedBox(height: 16),
            LoginWith(
              icon: Image.asset(
                appleIcon,
                fit: BoxFit.fill,
                width: 24,
                height: 24,
              ),
              text: Text(' APPLE ID', style: Styles.semiBoldTextStyle14),
            ),
            SizedBox(height: 16),
            LoginWith(
              icon: Image.asset(
                googleIcon,
                fit: BoxFit.fill,
                width: 24,
                height: 24,
              ),
              text: Text(' GOOGLE', style: Styles.semiBoldTextStyle14),
            ),
          ],
        ),
      ),
    );
  }
}

