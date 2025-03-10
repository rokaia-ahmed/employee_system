import 'package:flutter/material.dart';
import '../../../../core/utils/styles.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeProfileInfo(),
            SizedBox(
              height: 20,
            ),
            HomeCalenderDate(),
            SizedBox(
              height: 20,
            ),
            Text('Today attendance',
               style: TextStyles.font18BlackW500,
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
              ),
              itemBuilder: (context,index) =>Container(

              ),

            ),
          ],
        ),
      )),
    );
  }
}
