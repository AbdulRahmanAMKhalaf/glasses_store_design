import 'package:flutter/material.dart';
import 'package:glasses_store_design/presentation/screens/home_screen/home_screen_content.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: HomeScreenContent(),
    );
  }
}
