import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/custom_default_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import 'terms_conditions_check.dart';

class SignUpFormsAndRegister extends StatelessWidget {
  const SignUpFormsAndRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField(
          labelText: 'First Name',
          hintText: 'Enter First Name',
          controller: TextEditingController(),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextFormField(
          labelText: 'Last Name',
          hintText: 'Enter last Name',
          controller: TextEditingController(),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextFormField(
          labelText: 'Email Address',
          hintText: 'Enter Email Address',
          controller: TextEditingController(),
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextFormField(
          labelText: 'Password',
          hintText: 'Enter Password',
          controller: TextEditingController(),
          obscureText: true,
        ),
        SizedBox(
          height: 20.h,
        ),
        CustomTextFormField(
          labelText: 'Confirm Password',
          hintText: 'Enter Confirm Password',
          controller: TextEditingController(),
          obscureText: true,
        ),
        TermsAndConditionsCheck(),
        SizedBox(
          height: 35.h,
        ),
        CustomDefaultButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.signIn);
          },
          text: 'Register',
          isPressed: false,
        ),
      ],
    );
  }
}
