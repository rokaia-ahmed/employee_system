import 'package:employee_system/core/utils/app_images.dart';
import 'package:employee_system/core/widgets/custom_default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/styles.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: InkWell(
            onTap:(){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Forgot password 🤔',
            style: TextStyles.font18BlackW500,
            ),
            SizedBox(height: 10.h,),
            Text('Select which contact details should we use to reset your password.',
              style: TextStyles.font12GreyW400,
            ),
            Center(
              child: Image.asset(AppImages.forgetPass,
              height: 400.h,

              ),
            ),
            SizedBox(height: 10.h,),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    height: 35.h,width: 30.w,
                    child: Icon(Icons.phone,
                    color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Phone Number',
                      style: TextStyles.font14BlackW500,
                      ),
                      Text('(217) 555-0113',
                      style: TextStyles.font12GreyW400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            CustomDefaultButton(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.otpScreen);
                },
                text: 'Continue',
                isPressed: true)
          ],
        ),
      ),
    );
  }
}
