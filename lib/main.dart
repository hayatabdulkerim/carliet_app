import 'package:carliet_app/features/auth/presentation/student_signin.dart';
import 'package:flutter/material.dart';
// import './features/home/presentation/home_screen.dart';
import 'features/auth/presentation/student_signup.dart';
// import 'features/auth/presentation/forgot_password.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CarLi_Et',
      home: const StudentSignup(),
    );
  }
}
