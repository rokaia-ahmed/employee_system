import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeamLeaveView extends StatelessWidget {
  const TeamLeaveView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (context, index) => SizedBox(
        height: 10,
      ),
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage('https://c.pxhere.com/photos/cf/92/boy_portrait_male_person_young_smiling_face_strong-720061.jpg!d'),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jane Cooper',
                    ),
                    Text(
                      'Apr 12, 2021 - Apr 16, 2021',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 7.0,
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    color: Color(0xffff7f74),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.cancel_outlined,
                            color: Colors.white,
                            size: 17,
                          ),
                          SizedBox(width: 5.w,),
                          Text('Reject',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                          ),
                        ],
                      ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    color: Color(0xff30beb6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check_circle_outline,
                            color: Colors.white,
                            size: 17,
                          ),
                          SizedBox(width: 5.w,),
                          Text('Accept',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                          ),
                        ],
                      ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
