import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/colors/light_colors.dart';

class AddMembersButton extends StatelessWidget {
  const AddMembersButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(onPressed: (){},
      minWidth: double.infinity,
      height: 60.h,
      color: LightColors.primary,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add_circle_outline,
            color: Colors.white.withValues(alpha: 0.8),
            size: 25,
          ),
          SizedBox(width: 7.w,),
          Text('Add Member',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
