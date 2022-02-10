import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'view_profile_controller.dart';

class ViewProfileView extends GetView<ViewProfileController> {
  Widget _buildSoftwareProficiency(dynamic value) {
    Widget getLinearProgressBar(int progressValue) {
      return SizedBox(
        width: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                width: 150,
                child: LinearProgressIndicator(
                  value: progressValue / 100,
                  valueColor: AlwaysStoppedAnimation<Color>(
                      progressValue < 50 ? Colors.red : Colors.green),
                  backgroundColor:
                      progressValue < 50 ? Colors.red[100] : Colors.green[100],
                )),
            SizedBox(
              width: 20,
            ),
            Text(' ' + (progressValue.toString() + '%')),
          ],
        ),
      );
    }

    return getLinearProgressBar(int.parse(value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Profile View  - ${controller.employee.employeeName ?? "".toLowerCase()}'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text("Overall Score")),
          Center(
              child: _buildSoftwareProficiency(
                  controller.employee.softwareProficiency)),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Name : ${controller.employee.employeeName}',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Position : ${controller.employee.designation}',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Location : ${controller.employee.location}',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
