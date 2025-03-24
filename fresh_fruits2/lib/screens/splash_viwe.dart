import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fresh_fruits2/Styles/app_colors.dart';
import 'package:fresh_fruits2/Styles/app_text_styles.dart';
import 'package:fresh_fruits2/constants/assets.dart';

import 'onboarding_viwe.dart';

class SplashViwe extends StatefulWidget {
  const SplashViwe({super.key});

  @override
  State<SplashViwe> createState() => _SplashViweState();
}

class _SplashViweState extends State<SplashViwe> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingViwe()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.imagesLogo),
            Text(
              'Fresh Fruits',
              style: AppTextStyles.bold38.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
