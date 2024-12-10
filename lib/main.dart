import 'package:flutter/material.dart';
import 'package:project_1/screens/add_expense.dart';
import 'package:project_1/screens/connect_wallet.dart';
import './screens/splash_screen.dart';
import './screens/onboarding_screen.dart';
import './screens/login_screen.dart';
import './screens/signup_screen.dart';
import './screens/home_screen.dart';
import './screens/wallet_screen.dart';
import './screens/chart_screen.dart';
import './screens/profile_screen.dart';
import './screens/main_navigation_screen.dart'; // Add this

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/mainnavigation': (context) => const MainNavigationScreen(),
        '/homescreen': (context) => const HomeScreen(),
        '/walletscreen': (context) => const WalletScreen(),
        '/chartscreen': (context) => const ChartScreen(),
        '/profilescreen': (context) => const ProfileScreen(),
        '/addexpensescreen': (context) =>  AddExpense(),
        '/ConnectWalletScreen': (context) => ConnectWallet(),


      },
    );
  }
}
