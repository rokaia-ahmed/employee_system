import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/light_theme.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  /// screen util
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child){
        return  MaterialApp(
          title: 'Employee System',
          debugShowCheckedModeBanner: false,
         // theme:lightTheme,
          home:child,
          onGenerateRoute: AppRouter().generateRoute,
          initialRoute: Routes.signIn,
        );
      },
    );
  }
}

