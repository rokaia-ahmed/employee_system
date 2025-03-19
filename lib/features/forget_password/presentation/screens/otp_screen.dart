import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_default_button.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
            Text('Enter Verification Code',
              style: TextStyles.font18BlackW500,
            ),
            SizedBox(height: 10.h,),
            Text('We have sent the code verification to your mobile number',
              style: TextStyles.font12GreyW400,
            ),
            Center(
              child: Image.asset(AppImages.otpCode,
                height: 350.h,

              ),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),

                  fieldHeight: 60,
                  fieldWidth: 70,
                  activeBorderWidth: 1.5,
                  inactiveBorderWidth: 1.5,
                  activeFillColor: Colors.white,
                  inactiveColor: Colors.grey.shade200,
                  activeColor: Colors.blue,
                ),
                animationDuration: Duration(milliseconds: 300),
                backgroundColor:Colors.white,
                enableActiveFill: false,
                controller: TextEditingController(),
                appContext: context,
              ),
            ),
            SizedBox(height: 20.h,),
            CustomDefaultButton(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.newPass);
                },
                text: 'Verify',
                isPressed: true),
          ],
        ),
      ),
    );
  }
}