import 'package:employee_system/core/utils/colors/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/styles.dart';
import '../widgets/custom_list_view.dart';
import '../widgets/custom_search_widget.dart';

class TeamMembersScreen extends StatelessWidget {
  const TeamMembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Team Members',
              style: TextStyles.font18BlackBold,
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomSearchWidget(),
              SizedBox(
                height: 15.h,
              ),
              CustomListView(),
              SizedBox(
                height: 15.h,
              ),
              MaterialButton(onPressed: (){},
                minWidth: double.infinity,
                height: 60.h,
                color: LightColors.primary,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_circle_outline,
                    color: Colors.white.withValues(alpha: 0.8),
                      size: 25,
                    ),
                    SizedBox(width: 7.w,),
                    Text('Add Member',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
