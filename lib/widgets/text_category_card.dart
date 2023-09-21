import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:cv/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildTextCategoryCard(int index, String categories, List<Map<String, dynamic>> data, RxList<bool> cardVisibility) {
  final category = categories;
  final educationsAchievements = data;

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
    child: Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.sp),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              cardVisibility[index] = !cardVisibility[index];
            },
            child: Container(
              padding: EdgeInsets.all(12.sp),
              decoration: BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    category,
                    style: TextStyle(
                      color: white,
                      fontSize: 20.sp,
                      fontFamily: "Times",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    cardVisibility[index]
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_up,
                    color: white,
                  ),
                ],
              ),
            ),
          ),
          if (cardVisibility[index])
            SizedBox(
              height: 10.h,
            ),
          if (cardVisibility[index])
            Column(
              children:
                  buildTextWidgets(educationsAchievements),
            ),
        ],
      ),
    ),
  );
}
