import 'package:flutter/material.dart';
import '../../../shared/input/input_field.dart';
import '../../../shared/buttons/filled_btn.dart';
import '../../../shared/buttons/outlined_btn.dart';

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
            SigninText(),
            SizedBox(height: screenHeight * 0.03),
            InputField(
              label: 'Email/username',
              hintText: 'Enter your Email / username',
            ),
            SizedBox(height: 15),
            InputField(label: 'Password', hintText: 'Enter password'),
            SizedBox(height: 10),
            ForgotText(),
            SizedBox(height: 40),
            FilledBtn(text: 'Login', onPressed: _onLoginPressed),
            SizedBox(height: 10),
            OutlinedBtn(text: 'Go Back', onPressed: _onGoBackPressed),
            SizedBox(height: 30),
            CreatAccountText(),
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
      child: Column(children: [Logo(), SizedBox(height: 1), AppTitle()]),
    );
  }
}

//_____________________________________________________________________________

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      height: 100,
      color: Color(0xFF087E8B),
    );
  }
}

//_____________________________________________________________________________

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      // use RichText instead of normal Text for a text where its different parts have different styles like different colors as in this case
      textAlign: TextAlign.center,
      text: const TextSpan(
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: 'CarLi_Et ',
            style: TextStyle(
              color: Color.fromARGB(255, 186, 178, 178), // grey
            ),
          ),
          TextSpan(
            text: 'Internship \nManagment',
            style: TextStyle(
              color: Color.fromARGB(255, 50, 50, 50), // black
            ),
          ),
        ],
      ),
    );
  }
}

//_____________________________________________________________

class SigninText extends StatelessWidget {
  const SigninText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sign into your account',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Color(0xFF087E8B),
      ),
    );
  }
}

//___________________________________________________________________

class ForgotText extends StatelessWidget {
  const ForgotText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double
          .infinity, //Make this widget stretch as wide as possible inside its parent
      padding: const EdgeInsets.only(
        right: 16,
      ), // add padding on the right so that the text does not stick to the edge of the screen
      child: Text(
        'Forgot password?',
        textAlign: TextAlign.end,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xFF087E8B),
        ),
      ),
    );
  }
}

//_______________________________________________________________

class CreatAccountText extends StatelessWidget {
  const CreatAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        children: [
          TextSpan(
            text: 'If you don\'t have an account ',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          TextSpan(
            text: 'Create Account',
            style: TextStyle(color: Color(0xFF087E8B)),
          ),
        ],
      ),
    );
  }
}
