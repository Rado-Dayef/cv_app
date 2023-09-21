import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:flutter/material.dart';

Widget buildTextItem(String text) {
  return ListTile(
    title: Text(
      text,
      style: TextStyle(
        color: blue,
        fontSize: 18.sp,
        fontFamily: "Times",
      ),
    ),
  );
}
