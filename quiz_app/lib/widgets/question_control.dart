import 'package:flutter/material.dart';
import '../Styles/app_colors.dart';
import '../Styles/app_text_styles.dart';

class QuestionControl extends StatelessWidget {
  const QuestionControl({super.key, required this.back, required this.next});
  final VoidCallback back;
  final VoidCallback next;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 55, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: back,
            child: Container(
              width: 104,
              height: 39,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.secondaryViolet, width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios, size: 15, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'back',
                    style: AppTextStyles.medium16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: next,
            child: Container(
              width: 104,
              height: 39,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.secondaryViolet,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Next',
                    style: AppTextStyles.medium16.copyWith(color: Colors.white),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward_ios, size: 15, color: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
