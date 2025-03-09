import 'package:flutter/material.dart';

class AboutIcon extends StatelessWidget {
  const AboutIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 250, top: 20, left: 20),
      child: Container(
        width: 50,
        height: 40,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color(0xFF40A3F1), const Color(0xFF1F78D0)],
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.info_outline, size: 15, color: Colors.white),
              SizedBox(width: 3),
              Text(
                'About',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
