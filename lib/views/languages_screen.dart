import 'package:cv/widgets/Text_percent_category_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/controllers/languages_controller.dart';
import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguagesScreen extends StatelessWidget {
  const LanguagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LanguagesController languagesController = Get.put(
      LanguagesController(),
      permanent: true,
    );
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.sp),
            bottomRight: Radius.circular(10.sp),
          ),
        ),
        centerTitle: true,
        title: Text(
          AppConstants().languagesName,
          style: TextStyle(
            color: white,
            fontSize: 30.sp,
            fontFamily: AppConstants().timesFontFamily,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: List.generate(
            AppConstants().languagesCategories.length,
            (index) {
              return Obx(
                () => buildTextPercentCategoryCard(
                  index,
                  AppConstants().languagesCategories[index],
                  AppConstants().languagesData[AppConstants().languagesCategories[index]]!,
                  languagesController.cardVisibility,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
