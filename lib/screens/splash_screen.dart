import 'dart:async';

import 'package:flutter/material.dart';
import 'package:personnel_management/resources/resources.dart';
import 'package:personnel_management/resources/themes/app_colors.dart';
import 'package:personnel_management/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            end: Alignment.centerRight,
            // begin: Alignment.centerLeft,
            colors: AppColors.gradientBGColor,
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Image.asset(
            AppPngs.splashImage,
            width: 200,
            height: 150,
          ),
        ),
      ),
    );
  }
}
