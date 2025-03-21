import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../component/botton.dart';
import '../component/login_botton.dart';
import '../component/onboarding_wiget.dart';

class Onboarding extends StatelessWidget {
  Onboarding({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          PageView(
            controller: _controller,
            children: [
              Column(
                children: [
                  OnboardingWidget(
                    image: 'assets/image 1.png',
                    titel: 'Welcome to Fresh Fruits',
                    subtitel: 'Grocery application',
                    disDescription:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 89,
                      left: 28,
                      right: 28,
                    ),
                    child: BottonWiget(
                      text: 'Next',
                      color: Color(0xffFEC54B),
                      textColor: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  OnboardingWidget(
                    image: 'assets/image 6.png',
                    titel: 'We provide best quality Fruits to your family',
                    disDescription:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed ',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 89,
                      left: 28,
                      right: 28,
                    ),
                    child: BottonWiget(
                      text: 'Next',
                      color: Color(0xffFEC54B),
                      textColor: Colors.black,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  OnboardingWidget(
                    titel: 'Fast and responsibily delivery by our courir ',
                    disDescription:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                    image: 'assets/image 2.png',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 41,
                      left: 28,
                      right: 28,
                    ),
                    child: BottonWiget(
                      text: 'Create an account',
                      color: Colors.black,
                      textColor: Colors.white,
                    ),
                  ),
                  LoginBotton(),
                ],
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: 30,
            child: SmoothPageIndicator(controller: _controller, count: 4),
          ),
        ],
      ),
    );
  }
}
