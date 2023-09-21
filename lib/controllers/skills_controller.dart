import 'package:cv/constants/app_constants.dart';
import 'package:get/get.dart';

class SkillsController extends GetxController {
  final cardVisibility = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();

    cardVisibility.assignAll(
      List.generate(AppConstants().skillsCategories.length, (_) => true),
    );
  }
}
