import 'dart:async';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  IO.Socket socket;

  bool isConnected = false;

  GoogleMapController googleMapController;

  Set<Marker> markers = {};
  Set<Polyline> polylines = {};

  String etaTime = "10";
  LatLng source;

  LatLng driver;

  Timer t;

  updateDriverMarker(var data) async {
    // TODO: Update the drivers marker function and ETA calculations here

    // source = LatLng(service.currentBooking.fromLocation[0],
    //     service.currentBooking.fromLocation[1]);
    var speed = double.parse(data['driverLoc']['speed'].toString()) * 3.6;

    markers.removeWhere((element) => element.markerId == MarkerId("driver-id"));
    driver = LatLng(
        double.tryParse(data["driverLoc"]['position'][0].toString()),
        double.tryParse(data["driverLoc"]['position'][1].toString()));
    markers.add(Marker(
        markerId: MarkerId("driver-id"),
        position: driver,
        icon: BitmapDescriptor.defaultMarker
        // icon: homeController.carDriverPin
        ));
    update();

    // markers.removeWhere((element) => element.markerId == MarkerId("pickup"));
    // markers.add(
    //   Marker(
    //     markerId: MarkerId("pickup"),
    //     position: source,
    //     // icon: homeController.myLocationPin
    //   ),
    // );

    // toast('''DISTANCE ${distance}\n SPEED $speed\n TIME ${etaTime}''');
    if (driver != null) {
      // List<LatLng> _polylineCoords = [source, driver];
      // polylines.clear();

      // polylines.add(Polyline(
      //   polylineId: PolylineId("line 1"),
      //   visible: true,
      //   width: 2,
      //   //latlng is List<LatLng>
      //   patterns: [PatternItem.dash(10), PatternItem.gap(10)],

      //   // points: MapsCurvedLines.getPointsOnCurve(
      //   //     source, driver), // Invoke lib to get curved line points
      //   // color: black,
      // ));
      // var bounds = await boundsFromLatLngList([source, driver]);

      // googleMapController
      //     .animateCamera(CameraUpdate.newLatLngBounds(bounds, 60));
      googleMapController.animateCamera(CameraUpdate.newLatLng(driver));
      // calculateETATime(source, driver, speed);
    } else {
      // googleMapController.animateCamera(CameraUpdate.newCameraPosition(
      //   CameraPosition(target: source, zoom: 12),
      // ));
      // toast("FAKE LOCATION USED BY DRIVER");
    }
  }

  // void connectAndListen() {
  //   var customerLoc = LatLng(0, 0);
  //   var destination = LatLng(0, 0);

  //   socket = IO.io('https://reciprocal.co.in/',
  //       IO.OptionBuilder().setTransports(['websocket']).build());

  //   socket.onConnect((_) {
  //     print('connect');

  //     isConnected = true;

  //     Fluttertoast.showToast(msg: "SOCKET CONNECTED");

  //     // socket.emit('msg', 'test');

  //     sendDataToSocket("62021a49b12f28ef116519e6");

  //     socket.on('message', (data) {
  //       log("MESSAGE RECIEVED $data");
  //     });

  //     socket.on('booking', (data) {
  //       if (socket != null && isConnected) {
  //         // toast("UPDATED DATA${data}");
  //         log("UPDATED DATA${data}");
  //         print("driver location" + data.toString());
  //         // isDriverAccepted = true;
  //         // update();
  //         if (data != null) {
  //           if (data['status'] != null) {
  //             // checkStatusForSocket(data);
  //           }
  //           if (data['driverLoc'] != null) {
  //             updateDriverMarker(data);
  //             // streamSocket.addResponse(data.toString());
  //             // }
  //             //update();
  //           }
  //         }
  //       }
  //     });
  //   });

  //   socket.onDisconnect((_) {
  //     isConnected = false;
  //     update();

  //     print('disconnect connected status $isConnected');
  //   });
  // }

  sendDataToSocket(id) {
    if (id != null) {
      socket.emit('sub', {
        "db": "Booking",
        "on": "change",
        "id": id,
        "by": "customer - kavin"
      });
      print("LISTENING ON $id");

      // toast("LISTENING ON ${service.currentBooking.id}");
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    // connectAndListen();
  }

  @override
  void onClose() {
    //animationController.dispose();
    // timer.cancel();
    if (socket != null) {
      socket.close();
      socket.dispose();

      Fluttertoast.showToast(msg: "SOCKET DISCONNECTED ${socket.connected}");
    }
  }

  void increment() => count.value++;
}

Future<String> getMapStyleFromAsset(
    {String path = "assets/maps/map_style.txt"}) async {
  var style = "";
  style = await rootBundle.loadString('assets/maps/map_style.txt');

  return style;
}

LatLngBounds boundsFromLatLngList(List<LatLng> list) {
  assert(list.isNotEmpty);
  double x0, x1, y0, y1;
  for (LatLng latLng in list) {
    if (x0 == null) {
      x0 = x1 = latLng.latitude;
      y0 = y1 = latLng.longitude;
    } else {
      if (latLng.latitude > x1) x1 = latLng.latitude;
      if (latLng.latitude < x0) x0 = latLng.latitude;
      if (latLng.longitude > y1) y1 = latLng.longitude;
      if (latLng.longitude < y0) y0 = latLng.longitude;
    }
  }
  return LatLngBounds(northeast: LatLng(x1, y1), southwest: LatLng(x0, y0));
}
