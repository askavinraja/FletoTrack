import 'package:get/get.dart';

import 'data_table_controller.dart';

class DataTableBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataTableController>(
      () => DataTableController(),
    );
  }
}
