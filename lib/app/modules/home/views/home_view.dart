import 'dart:async';
import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_animarker/flutter_map_marker_animation.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_curved_line/maps_curved_line.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:puppeteer/puppeteer.dart';
import 'dart:io' as ioo;

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Set<Marker> markers = {};
  Set<Polyline> polylines = {};
  LatLng driver;

  IO.Socket socket;

  bool isConnected = false;

  GoogleMapController googleMapController;

  LatLng source;

  LatLng snsctLatLng = LatLng(11.102570793631932, 77.02585646068603);
  LatLngBounds bounds;

  updateDriverMarker(var data) async {
    // TODO: Update the drivers marker function and ETA calculations here

    // source = LatLng(service.currentBooking.fromLocation[0],
    //     service.currentBooking.fromLocation[1]);
    source = LatLng(11.160877941561331, 77.08187414300592);

    setState(() {
      isLoading = false;
      markers
          .removeWhere((element) => element.markerId == MarkerId("driver-id"));
      // rippleMarkers.clear();
    });
    Future.delayed(
        Duration(
          milliseconds: 50,
        ), () async {
      driver = LatLng(
          double.tryParse(data["driverLoc"]['position'][0].toString()),
          double.tryParse(data["driverLoc"]['position'][1].toString()));

      if (source != null && driver != null)
        bounds = await boundsFromLatLngList([source, driver]);
      log(bounds.toString());
      setState(() {
        var speed = double.parse(data['driverLoc']['speed'].toString()) * 3.6;
        polylines.clear();

        markers.removeWhere(
            (element) => element.markerId == MarkerId("driver-id"));

        // var marker = RippleMarker(
        //   markerId: MarkerId("driver-id"),
        //   position: driver,
        //   ripple: true,
        // );
        if (polylines.length == 0)
          polylines.add(Polyline(
            polylineId: PolylineId("line 1"),
            visible: true,
            width: 2,
            //latlng is List<LatLng>
            patterns: [PatternItem.dash(10), PatternItem.gap(10)],

            points: MapsCurvedLines.getPointsOnCurve(
                source, driver), // Invoke lib to get curved line points
            color: Colors.black,
          ));
        // rippleMarkers[MarkerId("driver-ids")] = marker;

        markers.add(Marker(
            markerId: MarkerId("pickup"),
            position: source,
            icon: BitmapDescriptor.defaultMarker));
        markers.add(Marker(
            markerId: MarkerId("driver-id"),
            position: driver,
            // icon: BitmapDescriptor.defaultMarker
            icon: carDriverPin));
      });
    });

    // toast('''DISTANCE ${distance}\n SPEED $speed\n TIME ${etaTime}''');

    if (googleMapController != null)
      // googleMapController.animateCamera(CameraUpdate.newLatLngZoom(driver, 13));
      googleMapController
          .animateCamera(CameraUpdate.newLatLngBounds(bounds, 70));
    // calculateETATime(source, driver, speed);
  }

  bool isLoading = true;

  void connectAndListen(String id) {
    var customerLoc = LatLng(0, 0);
    var destination = LatLng(0, 0);

    socket = IO.io('https://reciprocal.co.in/',
        IO.OptionBuilder().setTransports(['websocket']).build());

    socket.onConnect((_) {
      print('connect');

      isConnected = true;

      Fluttertoast.showToast(msg: "SOCKET CONNECTED");

      // socket.emit('msg', 'test');

      sendDataToSocket(id);

      socket.on('message', (data) {
        log("MESSAGE RECIEVED $data");
      });

      socket.on('booking', (data) {
        if (socket != null && isConnected) {
          // toast("UPDATED DATA${data}");
          log("UPDATED DATA${data}");
          print("driver location" + data.toString());
          // isDriverAccepted = true;
          // update();
          if (data != null) {
            if (data['status'] != null) {
              // checkStatusForSocket(data);
            }
            if (data['driverLoc'] != null) {
              updateDriverMarker(data);
              // streamSocket.addResponse(data.toString());
              // }
              //update();
            }
          }
        }
      });
    });

    socket.onDisconnect((_) {
      isConnected = false;
      Fluttertoast.showToast(msg: "DISCONNECTED");
      print('disconnect connected status $isConnected');
    });
  }

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

  var url = window.location.href;

  var bookingId;

  @override
  void initState() {
    super.initState();
    var uri = Uri.dataFromString(url);
    bookingId = uri.queryParameters['id'];
    if (isConnected == false) connectAndListen(bookingId);
    setPin();
    Fluttertoast.showToast(
      msg: "BOOKING : ${bookingId == null ? "NO TRIPS FOUND" : bookingId}",
    );
    Future.delayed(Duration(seconds: 15), () {
      if (isLoading == true) {
        setState(() {
          bookingId = null;
        });
      }
    });

    // resetMarkerEveryFiveSec();
  }

  BitmapDescriptor carDriverPin;
  setPin() async {
    //! TODO: ADD NEW MARKER PIN FOR ALL TYPES
    // [ ] 1. DRVIER MARKERS
    // [x] 2. DESTINATION PIN

    await BitmapDescriptor.fromAssetImage(
            ImageConfiguration(devicePixelRatio: 0.5),
            'assets/maps/driverCarMarker.png')
        .then((onValue) {
      setState(() {
        carDriverPin = onValue;
      });
    });

    // fromPin = await getCustomIcon(iconKeyPickup);
    // destinationPin = await getCustomIcon(iconKeyDrop);
  }

  final controller = Completer<GoogleMapController>();
  final rippleMarkers = <MarkerId, Marker>{};

  @override
  Widget build(BuildContext context) {
    // HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'SAAS Ride Tracking ${bookingId == null ? "" : "#" + bookingId}',
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black.withOpacity(0.8),
      ),
      body: Stack(
        children: [
          bookingId == null
              ? Center(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SpinKitWanderingCubes(
                      color: Colors.white,
                      size: 60,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "No Trips Found",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    )
                  ],
                ))
              : isLoading == true
                  ? Center(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SpinKitSpinningLines(
                          color: Colors.white,
                          size: 60,
                        ),
                        Text(
                          "TRIP IS LOADING",
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                    ))
                  : Container(
                      child: Container(
                        // Animarker(
                        // curve: Curves.bounceInOut,
                        // duration: Duration(milliseconds: 2000),
                        // mapId: controller.future
                        // .then<int>((value) => value.mapId), //Grab Google Map Id
                        // markers: rippleMarkers.values.toSet(),
                        child: GoogleMap(
                          onTap: (cs) {
                            // setState(() {
                            //   controller.markers = {};
                            // });
                            // setState(() {
                            //   controller.markers
                            //       .add(Marker(markerId: MarkerId("as"), position: cs));
                            // });
                          },
                          markers: markers,
                          polylines: polylines,
                          // liteModeEnabled: true,
                          onMapCreated: (c) async {
                            googleMapController = c;
                            var mapStyle = await getMapStyleFromAsset();
                            googleMapController.setMapStyle(mapStyle);
                            // controller.complete(c);
                            // controller.connectAndListen();
                          },
                          initialCameraPosition: CameraPosition(
                            target: snsctLatLng,
                            zoom: 11.0,
                          ),
                        ),
                      ),
                    ),
          // RaisedButton(
          //   onPressed: () async {
          //     // var browser = await puppeteer.launch();
          //     // var page = await browser.newPage();

          //     // // Setup the dimensions and user-agent of a particular phone
          //     // await page.emulate(puppeteer.devices.pixel2XL);

          //     // await page.goto('https://dart.dev', wait: Until.networkIdle);

          //     // // Take a screenshot of the page
          //     // var screenshot = await page.screenshot();

          //     // // Save it to a file
          //     // // await ioo.File('example/_github.png').writeAsBytes(screenshot);

          //     // // await browser.close();
          //   },
          //   child: Text("DOWNLOAD"),
          // )
        ],
      ),
    );
  }

  Timer t;
  resetMarkerEveryFiveSec() {
    t = Timer.periodic(Duration(seconds: 5), (timer) {
      Fluttertoast.showToast(msg: "REBUILDING MARKER");
      setState(() {
        markers = {};
      });
    });
  }

  @override
  void dispose() {
    t.cancel();
    socket.dispose();
    super.dispose();
  }
}
