import 'package:employee_system/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalWidget extends StatelessWidget {
  const PersonalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// first name
        Text(
          'Full Name',
          style: TextStyles.font12GreyW400,
        ),
        Text(
          'Rokaia Ahmed',
          style: TextStyles.font14BlackW400,
        ),
        SizedBox(
          height: 2.h,
        ),
        Divider(
          thickness: 0.2,
        ),
        SizedBox(
          height: 5.h,
        ),
        /// email address
        Text(
          'Email Address',
          style: TextStyles.font12GreyW400,
        ),
        Text(
          'rokiaahmed42@gmail.com',
          style: TextStyles.font14BlackW400,
        ),
        SizedBox(
          height: 2.h,
        ),
        Divider(
          thickness: 0.2,
        ),
        SizedBox(
          height: 5.h,
        ),
        /// phone number
        Text(
          'Phone Number',
          style: TextStyles.font12GreyW400,
        ),
        Text(
          '01115262581',
          style: TextStyles.font14BlackW400,
        ),
        SizedBox(
          height: 2.h,
        ),
        Divider(
          thickness: 0.2,
        ),
        SizedBox(
          height: 5.h,
        ),
        /// address
        Text(
          'address',
          style: TextStyles.font12GreyW400,
        ),
        Text(
          '88 Zahra El Maadi, cairo ,egypt',
          style: TextStyles.font14BlackW400,
        ),
        SizedBox(
          height: 2.h,
        ),
        Divider(
          thickness: 0.2,
        ),
      ],
    );
  }
}
