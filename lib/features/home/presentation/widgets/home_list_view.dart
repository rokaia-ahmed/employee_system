import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/styles.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: Colors.blue.withValues(alpha: 0.07),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.coffee_rounded,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Check In',
                  style: TextStyles.font14BlackW500,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'April 20, 2021',
                  style: TextStyles.font12GreyW400,
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  '10:20 AM',
                  style: TextStyles.font14BlackW400,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'On Time',
                  style: TextStyles.font12GreyW400,
                ),
              ],
            ),
          ],
        ),
      ),
      itemCount: 2,
      separatorBuilder: (context, index) => SizedBox(
        height: 10.h,
      ),
    );
  }
}
