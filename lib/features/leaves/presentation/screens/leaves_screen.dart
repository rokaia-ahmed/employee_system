import 'package:employee_system/core/utils/colors/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/utils/styles.dart';
import '../widgets/leaves_grid_view.dart';
import '../widgets/leaves_tab_bar.dart';
import '../widgets/team_leave_view.dart';
import '../widgets/upcoming_past_view.dart';

class LeavesScreen extends StatelessWidget {
  const LeavesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
       // stops: [0.65,0.3],
        colors: [
        Colors.white,
        Colors.white,
          LightColors.greyColor.withValues(alpha: 0.16),
    ],
    ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: DefaultTabController(
            length: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('All Leaves',
                     style: TextStyles.font20BlackBold,
                     ),
                     InkWell(
                       onTap: (){
                         Navigator.pushNamed(context, Routes.applyLeave);
                       },
                       child: Container(
                         padding: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.5),
                              borderRadius: BorderRadius.circular(5),
                            ),
                           child: Icon(Icons.add,
                           size: 17,
                           ),
                       ),
                     ),
                   ],
                 ),
                SizedBox(
                  height: 15.h,
                ),
                LeavesGridView(),
                SizedBox(
                  height: 20.h,
                ),
                LeavesTabBar(),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  child: TabBarView(
                      children: [
                        UpcomingAndPastView(),
                        UpcomingAndPastView(),
                        TeamLeaveView(),
                      ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
