import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:flutter/material.dart';

Widget buildMenuItem(IconData icon, String title, String route,
    BuildContext context, Function onTap) {
  return GestureDetector(
    onTap: () => onTap(route),
    child: Container(
      height: 40.h,
      width: 200.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: blue,
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: white,
          size: 24.sp,
        ),
        titleAlignment: ListTileTitleAlignment.center,
        title: Text(
          title,
          maxLines: 1,
          style: TextStyle(
            color: white,
            fontSize: 24.sp,
            fontFamily: AppConstants().timesFontFamily,
          ),
        ),
      ),
    ),
  );
}
