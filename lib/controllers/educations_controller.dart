import 'package:cv/constants/app_constants.dart';
import 'package:get/get.dart';

class EducationsController extends GetxController {
  final cardVisibility = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();
    cardVisibility.assignAll(
      List.generate(AppConstants().educationsCategories.length, (_) => true),
    );
  }
}
