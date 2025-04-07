import 'package:flutter/material.dart';
import '../Styles/app_text_styles.dart';

class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.color,
    required this.textcolor,
    required this.isborder,
  });
  VoidCallback onPressed;
  final String text;
  final Color color;
  final Color textcolor;
  bool isborder = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: Size(double.infinity, 60),
        side: BorderSide(color: isborder ? Colors.black : color, width: 2),
      ),
      onPressed: onPressed,
      child: Text(text, style: AppTextStyles.bold16.copyWith(color: textcolor)),
    );
  }
}
