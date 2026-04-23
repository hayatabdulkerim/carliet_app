import 'package:carliet_app/shared/text/split_action_text.dart';
import 'package:flutter/material.dart';
import '../../../shared/input/input_field.dart';
import '../../../shared/buttons/filled_btn.dart';
import '../../../shared/buttons/outlined_btn.dart';
import '../../../shared/logo/carliet_logo.dart';
import '../../../shared/text/app_title.dart';
import '../../../shared/text/auth_subtitel.dart';
import '../../../shared/text/action_text.dart';

class StudentSignin extends StatelessWidget {
  const StudentSignin({super.key});

  void _onLoginPressed() {
    print("Student Sign In");
  }

  void _onGoBackPressed() {
    print("Student Sign In");
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
            AuthSubtitle(text: 'Sign into your account'),
            SizedBox(height: screenHeight * 0.03),
            InputField(
              label: 'Email/username',
              hintText: 'Enter your Email / username',
            ),
            SizedBox(height: 15),
            InputField(label: 'Password', hintText: 'Enter password'),
            SizedBox(height: 10),
            ActionText(text: 'Forgot password?'),
            SizedBox(height: 40),
            FilledBtn(text: 'Login', onPressed: _onLoginPressed),
            SizedBox(height: 10),
            OutlinedBtn(text: 'Go Back', onPressed: _onGoBackPressed),
            SizedBox(height: 30),
            SplitActionText(
              text: "If you don't have an account ",
              actionText: "Create Account",
            ),
          ],
        ),
      ),
    );
  }
}

//____________________________________________________________________________

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(children: [Logo(), SizedBox(height: 1), AppTitle(fontSize: 22, textAlign: TextAlign.center )]),
    );
  }
}

//______________________________________________________________

