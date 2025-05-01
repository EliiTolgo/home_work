import 'package:flutter/material.dart';
import 'package:fresh_fruits2/Styles/app_colors.dart';
import 'package:fresh_fruits2/Styles/app_text_styles.dart';
import 'package:fresh_fruits2/Widget/app_button.dart';

import '../Widget/condition.dart';
import '../Widget/custom_text_field.dart';
import '../constants/assets.dart';

class CreateAnAccount extends StatelessWidget {
  const CreateAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(top: 0, child: Image.asset(Assets.vegetable)),
          Positioned(top: 0, child: Image.asset(Assets.overlay)),
          Positioned(
            top: 52,
            left: 36,
            child: Icon(Icons.arrow_back, size: 30, color: Colors.white),
          ),
          Positioned(
            top: 288,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: ShapeDecoration(
                color: const Color(0xFFFAFEFC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 28, left: 28, right: 28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Create your account',
                          style: AppTextStyles.semiBold20,
                        ),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.close,
                            size: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 49),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 39,
                              child: CustomTextField(hintText: 'First name '),
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: SizedBox(
                              height: 39,
                              child: CustomTextField(hintText: 'Last name'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: CustomTextField(hintText: 'Enter Email'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: CustomTextField(
                        hintText: 'Enter pass',
                        ispass: true,
                      ),
                    ),
                    Condition(),
                    Padding(
                      padding: const EdgeInsets.only(top: 41),
                      child: AppButton(
                        color: AppColors.primary,
                        text: 'Create an account',
                        textcolor: Colors.black,
                        isborder: false,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
