import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:cv/widgets/divider_widget.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';

Widget buildProjectCard({
  required String title,
  required String description,
}) {
  return Column(
    children: [
      SizedBox(
        width: double.infinity,
        child: Card(
          margin: EdgeInsets.all(16.sp),
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.sp),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: blue,
                    fontSize: 20.sp,
                    fontFamily: AppConstants().timesFontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                ReadMoreText(
                  description,
                  trimLines: 3,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: AppConstants().showMore,
                  trimExpandedText: AppConstants().showLess,
                  moreStyle: TextStyle(
                    color: grey,
                    fontSize: 16.sp,
                    fontFamily: AppConstants().timesFontFamily,
                  ),
                  lessStyle: TextStyle(
                    color: grey,
                    fontSize: 16.sp,
                    fontFamily: AppConstants().timesFontFamily,
                  ),
                  style: TextStyle(
                    color: blue,
                    fontSize: 18.sp,
                    fontFamily: AppConstants().timesFontFamily,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      dividerWidget(50.w),
    ],
  );
}
