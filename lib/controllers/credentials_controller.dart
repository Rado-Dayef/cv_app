import 'package:cv/constants/app_constants.dart';
import 'package:get/get.dart';

class CredentialsController extends GetxController {
  final cardVisibility = <bool>[].obs;

  @override
  void onInit() {
    super.onInit();
    cardVisibility.assignAll(
      List.generate(AppConstants().credentialsCategories.length, (_) => true),
    );
  }
}
