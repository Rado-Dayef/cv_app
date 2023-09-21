import 'package:cv/controllers/achievements_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/widgets/text_category_card.dart';
import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AchievementsController achievementsController = Get.put(
      AchievementsController(),
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
          AppConstants().achievementsName,
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
            AppConstants().achievementsCategories.length,
            (index) {
              return Obx(
                () => buildTextCategoryCard(
                  index,
                  AppConstants().achievementsCategories[index],
                  AppConstants().achievementsData[AppConstants().achievementsCategories[index]]!,
                  achievementsController.cardVisibility,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
