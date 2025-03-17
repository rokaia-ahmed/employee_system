import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocumentsWidget extends StatelessWidget {
  const DocumentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomListTile(text: 'Offer Letter',
          onTap: () { },),
        Divider(thickness: 0.2,),
        CustomListTile(text: 'Appointment Letter',
          onTap: () { },),
        Divider(thickness: 0.2,),
        CustomListTile(text: 'Bond Agreement',
          onTap: () { },),
        Divider(thickness: 0.2,),
        CustomListTile(text: 'Appraisal Letter',
          onTap: () { },),
        Divider(thickness: 0.2,),
        CustomListTile(text: 'Salary Slip',
          onTap: () { },),
        Divider(thickness: 0.2,),
      ],
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key,
    required this.text,
    required this.onTap});
    final String text ;
    final Function() onTap ;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      minTileHeight: 50.h,
      contentPadding: EdgeInsets.zero,
      leading:CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: Icon(Icons.library_books,
          size: 20,
        ),
      ),
      title:Text(text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      ),
      trailing: Icon(Icons.system_update),
    );
  }
}

