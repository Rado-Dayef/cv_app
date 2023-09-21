import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:cv/widgets/project_card.dart';
import 'package:cv/views/zoom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10.sp),
          ),
        ),
        leading: InkWell(
          onTap: () {
            defaultController.toggle!();
          },
          child: Icon(
            Icons.menu,
            color: white,
            size: 24.sp,
          ),
        ),
        centerTitle: true,
        title: Text(
          AppConstants().projectsName,
          style: TextStyle(
            color: white,
            fontSize: 24.sp,
            fontFamily: AppConstants().timesFontFamily,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            buildProjectCard(
              title: AppConstants().howAmIName,
              description: AppConstants().howAmIDescription,
            ),
            buildProjectCard(
              title: AppConstants().movieNightName,
              description: AppConstants().movieNightDescription,
            ),
            buildProjectCard(
              title: AppConstants().spanName,
              description: AppConstants().spanDescription,
            ),
            buildProjectCard(
              title: AppConstants().mosqueName,
              description: AppConstants().mosqueDescription,
            ),
            buildProjectCard(
              title: AppConstants().eduName,
              description: AppConstants().eduDescription,
            ),
            buildProjectCard(
              title: AppConstants().ramadanMubarakName,
              description: AppConstants().ramadanMubarakDescription,
            ),
          ],
        ),
      ),
    );
  }
}