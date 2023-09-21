import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:flutter/material.dart';

Widget buildTextPercentItem(String skill, double percent) {
  return ListTile(
    title: Text(
      skill,
      style: TextStyle(
        color: blue,
        fontSize: 18.sp,
        fontFamily: "Times",
      ),
    ),
    subtitle: LinearPercentIndicator(
      width: 290.w,
      animation: true,
      lineHeight: 10.h,
      animationDuration: 1000,
      percent: percent,
      barRadius: Radius.circular(10.sp),
      progressColor: blue,
    ),
  );
}
