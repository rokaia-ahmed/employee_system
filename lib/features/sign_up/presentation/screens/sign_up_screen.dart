import 'package:employee_system/features/sign_up/presentation/widgets/welecome_msg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/styles.dart';
import '../../../sign_in/presentation/widgets/social_media_button.dart';
import '../widgets/sign_up_forms_and_register.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                SignUpFormsAndRegister(),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Or continue with social account',
                    style: TextStyles.font12GreyW400,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                /// social media  login
                SocialMediaButton(),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account? '),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.signIn);
                      },
                      child: Text(
                        'Login',
                        style: TextStyles.font13BlueW400,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
