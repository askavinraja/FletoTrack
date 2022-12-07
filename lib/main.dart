import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

var boldTextStyle =
    GoogleFonts.montserrat(fontWeight: FontWeight.bold, color: Colors.white);

void main() {
  runApp(
    GetMaterialApp(
      title: "Tracking",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
