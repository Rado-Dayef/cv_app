import 'package:cv/constants/app_constants.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(
      const Duration(seconds: 4),
          () {
        Get.offNamed(AppConstants().homeRout);
      },
    );
  }
}