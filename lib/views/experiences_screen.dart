import 'package:cv/widgets/Text_percent_category_card.dart';
import 'package:cv/controllers/experiences_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExperiencesScreen extends StatelessWidget {
  const ExperiencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ExperiencesController experiencesController = Get.put(
      ExperiencesController(),
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
          AppConstants().experiencesName,
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
            AppConstants().experiencesCategories.length,
            (index) {
              return Obx(
                () => buildTextPercentCategoryCard(
                  index,
                  AppConstants().experiencesCategories[index],
                  AppConstants().experiencesData[AppConstants().experiencesCategories[index]]!,
                  experiencesController.cardVisibility,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
