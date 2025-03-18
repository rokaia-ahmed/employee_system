import 'package:flutter/material.dart';
import '../../../../core/utils/styles.dart';
import '../widgets/home_calender_date.dart';
import '../widgets/home_container.dart';
import '../widgets/home_grid_view.dart';
import '../widgets/home_list_view.dart';
import '../widgets/home_profile_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
          child: SingleChildScrollView(
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
              Text(
                'Today attendance',
                style: TextStyles.font18BlackW500,
              ),
              SizedBox(
                height: 5,
              ),
              HomeGridView(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Activity',
                    style: TextStyles.font15BlackW400,
                  ),
                  InkWell(
                    child: Text(
                      'See all',
                      style: TextStyles.font13BlueW400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              HomeListView(),
              SizedBox(
                height: 15,
              ),
              HomeContainer(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
