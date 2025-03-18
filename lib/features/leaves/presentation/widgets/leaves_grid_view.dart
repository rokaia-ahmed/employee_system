import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/styles.dart';

class LeavesGridView extends StatelessWidget {
   LeavesGridView({super.key});

  final  List<Color> colors = [
    Colors.blue,
    Colors.lightGreen,
    Colors.greenAccent,
    Colors.red];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 15.h,
        childAspectRatio: 1.44.h,
      ),
      itemCount: 4,
      itemBuilder: (context,index)=>
          Container(
            padding: EdgeInsets.symmetric(
                vertical: 10.h,
                horizontal: 10.w),
            decoration: BoxDecoration(
              color: colors[index].withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(color: colors[index],
              width: 1.5.w,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Leave \nBalance',
                  style: TextStyles.font18BlackBold,
                ),
                SizedBox(height: 10.h,),
                Text('12',
                  style: TextStyles.font18BlackBold.copyWith(
                    color: colors[index],
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
