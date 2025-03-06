import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors/light_colors.dart';
import '../utils/styles.dart';

class CustomDefaultButton extends StatelessWidget {
  const CustomDefaultButton({super.key,
    required this.onPressed,
    required this.text, required this.isPressed});
   final VoidCallback onPressed;
   final String text;
   final bool isPressed ;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: double.infinity,
      height: 56.h,
      color: isPressed? LightColors.primary : LightColors.greyColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(text,
        style: TextStyles.font14BlackW400.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
