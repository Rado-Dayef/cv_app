import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:cv/widgets/divider_widget.dart';
import 'package:cv/views/zoom_drawer.dart';
import 'package:cv/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildMenu(BuildContext context) {
  void navigateTo(String route) {
    defaultController.close?.call()?.then((value) => Get.toNamed(route));
  }

  return Scaffold(
    backgroundColor: white,
    body: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 150.h),
            CircleAvatar(
              backgroundColor: blue,
              radius: 50.sp,
              backgroundImage: AssetImage(AppConstants().myImage),
            ),
            dividerWidget(150.w),
            buildMenuItem(
              Icons.person_outline,
              AppConstants().profileName,
              AppConstants().profileRout,
              context,
              navigateTo,
            ),
            SizedBox(
              height: 10.h,
            ),
            buildMenuItem(
              Icons.school_outlined,
              AppConstants().educationsName,
              AppConstants().educationsRout,
              context,
              navigateTo,
            ),
            SizedBox(
              height: 10.h,
            ),
            buildMenuItem(
              Icons.workspace_premium_outlined,
              AppConstants().credentialsName,
              AppConstants().credentialsRout,
              context,
              navigateTo,
            ),
            SizedBox(
              height: 10.h,
            ),
            buildMenuItem(
              Icons.card_membership_rounded,
              AppConstants().internshipsName,
              AppConstants().internshipsRout,
              context,
              navigateTo,
            ),
            SizedBox(
              height: 10.h,
            ),
            buildMenuItem(
              Icons.task_alt_outlined,
              AppConstants().achievementsName,
              AppConstants().achievementsRout,
              context,
              navigateTo,
            ),
            SizedBox(
              height: 10.h,
            ),
            buildMenuItem(
              Icons.work_history_outlined,
              AppConstants().experiencesName,
              AppConstants().experiencesRout,
              context,
              navigateTo,
            ),
            SizedBox(
              height: 10.h,
            ),
            buildMenuItem(
              Icons.translate,
              AppConstants().languagesName,
              AppConstants().languagesRout,
              context,
              navigateTo,
            ),
            SizedBox(
              height: 10.h,
            ),
            buildMenuItem(
              Icons.star_border_rounded,
              AppConstants().skillsName,
              AppConstants().skillsRout,
              context,
              navigateTo,
            ),
          ],
        ),
      ),
    ),
  );
}
