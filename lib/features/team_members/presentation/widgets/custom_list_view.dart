import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/styles.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 10,
        separatorBuilder: (context,index)=>
            Divider(
              color: Colors.grey.shade200,
              thickness: 0.7,
            ),
        itemBuilder: (context,index)=>
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, Routes.attendanceScreen);
              },
              leading: CircleAvatar(
                radius: 27,
                backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.IGNf7GuQaCqz_RPq5wCkPgHaLH?rs=1&pid=ImgDetMain'),
              ),
              title: Text('Rokaia Ahmed',
                style: TextStyles.font14BlackW700,
              ),
              subtitle: Text('rokiaahmed42@gmail.com',
                style: TextStyles.font12GreyW400,
              ),
              trailing: Icon(Icons.more_vert),
            ),
      ),
    );
  }
}
