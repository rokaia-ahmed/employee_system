import 'package:employee_system/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../../features/sign_in/screens/sign_in_screen.dart';

class AppRouter{
 Route? generateRoute(RouteSettings settings){
   final args = settings.arguments;
   switch(settings.name){
      case Routes.signIn:
        return MaterialPageRoute(builder: (_)=>const SignInScreen());
   }
   return null;
 }
}