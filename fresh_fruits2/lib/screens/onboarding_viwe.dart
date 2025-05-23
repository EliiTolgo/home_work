import 'package:flutter/material.dart';
import 'package:fresh_fruits2/Model/onboarding_item_model.dart';
import 'package:fresh_fruits2/Styles/app_colors.dart';
import 'package:fresh_fruits2/Widget/dots_indicator.dart' show DotsIndicator;
import 'package:fresh_fruits2/constants/assets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Widget/app_button.dart';
import '../Widget/login_options.dart';
import '../Widget/onboarding_item.dart';

class OnboardingViwe extends StatefulWidget {
  OnboardingViwe({super.key});

  @override
  State<OnboardingViwe> createState() => _OnboardingViweState();
}

class _OnboardingViweState extends State<OnboardingViwe> {
  final _controller = PageController();
  bool isLastPage = false;

  int currentIndex = 0;

  final List<OnboardingItemModel> onboardingItem = [
    OnboardingItemModel(
      title: "Welcome to Fresh Fruits",
      subtitle:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",
      image: Assets.imagesOnboarding1,
    ),
    OnboardingItemModel(
      title: "We provide best quality Fruits to your family",
      subtitle:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed  ",
      image: Assets.imagesOnboarding2,
    ),
    OnboardingItemModel(
      title: "We provide best quality Fruits to your family",
      subtitle:
          "Lorem ipsum dolor sit amet, consectetur adipiscing  elit, sed do eiusmod tempor   ",
      image: Assets.imagesOnboarding2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: AppColors.secondary),
      ),
      body: Column(
        children: [
          Spacer(flex: 1),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() => isLastPage = index == 2);
                },
                itemCount: onboardingItem.length,
                controller: _controller,
                itemBuilder:
                    (context, index) =>
                        OnboardingItem(item: onboardingItem[index]),
              ),
            ),
          ),
          Center(child: DotsIndicator(currentIndex: currentIndex)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
            child:
                isLastPage
                    ? LoginOptions()
                    : AppButton(
                      isborder: false,
                      textcolor: Colors.black,
                      onPressed: () {
                        if (currentIndex < onboardingItem.length) {
                          currentIndex++;
                        } else if (currentIndex >= onboardingItem.length) {
                          currentIndex--;
                        }
                        _controller.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      },
                      text: 'Next',
                      color: AppColors.primary,
                    ),
          ),
        ],
      ),
    );
  }
}
