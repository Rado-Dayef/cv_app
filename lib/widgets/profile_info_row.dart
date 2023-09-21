import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:flutter/material.dart';

Widget buildInfoRow({required IconData icon, required String label, required String text}) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 10.w),
    child: Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: blue,
              size: 24.sp,
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              label,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: blue,
                fontSize: 24.sp,
                fontFamily: "Times",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          text,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: blue,
            fontSize: 24.sp,
            fontFamily: "Times",
          ),
        ),
      ],
    ),
  );
}
