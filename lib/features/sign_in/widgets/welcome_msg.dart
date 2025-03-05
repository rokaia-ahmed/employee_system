import 'package:employee_system/core/utils/styles.dart';
import 'package:flutter/material.dart';

class WelcomeMsg extends StatelessWidget {
  const WelcomeMsg({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome Back 👋',
          style: TextStyles.font20BlackBold.copyWith(
            letterSpacing: 1.5,
          ),
        ),
        Row(
          children: [
            Text('to ',
              style: TextStyles.font20BlackBold.copyWith(
                letterSpacing: 1.5,
              ),
            ),
            Text('HR Attendee',
              style: TextStyles.font20BlueBold.copyWith(
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
        Text('Hello there, login to continue',
          style: TextStyles.font14GreyW400,
        )
      ],
    );
  }
}
