import 'package:cv/controllers/internships_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/widgets/text_category_card.dart';
import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InternshipsScreen extends StatelessWidget {
  const InternshipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final InternshipsController internshipsController = Get.put(
      InternshipsController(),
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
          AppConstants().internshipsName,
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
            AppConstants().internshipsCategories.length,
            (index) {
              return Obx(
                () => buildTextCategoryCard(
                  index,
                  AppConstants().internshipsCategories[index],
                  AppConstants().internshipsData[AppConstants().internshipsCategories[index]]!,
                  internshipsController.cardVisibility,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
