import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:flutter/material.dart';

Widget dividerWidget(width) {
  return SizedBox(
    height: 20.h,
    child: Center(
      child: Container(
        height: 1.h,
        width: width,
        color: blue,
      ),
    ),
  );
}