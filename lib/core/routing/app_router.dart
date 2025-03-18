import 'package:employee_system/core/routing/routes.dart';
import 'package:employee_system/features/layout/screens/layout_screen.dart';
import 'package:employee_system/features/leaves/presentation/screens/apply_leave.dart';
import 'package:employee_system/features/profile/presentation/screens/my_profile_screen.dart';
import 'package:employee_system/features/profile/presentation/screens/setting_screen.dart';
import 'package:employee_system/features/team_members/presentation/screens/attendance_screen.dart';
import 'package:flutter/material.dart';

import '../../features/notification/presentation/screens/notification_screen.dart';
import '../../features/sign_in/presentation/screens/sign_in_screen.dart';
import '../../features/sign_up/presentation/screens/sign_up_screen.dart';

class AppRouter{
 Route? generateRoute(RouteSettings settings){
  // final args = settings.arguments;
   switch(settings.name){
      case Routes.signIn:
        return MaterialPageRoute(builder: (_)=>const SignInScreen());
     case Routes.signUp:
       return MaterialPageRoute(builder: (_)=>const SignUpScreen());

     case Routes.layout:
       return MaterialPageRoute(builder: (_)=>const LayoutScreen());
     case Routes.attendanceScreen:
       return MaterialPageRoute(builder: (_)=>const AttendanceScreen());
     case Routes.myProfileScreen:
       return MaterialPageRoute(builder: (_)=>const MyProfileScreen());
     case Routes.settingScreen:
       return MaterialPageRoute(builder: (_)=>const SettingScreen());
     case Routes.notificationScreen:
       return MaterialPageRoute(builder: (_)=>const NotificationScreen());
     case Routes.applyLeave:
       return MaterialPageRoute(builder: (_)=>const ApplyLeave());
   }
   return null;
 }
}