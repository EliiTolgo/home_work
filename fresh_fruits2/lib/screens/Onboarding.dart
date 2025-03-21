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
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                OnboardingWidget(
                  image: 'assets/image 1.png',
                  titel: 'Welcome to Fresh Fruits',
                  subtitel: 'Grocery application',
                  disDescription:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                ),
                OnboardingWidget(
                  image: 'assets/image 6.png',
                  titel: 'We provide best quality Fruits to your family',
                  disDescription:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed ',
                ),
                OnboardingWidget(
                  titel: 'Fast and responsibily delivery by our courir ',
                  disDescription:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                  image: 'assets/image 2.png',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: SizedBox(
              width: double.infinity,
              height: 30,
              child: Center(
                child: SmoothPageIndicator(
                  controller: _controller,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Color(0xff12B76A),
                    dotColor: Color(0xffF2F2F2),
                  ),
                  count: 3,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60, left: 24, right: 24),
            child: BottonWiget(
              text: 'Next',
              color: Color(0xffFEC54B),
              textColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
