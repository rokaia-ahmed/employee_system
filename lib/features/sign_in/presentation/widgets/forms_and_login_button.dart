import 'package:employee_system/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_default_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class FormsAndLoginButton extends StatelessWidget {
  const FormsAndLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          height: 15.h,
        ),
        Align(
          alignment: Alignment.topRight,
          child: InkWell(
            onTap: () {},
            child: Text(
              'Forgot Password?',
              style: TextStyles.font13BlueW400,
            ),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        CustomDefaultButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context,
                Routes.layout, (Route<dynamic> route) => false);
          },
          text: 'Login',
          isPressed: true,
        ),
      ],
    );
  }
}
