import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/widgets/text_item.dart';
import 'package:flutter/material.dart';

List<Widget> buildTextWidgets(List<Map<String, dynamic>> educationsAchievements) {
  List<Widget> educationsAchievementsWidgets = [];
  for (var educationsAchievementsData in educationsAchievements) {
    educationsAchievementsWidgets.addAll(
      [
        buildTextItem(
          educationsAchievementsData["text"],
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
  return educationsAchievementsWidgets;
}
