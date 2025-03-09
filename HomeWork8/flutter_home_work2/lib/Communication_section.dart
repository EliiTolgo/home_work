import 'package:flutter/material.dart';

class CommunicationWidget extends StatelessWidget {
  const CommunicationWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.colorBG,
    required this.iconColor,
  });
  final IconData icon;
  final String text;
  final Color colorBG;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 40,
          decoration: BoxDecoration(color: colorBG, shape: BoxShape.circle),
          child: Center(child: Icon(icon, color: iconColor)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(text.toUpperCase(), style: TextStyle(color: iconColor)),
        ),
      ],
    );
  }
}
