import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Styles/app_colors.dart';
import '../Styles/app_text_styles.dart';

class QuestionHeder extends StatelessWidget {
  const QuestionHeder({
    super.key,
    required this.questionIndex,
    required this.imege,
  });

  final int questionIndex;
  final String imege;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 99,
      height: 34,
      decoration: BoxDecoration(
        color: AppColors.secondaryViolet,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: AppColors.outlineViolet, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SvgPicture.asset(imege),
            SizedBox(width: 8),
            Text(
              'Question ${questionIndex + 1}',
              style: AppTextStyles.medium12.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
