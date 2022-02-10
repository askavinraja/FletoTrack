import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:saas_web_app/app/routes/app_pages.dart';

import 'firebase_controller.dart';

class FirebaseView extends GetView<FirebaseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text('Firebase DB'),
        centerTitle: true,
        actions: [
          InkWell(
            child: Center(
                child: Container(
              padding: EdgeInsets.all(10),
              child: Text("DATATABLE"),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
            )),
            onTap: () {
              Get.toNamed(Routes.DATA_TABLE);
            },
          )
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Click To Add Random Number to DB',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
            color: Colors.amberAccent,
            onPressed: () async {
              controller.setRandomNumberToFirebase();
            },
            child: Text("RANDOM NUMBER"),
          ),
          Container(
            height: Get.height * 0.8,
            width: Get.width,
            child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection(controller.COLLECTION_NAME_RANDOM_NUMBERS)
                    .orderBy("time", descending: false)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.data != null) {
                    return Container(
                        height: Get.height * 0.8,
                        width: Get.width,
                        child: ListView.builder(
                            itemCount: snapshot.data.docs.length,
                            itemBuilder: (context, i) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "${i} -  ${snapshot.data.docs[i]['number']}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              );
                            }));
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else {
                    return Container();
                  }
                }),
          )
        ],
      ),
    );
  }
}
