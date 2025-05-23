import 'package:flutter/material.dart';

import '../screens/create_an_account.dart';
import 'app_button.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          color: Colors.black,
          text: 'Create an account',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateAnAccount()),
            );
          },
          textcolor: Colors.white,
          isborder: false,
        ),
        SizedBox(height: 10),
        AppButton(
          color: Colors.white,
          text: 'Login',
          onPressed: () {},
          textcolor: Colors.black,
          isborder: true,
        ),
      ],
    );
  }
}
