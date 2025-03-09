import 'package:flutter/material.dart';
import '../widgets/home_calender_date.dart';
import '../widgets/home_profile_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          children: [
            HomeProfileInfo(),
            SizedBox(
              height: 20,
            ),
            HomeCalenderDate(),
          ],
        ),
      )),
    );
  }
}
