import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/documents_widget.dart';
import '../widgets/personal_widget.dart';
import '../widgets/professional_widget.dart';
import '../widgets/profile_tab_bar.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
      surfaceTintColor: Colors.white,
      title: const Text(
        'My Profile',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: const Icon(Icons.arrow_back_ios),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: Colors.white,
    ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              ProfileTabBar(),
              SizedBox(
                height: 15.h,
              ),
              Expanded(
                child: TabBarView(
                    children: [
                      PersonalWidget(),
                      ProfessionalWidget(),
                      DocumentsWidget(),
                    ],
                ),
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}
