import 'package:flutter/material.dart';
import 'package:glasses_store_design/presentation/screens/splash_screen/splash_screen_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(),
          debugShowCheckedModeBanner: false,
          home: const SplashScreenView(),
        );
      },
    );
  }
}