import 'package:flutter/material.dart';
import 'screens/logos.dart';

void main() {
  runApp(FreshFruits());
}

class FreshFruits extends StatefulWidget {
  const FreshFruits({super.key});

  @override
  State<FreshFruits> createState() => _FreshFruitsState();
}

class _FreshFruitsState extends State<FreshFruits> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
