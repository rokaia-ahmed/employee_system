import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.white,
        title: const Text(
          'Rokaia Ahmed',
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
          padding: EdgeInsets.fromLTRB(0, 0.0, 0, 15.h),
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Card(
              color: Colors.white,
              shadowColor: Colors.grey.shade100.withValues(alpha: 0.3),
              elevation: 20,
              child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 10.w,
                          height: 80.h,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20)),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'April,10, 2021',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_circle_right_outlined,
                                color: Colors.blue.shade200,
                                  size: 28,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  '10:12 am',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Icon(Icons.arrow_circle_left_outlined,
                                  color: Colors.blue.shade200,
                                  size: 28,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  '7:00 pm',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(
                height: 10.h,
              ),
          itemCount: 10),
    );
  }
}
