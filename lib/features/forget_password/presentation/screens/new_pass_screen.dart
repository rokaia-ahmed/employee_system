import 'package:employee_system/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_default_button.dart';

class NewPassScreen extends StatelessWidget {
  const NewPassScreen({super.key});

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
            Text('Enter New Password',
              style: TextStyles.font18BlackW500,
            ),
            SizedBox(height: 5.h,),
            Text('Please enter your new password',
              style: TextStyles.font12GreyW400,
            ),
            Center(
              child: Image.asset(AppImages.newPass,
                height: 400.h,

              ),
            ),
            SizedBox(height: 10.h,),
            CustomTextFormField(labelText: 'New Password',
            obscureText: true,
            ),
            SizedBox(height: 15.h,),
            CustomTextFormField(labelText: 'Confirm Password',
              obscureText: true,
            ),
            SizedBox(height: 20.h,),
            CustomDefaultButton(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.signIn);
                },
                text: 'Update Password',
                isPressed: true)
          ],
        ),
      ),
    );
  }
}
