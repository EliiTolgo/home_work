import 'package:flutter/material.dart';

import '../Styles/app_colors.dart';
import '../Styles/app_text_styles.dart';

class Condition extends StatelessWidget {
  const Condition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 43, top: 10),
          child: Text(
            'By tapping Sign up you accept all ',
            style: AppTextStyles.regular14,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 90, top: 3),
          child: Row(
            children: [
              Text(
                'terms ',
                style: AppTextStyles.semibold15.copyWith(
                  color: AppColors.primary,
                ),
              ),
              Text('and ', style: AppTextStyles.regular14),
              Text(
                'condition',
                style: AppTextStyles.semibold15.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
