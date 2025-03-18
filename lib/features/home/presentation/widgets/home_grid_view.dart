import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/styles.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 7.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 1.2.h,
      ),
      itemBuilder: (context,index) =>Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.blue.withValues(alpha: 0.07),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.coffee_rounded,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(width: 10,),
                Text('Check In',
                  style:TextStyles.font14BlackW400,
                ),
              ],
            ),
            SizedBox(height: 10,),
            Text('10:20 AM',
              style: TextStyles.font18BlackBold,
            ),
            SizedBox(height: 2,),
            Text('On Time',
              style:TextStyles.font14BlackW400 ,
            ),
          ],
        ),
      ),

    );
  }
}
