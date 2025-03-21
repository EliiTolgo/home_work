import 'package:flutter/material.dart';

import 'screens/Onboarding.dart';

void main() {
  runApp(FreshFruits());
}

class FreshFruits extends StatelessWidget {
  const FreshFruits({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Onboarding());
  }
}
