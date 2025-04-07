import 'package:flutter/material.dart';
import 'package:quiz_app/Styles/app_colors.dart';
import 'package:quiz_app/Styles/app_text_styles.dart';

import 'question_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/GRADINET.png'),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0A0E26), Color(0xff1B1E2A)],
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10),
                  child: Text(
                    'Good morning,',
                    style: AppTextStyles.medium16.copyWith(color: Colors.white),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 10),
                  child: Text(
                    'New topic is waiting',
                    style: AppTextStyles.medium24.copyWith(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 40,
                      top: 600,
                      right: 10,
                      left: 10,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        minimumSize: Size(double.infinity, 47),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuestionView(),
                          ),
                        );
                      },
                      child: Text(
                        'Start Quiz',
                        style: AppTextStyles.medium18.copyWith(
                          color: AppColors.maineViolet,
                        ),
                      ),
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
