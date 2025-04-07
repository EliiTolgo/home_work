import 'package:flutter/material.dart';

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
        child: Container(
          width: double.infinity,
          height: 49,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Icon(
                  isSelected
                      ? Icons.radio_button_checked
                      : Icons.radio_button_off,
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
