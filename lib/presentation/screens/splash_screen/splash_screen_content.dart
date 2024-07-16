import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreenContent extends StatefulWidget {
  const SplashScreenContent({super.key});

  @override
  State<SplashScreenContent> createState() => _SplashScreenContentState();
}

class _SplashScreenContentState extends State<SplashScreenContent> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
            colors:[
              Colors.grey.shade200,
              Colors.grey.shade200,
              Colors.pinkAccent,
            ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'A&A\n',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 8.pc,
                    color: Colors.blue.shade600,
                  )
                ),
                TextSpan(
                    text: 'glasses shop',
                    style: TextStyle(
                      height: -0.1.h,
                      fontWeight: FontWeight.w600,
                      fontSize:15.px,
                      color: Colors.black.withOpacity(0.6),
                    )
                ),
              ],
            ),
          ).animate().scale(duration: 1000.ms),
          SizedBox(height: 30.h,),
          Lottie.asset('assets/lottie/loading.json',width: 20.w,height: 10.h),
          SizedBox(height:5.h,),
        ],
      ),
    );
  }
}
