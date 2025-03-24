import 'package:flutter/material.dart';
import 'package:fresh_fruits2/Styles/app_text_styles.dart';
import 'screens/onboarding_viwe.dart';
import 'screens/splash_viwe.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: AppTextStyles.poppinsFamily),
      home: OnboardingViwe(),
    );
  }
}
