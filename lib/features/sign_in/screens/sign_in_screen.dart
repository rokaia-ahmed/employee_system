import 'package:employee_system/core/utils/app_images.dart';
import 'package:employee_system/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/utils/colors/light_colors.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../widgets/welcome_msg.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                SvgPicture.asset(AppSvgs.logo),
                SizedBox(
                  height: 20.h,
                ),
                WelcomeMsg(),
                SizedBox(
                  height: 20.h,
                ),
                CustomTextFormField(
                  labelText: 'Email Address',
                  hintText:'Enter Email Address' ,
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
                    onTap: (){},
                    child: Text('Forgot Password?',
                    style: TextStyles.font13BlueW400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                MaterialButton(
                 onPressed: (){},
                  minWidth: double.infinity,
                  height: 56.h,
                  color: LightColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('Login',
                  style: TextStyles.font14BlackW400.copyWith(
                    color: Colors.white,
                  ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
