import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });

    Color splashBackgroundColor = const Color(0xFF57A29F);
    return Scaffold(
      backgroundColor: splashBackgroundColor,
      body: const Center(
        child: Text(
          'Сайн уу?',
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
    );
  }
}
