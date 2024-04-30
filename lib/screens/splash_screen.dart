import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:splash_view/source/presentation/presentation.dart';
import 'package:tap2024/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenStateState();
}

class SplashScreenStateState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashView(
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.white,
            Colors.blue
          ]),
        logo: Lottie.asset(
          'assets/logo_tecnm.json',
          height: MediaQuery.of(context).size.height*.5
          ),
        done: Done(const LoginScreen()),
        duration: const Duration(seconds: 6),
        bottomLoading: true,
        ),
    );
  }
}