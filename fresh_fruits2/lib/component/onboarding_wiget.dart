import 'package:flutter/widgets.dart';

class OnboardingWidget extends StatelessWidget {
  OnboardingWidget({
    super.key,
    required this.titel,
    required this.disDescription,
    this.subtitel,
    required this.image,
  });
  final String image;
  final String titel;
  String? subtitel;
  final String disDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 70, left: 24, right: 24),
          child: Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 84, left: 24, right: 24),
          child: Text(
            titel,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        subtitel == null
            ? SizedBox(height: 24)
            : Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Text(
                subtitel!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 29, left: 28),
          child: Text(
            disDescription,
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
