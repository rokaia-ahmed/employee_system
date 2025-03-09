import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/styles.dart';

class HomeCalenderDate extends StatefulWidget {
  const HomeCalenderDate({super.key});

  @override
  State<HomeCalenderDate> createState() => _HomeCalenderDateState();
}

class _HomeCalenderDateState extends State<HomeCalenderDate> {
  int _selectedIndex = 0;
  List<DateTime> dates = [];
  @override
  void initState() {
    _generateDatesForCurrentMonth();
    super.initState();
  }
  void _generateDatesForCurrentMonth() {
    DateTime now = DateTime.now();
    int daysInMonth = DateTime(now.year, now.month+1,0).day;

    dates = List.generate(daysInMonth, (index) {
      return DateTime(now.year, now.month, index + 1);
    });

    // Set the selected index to today's date
    _selectedIndex = dates.indexWhere(
            (date) => date.day == now.day && date.month == now.month);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75.h,
      child: ListView.separated(
          shrinkWrap: true,
        scrollDirection: Axis.horizontal,
          itemCount: dates.length,
        separatorBuilder: (context,index)=>
            SizedBox(width: 10.w,),
          itemBuilder: (context,index)=> Container(
            width: 60.w,
            decoration: BoxDecoration(
              color:_selectedIndex == index?Colors.blue:
              Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.grey.shade200,
                width: 0.4,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text(
                 DateFormat('dd').format(dates[index]),
                  style: TextStyles.font20BlackBold.copyWith(
                    height: 1.3,
                  ),
                  ),
                Text(DateFormat('E').format(dates[index]),
                  style: TextStyles.font12BlackW400,
                ),
              ],
            ),
          ),
      ),
    );
  }
}
