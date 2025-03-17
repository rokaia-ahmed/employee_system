import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/colors/light_colors.dart';
import '../../../../core/utils/styles.dart';

class ProfileTabBar extends StatelessWidget {
  const ProfileTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: LightColors.greyColor.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TabBar(
        labelPadding: EdgeInsets.zero,
        indicatorColor: Colors.transparent,
        dividerHeight: 0,
        labelColor: Colors.white,
        labelStyle: TextStyles.font14BlackW400,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: LightColors.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        tabs: [
          Text('Personal'),
          Text('Professional'),
          Text('Documents'),
        ],
      ),
    );
  }
}
