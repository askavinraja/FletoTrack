import 'package:get/get.dart';
import 'package:saas_web_app/app/modules/data_table/components/data_source_employee.dart';

class ViewProfileController extends GetxController {
  //TODO: Implement ViewProfileController

  Employee employee;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) employee = Get.arguments['employee'];
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
