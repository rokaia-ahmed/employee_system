import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({super.key,
    required this.labelText,
    this.controller,
    this.obscureText,  this.hintText});

  final  String labelText;
  final  String? hintText;
  final TextEditingController? controller;
  final bool? obscureText;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText??false;
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:widget.controller,
      obscureText:_obscureText,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        hintStyle: TextStyles.font10GreyW400,
       labelStyle:WidgetStateTextStyle.resolveWith((Set<WidgetState> states) {
         if (states.contains(WidgetState.focused)) {
           return TextStyles.font10BlueW400;
         }
         return TextStyles.font10GreyW400;
       }),
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        suffixIcon: widget.obscureText??false
            ? IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
            color: Colors.black.withValues(alpha: 0.7),
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        )
            : null,
      ),
    );
  }
}
