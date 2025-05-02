import 'package:flutter/material.dart';
import '../Styles/app_colors.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: Container(
            width: 23,
            height: 6,
            decoration: ShapeDecoration(
              color:
                  currentIndex == index ? AppColors.green : AppColors.lightgrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        );
      }),
    );
  }
}
