import 'package:employee_system/core/widgets/custom_default_button.dart';
import 'package:employee_system/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.white,
        title: const Text(
          'Change Password',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const Icon(Icons.arrow_back_ios),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 10.h),
        child: Column(
          children: [
            CustomTextFormField(
                labelText: 'Password',
                obscureText: true,
            ),
            SizedBox(height: 20.h,),
            CustomTextFormField(labelText: 'Confirm Password',
              obscureText: true,
            ),
            Spacer(),
            CustomDefaultButton(
                onPressed: (){},
                text: 'Update',
                isPressed: true),
            SizedBox(height: 10.h,),
          ],
        ),
      ),
    );
  }
}
