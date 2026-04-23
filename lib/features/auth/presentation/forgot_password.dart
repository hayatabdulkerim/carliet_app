import 'package:flutter/material.dart';

import '../../../shared/logo/carliet_logo.dart';
import '../../../shared/text/app_title.dart';
import '../../../shared/buttons/filled_btn.dart';
import '../../../shared/text/auth_subtitel.dart';
import '../../../shared/text/action_text.dart';
import '../../../shared/input/input_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  void _onResetPressed() {
    print("Reset email");
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: screenHeight * 0.09),
            Header(),
            SizedBox(height: screenHeight * 0.04),
            AuthSubtitle(text: 'Reset your password'),
            SizedBox(height: screenHeight * 0.03),
            InputField(
              label: 'Email/username',
              hintText: 'Enter your Email / username',
            ),
            SizedBox(height: 10),
            ActionText(text: 'Login with password'),
            SizedBox(height: 40),
            FilledBtn(text: 'Reset', onPressed: _onResetPressed),
          ],
        ),
      ),
    );
  }
}


//_____________________________________________

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Logo(),
          SizedBox(height: 1),
          AppTitle(fontSize: 22, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
