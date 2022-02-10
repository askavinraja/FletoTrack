import 'package:get/get.dart';

import 'package:saas_web_app/app/modules/data_table/data_table_binding.dart';
import 'package:saas_web_app/app/modules/firebase/firebase_binding.dart';
import 'package:saas_web_app/app/modules/firebase/firebase_view.dart';
import 'package:saas_web_app/app/modules/home/bindings/home_binding.dart';
import 'package:saas_web_app/app/modules/home/views/home_view.dart';
import 'package:saas_web_app/app/modules/view_profile/view_profile_binding.dart';
import 'package:saas_web_app/app/modules/view_profile/view_profile_view.dart';

import '../modules/data_table/data_table_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FIREBASE,
      page: () => FirebaseView(),
      binding: FirebaseBinding(),
    ),
    GetPage(
      name: _Paths.DATA_TABLE,
      page: () => DataTable(),
      binding: DataTableBinding(),
    ),
    GetPage(
      name: _Paths.VIEW_PROFILE,
      page: () => ViewProfileView(),
      binding: ViewProfileBinding(),
    ),
  ];
}
