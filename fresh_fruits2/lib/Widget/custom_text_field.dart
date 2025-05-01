import 'package:flutter/material.dart';

import '../Styles/app_colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hintText, this.ispass = false});
  final String hintText;
  final bool ispass;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: ispass,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: AppColors.secondary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: AppColors.secondary, width: 2),
        ),
      ),
    );
  }
}
