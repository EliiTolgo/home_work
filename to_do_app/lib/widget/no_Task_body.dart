import 'package:flutter/material.dart';

import '../style/app_text_style.dart';

class NoTaskBody extends StatelessWidget {
  const NoTaskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset('assets/tick-inside-circle.png'),
          ),
          SizedBox(height: 16),
          Text('No tasks yet ', style: AppTextStyle.medium118),
          SizedBox(height: 8),
          Text(
            'Add a task to get started',
            style: AppTextStyle.medium14.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
