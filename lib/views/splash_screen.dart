import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Lottie.asset(
          AppConstants().splash,
          width: 300.sp,
          height: 300.sp,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
