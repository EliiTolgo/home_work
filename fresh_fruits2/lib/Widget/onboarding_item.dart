import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fresh_fruits2/Model/onboarding_item_model.dart';
import 'package:fresh_fruits2/Styles/app_text_styles.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.item});
  final OnboardingItemModel item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SvgPicture.asset(item.image),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Text(
                  item.title,
                  style: AppTextStyles.bold24,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Text(
                  item.subtitle,
                  style: AppTextStyles.regular14,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
