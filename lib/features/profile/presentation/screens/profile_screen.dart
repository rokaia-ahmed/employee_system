import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/styles.dart';
import '../widgets/profile_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.all(10.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH?rs=1&pid=ImgDetMain'),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 25.h,width: 25.w,
                    margin: EdgeInsets.only(bottom: 5.h),
                    decoration: BoxDecoration(
                     color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Icon(Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                ),
              ],
            ),
            Text('Rokaia Ahmed',
              style: TextStyles.font18BlackBold
            ),
            Text('Lead Software Engineer',
                style: TextStyles.font13BlackW400.copyWith(
                  color: Colors.black87,
                ),
            ),
            SizedBox(height: 10.h,),
            ProfileListTile(icon: Icons.perm_identity, title: 'My Profile',),
            Divider(
              color: Colors.grey.shade100,
              thickness: 0.7,
            ),
            ProfileListTile(icon: Icons.settings_outlined,
              title: 'Settings',),
            Divider(
              color: Colors.grey.shade100,
              thickness: 0.7,
            ),
            ProfileListTile(icon: Icons.featured_play_list_outlined,
              title: 'Terms & Conditions',),
            Divider(
              color: Colors.grey.shade100,
              thickness: 0.7,
            ),
            ProfileListTile(icon: Icons.privacy_tip_outlined,
              title: 'Privacy policy',),
            Divider(
              color: Colors.grey.shade100,
              thickness: 0.5,
            ),
            SizedBox(height: 10.h,),
            InkWell(
              onTap: (){},
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red.shade100.withValues(alpha: 0.2),
                    child: Icon(Icons.logout,
                    size: 20,
                    color: Colors.red),
                  ),
                  SizedBox(width: 10.w,),
                  Text('Logout',
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

