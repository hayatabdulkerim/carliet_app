import 'package:flutter/material.dart';
import '../../../shared/buttons/light_btn.dart';

void onPressed() {
  print("Button pressed!");
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF0D3B46), Color(0xFF087E8B)],
          stops: [0.0, 1.0],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 120),
              Image.asset('assets/images/logo.png', height: 170),
              Text(
                'CarLi_Et',
                style: TextStyle(
                  fontSize: 44,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Career Link Ethiopia \nbridging Ethiopian talent and \nIndustry',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  // fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 64),
              LightBtn(text: 'Student Sign in', onPressed: onPressed),
              SizedBox(height: 12),
              LightBtn(text: 'Company Sign in', onPressed: onPressed),
              SizedBox(height: 28),
              Text(
                'Browse as Guest',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
