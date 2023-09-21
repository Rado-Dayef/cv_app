import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:cv/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:cv/widgets/menu.dart';

final ZoomDrawerController defaultController = ZoomDrawerController();

class Zoom extends StatelessWidget {
  const Zoom({super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: defaultController,
      borderRadius: 20.sp,
      shadowLayer1Color: layer1Color,
      shadowLayer2Color: layer2Color,
      style: DrawerStyle.defaultStyle,
      showShadow: true,
      angle: -12,
      openCurve: Curves.fastEaseInToSlowEaseOut,
      slideWidth: 300.w,
      duration: const Duration(milliseconds: 250),
      menuBackgroundColor: white,
      mainScreen: const HomeScreen(),
      menuScreen: buildMenu(context),
    );
  }
}