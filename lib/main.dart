import 'package:flutter/material.dart';
import 'features/company/presentation/company_profile_setup.dart';





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
      home: const CompanyProfileSetup(),
    );
  }
}
