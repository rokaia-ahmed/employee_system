import 'package:employee_system/core/utils/styles.dart';
import 'package:employee_system/core/widgets/custom_default_button.dart';
import 'package:employee_system/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplyLeave extends StatelessWidget {
  const ApplyLeave({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.white,
        title: const Text(
          'Apply Leave',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: const Icon(Icons.arrow_back_ios),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            CustomTextFormField(labelText: 'Title'),
            SizedBox(height: 20,),
              CustomTextFormField(labelText: 'Leave Type'),
              SizedBox(height: 20,),
              CustomTextFormField(labelText: 'Contact Number'),
              SizedBox(height: 20,),
              CustomTextFormField(labelText: 'Start Date'),
              SizedBox(height: 20,),
              CustomTextFormField(labelText: 'End Date'),
              SizedBox(height: 20,),
              Text('Reason for Leave',
              style: TextStyles.font10BlueW400,
              ),
              SizedBox(height: 5,),
              Container(
                width: double.infinity,
                  height: 100.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                   border: Border.all(color: Colors.blue),
                  ),
                  child: TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      border: InputBorder.none,
                    ),
                  ),
              ),
              SizedBox(height: 30,),
              CustomDefaultButton(
                  onPressed: (){},
                  text: 'Apply Leave',
                  isPressed: true)
            ],
          ),
        ),
      ),
    );
  }
}
