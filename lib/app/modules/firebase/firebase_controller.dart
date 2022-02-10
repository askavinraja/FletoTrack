import 'dart:developer';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FirebaseController extends GetxController {
  //TODO: Implement FirebaseController

  final count = 0.obs;

  final String COLLECTION_NAME_RANDOM_NUMBERS = "random";

  setRandomNumberToFirebase() {
    FirebaseFirestore.instance.collection(COLLECTION_NAME_RANDOM_NUMBERS).add({
      "number": "${Random().nextInt(123)}",
      "time": DateTime.now()
    }).then((value) => print("added success "));
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
