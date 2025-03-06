import 'package:flutter/material.dart';

class TermsAndConditionsCheck extends StatefulWidget {
  const TermsAndConditionsCheck({super.key});

  @override
  State<TermsAndConditionsCheck> createState() => _TermsAndConditionsCheckState();
}

class _TermsAndConditionsCheckState extends State<TermsAndConditionsCheck> {
   bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Checkbox(
          value: _isChecked, onChanged: (value) {
          setState(() {
             _isChecked = value!;
          });
        },
        activeColor: Colors.blue,
         side: BorderSide(color: Colors.grey.shade300,
         width: 2,
         ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: 'I agree to the ',
              style: TextStyle(color: Colors.black), // Default style
              children: [
                TextSpan(
                  text: 'terms & conditions & privacy policy ',
                  style: TextStyle(color: Colors.blue),
                ),
                TextSpan(
                  text: 'set out by this site',
                  style: TextStyle(color: Colors.black,
                  height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
