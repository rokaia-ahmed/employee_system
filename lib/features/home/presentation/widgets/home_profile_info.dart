import 'package:employee_system/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class HomeProfileInfo extends StatelessWidget {
  const HomeProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 27,
          backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg'),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Doe',
              style: TextStyles.font18BlackW500,
            ),
            Text(
              'Lead UI/UX Designer',
              style: TextStyles.font14BlackW400,
            ),
          ],
        ),
        Spacer(),
        IconButton(
          iconSize: 30,
          icon: Icon(Icons.notifications_none_sharp),
          onPressed: () {
            Navigator.pushNamed(context, Routes.notificationScreen);
          },
        ),
      ],
    );
  }
}
