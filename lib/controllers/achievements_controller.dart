import 'package:cv/constants/app_constants.dart';
import 'package:get/get.dart';

class AchievementsController extends GetxController {
  final cardVisibility = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();
    cardVisibility.assignAll(
      List.generate(AppConstants().achievementsCategories.length, (_) => true),
    );
  }
}
