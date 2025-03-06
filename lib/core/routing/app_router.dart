import 'package:employee_system/core/routing/routes.dart';
import 'package:employee_system/features/layout/screens/layout_screen.dart';
import 'package:flutter/material.dart';

import '../../features/sign_in/presentation/screens/sign_in_screen.dart';
import '../../features/sign_up/presentation/screens/sign_up_screen.dart';

class AppRouter{
 Route? generateRoute(RouteSettings settings){
   final args = settings.arguments;
   switch(settings.name){
      case Routes.signIn:
        return MaterialPageRoute(builder: (_)=>const SignInScreen());
     case Routes.signUp:
       return MaterialPageRoute(builder: (_)=>const SignUpScreen());

     case Routes.layout:
       return MaterialPageRoute(builder: (_)=>const LayoutScreen());
   }
   return null;
 }
}