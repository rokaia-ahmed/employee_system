import 'package:employee_system/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({super.key, required this.icon, required this.title});
 final IconData icon;
 final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ListTile(
        leading: CircleAvatar(
             backgroundColor:Colors.grey.shade100 ,
            child: Icon(icon,
            size: 20,
            ),
        ),
        contentPadding: EdgeInsets.zero,
        title: Text(title,
        style: TextStyles.font13BlackW500,
        ),
        onTap: () {
        },
        trailing: Icon(Icons.arrow_forward_ios,
        size: 18,
        ),
      ),
    );
  }
}
