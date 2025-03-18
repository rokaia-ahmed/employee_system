import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/styles.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.white,
        title: const Text(
          'Notification',
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
      body: ListView.separated(
        padding:EdgeInsets.symmetric(horizontal: 15.w,vertical:5.h),
          itemBuilder: (context, index) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue.shade100.withValues(alpha: 0.2),
                    child: Icon(
                      Icons.perm_identity,
                      color: Colors.blue,
                      size: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You update your profile picture',
                          style: TextStyles.font15BlackW400.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Text(
                          'You just update your profile picture',
                          style: TextStyles.font13BlackW400,
                        ),
                        SizedBox(height: 4.h,),
                        Text(
                          'April 12, 2023 at 22:22 Pm',
                          style: TextStyles.font10GreyW400,
                        ),
                        SizedBox(height: 5.h,),
                      ],
                    ),
                  ),
                ],
              ),
          separatorBuilder: (context, index) => Divider(
                thickness: 0.2,
              ),
          itemCount: 6),
    );
  }
}
