import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:employee_system/core/utils/colors/light_colors.dart';
import 'package:flutter/material.dart';
import '../../holiday_list/presentation/screens/holiday_list_screen.dart';
import '../../home/presentation/screens/home_screen.dart';
import '../../leaves/presentation/screens/leaves_screen.dart';
import '../../profile/presentation/screens/profile_screen.dart';
import '../../team_members/presentation/screens/team_members_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _bottomNavIndex =0 ;

  final iconList = <IconData>[
    Icons.home,
    Icons.calendar_today,
    Icons.group,
    Icons.celebration_rounded,
    Icons.person,
  ];

  final screens = <Widget>[
    HomeScreen(),
    LeavesScreen(),
    TeamMembersScreen(),
    HolidayListScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      CurvedNavigationBar(
        backgroundColor: LightColors.primary,
        items:iconList.map((e) => Icon(e)
        ).toList(),
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
      ),
      body: screens[_bottomNavIndex],
    );
  }
}
