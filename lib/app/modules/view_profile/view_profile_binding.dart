import 'package:get/get.dart';

import 'view_profile_controller.dart';

class ViewProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewProfileController>(
      () => ViewProfileController(),
    );
  }
}
