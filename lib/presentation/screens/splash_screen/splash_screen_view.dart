import 'package:flutter/material.dart';
import 'package:glasses_store_design/presentation/screens/splash_screen/splash_screen_content.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenContent(),
    );
  }
}
