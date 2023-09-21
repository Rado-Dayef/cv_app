import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/widgets/text_percent_item.dart';
import 'package:flutter/material.dart';

List<Widget> buildTextPercentWidgets(List<Map<String, dynamic>> skillsLanguages,) {
  List<Widget> skillsLanguagesWidgets = [];
  for (var skillLanguagesData in skillsLanguages) {
    skillsLanguagesWidgets.addAll(
      [
        buildTextPercentItem(
          skillLanguagesData["skill"],
          skillLanguagesData["percent"],
        ),
        SizedBox(
          height: 15.h,
        ),
      ],
    );
  }
  return skillsLanguagesWidgets;
}
