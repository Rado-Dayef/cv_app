import 'package:cv/constants/app_constants.dart';
import 'package:get/get.dart';

class LanguagesController extends GetxController {
  final cardVisibility = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();
    cardVisibility.assignAll(
      List.generate(AppConstants().languagesCategories.length, (_) => true),
    );
  }
}
