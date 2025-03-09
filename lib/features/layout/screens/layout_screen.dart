import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../../home/presentation/screens/home_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _bottomNavIndex =0 ;

  final iconList = <IconData>[
    Icons.home,
    Icons.search,
    Icons.group,
    Icons.notifications,
    Icons.person,
  ];

  final screens = <Widget>[
    HomeScreen(),
    Container(color: Colors.green,),
    Container(color: Colors.grey,),
    Container(color: Colors.blue,),
    Container(color: Colors.yellow,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: StylishBottomBar(
        currentIndex: _bottomNavIndex,
        onTap: (index){
          setState(() {
              _bottomNavIndex = index;
          });
        },
        items:iconList.map((e) => BottomBarItem(
            icon: Icon(e),
            title: Text(''),
          selectedColor: Colors.blue,
        ),
        ).toList(),
        option: AnimatedBarOptions(
        iconStyle: IconStyle.simple,
        ),
      ),
      body: screens[_bottomNavIndex],
    );
  }
}
