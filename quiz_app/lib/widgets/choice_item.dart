import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/constants/assets.dart';

import '../Styles/app_colors.dart';
import '../Styles/app_text_styles.dart' show AppTextStyles;

class ChoiceItem extends StatelessWidget {
  ChoiceItem({
    super.key,
    required this.choice,
    required this.isSelected,
    required this.onTap,
  });

  final String choice;
  bool isSelected = false;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(
          width: double.infinity,
          height: 49,
          decoration: BoxDecoration(
            gradient:
                isSelected
                    ? LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: AppColors.seconsarygaad,
                    )
                    : LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.white, Colors.white],
                    ),
            borderRadius: BorderRadius.circular(12),
          ),
          duration: Duration(milliseconds: 300),

          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                isSelected
                    ? SizedBox(
                      width: 19,
                      height: 19,
                      child: CircleAvatar(
                        backgroundColor: AppColors.maineViolet,
                        child: SvgPicture.asset(Assets.check_icon),
                      ),
                    )
                    : Icon(
                      Icons.radio_button_off,
                      color: AppColors.maineViolet,
                    ),
                SizedBox(width: 16),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    choice,
                    style: AppTextStyles.medium16.copyWith(
                      color: AppColors.maineViolet,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
