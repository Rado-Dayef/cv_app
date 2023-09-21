import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/controllers/splash_controller.dart';
import 'package:cv/views/achievements_screen.dart';
import 'package:cv/views/credentials_screen.dart';
import 'package:cv/views/internships_screen.dart';
import 'package:cv/views/experiences_screen.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:cv/constants/app_constants.dart';
import 'package:cv/views/educations_screen.dart';
import 'package:cv/views/languages_screen.dart';
import 'package:cv/views/profile_screen.dart';
import 'package:cv/views/skills_screen.dart';
import 'package:cv/views/splash_screen.dart';
import 'package:cv/views/zoom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        Get.put(SplashController());
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "CV",
          theme: ThemeData(
            primarySwatch: defaultColor,
            splashColor: transparent,
          ),
          initialRoute: AppConstants().splashRout,
          getPages: [
            GetPage(
              name: AppConstants().splashRout,
              page: () => const SplashScreen(),
              transition: Transition.noTransition,
            ),
            GetPage(
              name: AppConstants().homeRout,
              page: () => const Zoom(),
            ),
            GetPage(
              name: AppConstants().profileRout,
              page: () => const ProfileScreen(),
              transition: Transition.noTransition,
            ),
            GetPage(
              name: AppConstants().educationsRout,
              page: () => const EducationsScreen(),
              transition: Transition.noTransition,
            ),
            GetPage(
              name: AppConstants().credentialsRout,
              page: () => const CredentialsScreen(),
              transition: Transition.noTransition,
            ),
            GetPage(
              name: AppConstants().achievementsRout,
              page: () => const AchievementsScreen(),
              transition: Transition.noTransition,
            ),
            GetPage(
              name: AppConstants().experiencesRout,
              page: () => const ExperiencesScreen(),
              transition: Transition.noTransition,
            ),
            GetPage(
              name: AppConstants().internshipsRout,
              page: () => const InternshipsScreen(),
              transition: Transition.noTransition,
            ),
            GetPage(
              name: AppConstants().languagesRout,
              page: () => const LanguagesScreen(),
              transition: Transition.noTransition,
            ),
            GetPage(
              name: AppConstants().skillsRout,
              page: () => const SkillsScreen(),
              transition: Transition.noTransition,
            ),
          ],
        );
      },
    );
  }
}
