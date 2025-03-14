import 'package:flutter/material.dart';

class BottonWidget extends StatelessWidget {
  const BottonWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });
  final IconData icon;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
          bottom: 10,
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.grey, size: 15),
            SizedBox(width: 5),
            Text(text, style: TextStyle(color: this.color, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
