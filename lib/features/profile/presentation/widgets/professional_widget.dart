import 'package:employee_system/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfessionalWidget extends StatelessWidget {
  const ProfessionalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// first name
        Text(
          'Employee ID',
          style: TextStyles.font12GreyW400,
        ),
        Text(
          '7879987',
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
        /// Designation
        Text(
          'Designation',
          style: TextStyles.font12GreyW400,
        ),
        Text(
          'Lead UI/UX Designer',
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
        /// Company Email Address
        Text(
          'Company Email Address',
          style: TextStyles.font12GreyW400,
        ),
        Text(
          'michael.mitc@example.com ',
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
        /// Employee Type
        Text(
          'Employee Type',
          style: TextStyles.font12GreyW400,
        ),
        Text(
          'Permanent',
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
        /// Department
        Text(
          'Department',
          style: TextStyles.font12GreyW400,
        ),
        Text(
          'Design',
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
        /// Reporting Manager
        Text(
          'Reporting Manager',
          style: TextStyles.font12GreyW400,
        ),
        Text(
          'Robert Fox',
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
        /// Company Experience
        Text(
          'Company Experience',
          style: TextStyles.font12GreyW400,
        ),
        Text(
          '2 Year 5 Months ',
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
        /// Office Time
        Text(
          'Office Time',
          style: TextStyles.font12GreyW400,
        ),
        Text(
          '10:00 am to 07:00 pm',
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
      ],
    );
  }
}
