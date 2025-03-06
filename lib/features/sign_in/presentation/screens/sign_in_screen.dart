import 'package:employee_system/core/utils/app_images.dart';
import 'package:employee_system/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/routing/routes.dart';
import '../widgets/forms_and_login_button.dart';
import '../widgets/social_media_button.dart';
import '../widgets/welcome_msg.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
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
                      FormsAndLoginButton(),
                      SizedBox(
                        height: 12.h,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Or continue with social account',
                          style: TextStyles.font12GreyW400,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      /// social media  login
                      SocialMediaButton(),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don\'t have an account? '),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Routes.signUp);
                            },
                            child: Text(
                              'Register',
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
        }),
      ),
    );
  }
}
