import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:saas_web_app/app/modules/home/views/osm_directions_response.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:syncfusion_flutter_core/core.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class SyncfusionMapsHome extends StatefulWidget {
  const SyncfusionMapsHome({Key key}) : super(key: key);

  @override
  _SyncfusionMapsHomeState createState() => _SyncfusionMapsHomeState();
}

class _SyncfusionMapsHomeState extends State<SyncfusionMapsHome>
    with SingleTickerProviderStateMixin {
  MapZoomPanBehavior _zoomPanBehavior;
  MapTileLayerController _mapController;
  AnimationController _animationController;
  Animation<double> _animation;
  bool _isDesktop;
  List<_RouteDetails> _routes;
  int _currentSelectedCityIndex = 0;
  String _routeJson;

  Timer t;

  MapLatLng currentLoc;
  MapLatLng centerBounds = MapLatLng(points[(points.length / 2).toInt() + 5][0],
      points[(points.length / 2).toInt() + 5][1]);
  List loc = [
    [11.029006, 77.02581],
    [11.030154, 77.027483],
    [11.030201, 77.02755],
    [11.030462, 77.027918],
    [11.031812, 77.029566],
    [11.032087, 77.029901],
    [11.032738, 77.030816],
    [11.034505, 77.033179],
    [11.034881, 77.033612],
    [11.037069, 77.036127],
    [11.037243, 77.036368],
    [11.038004, 77.037414],
    [11.038104, 77.03753],
    [11.038384, 77.037878],
    [11.038481, 77.038006]
  ];

  var stream;
  @override
  void initState() {
    // _routeJson = 'assets/london_to_british.json';
    getJsonDataMap();
    // _routes = <_RouteDetails>[
    //   _RouteDetails(const MapLatLng(51.4700, -0.4543), null, 'London Heathrow'),
    //   _RouteDetails(
    //       const MapLatLng(51.5194, -0.1270),
    //       Icon(Icons.location_on, color: Colors.red[600], size: 30),
    //       'The British Museum'),
    // ];
    routesMap = coimbatoreToTirupur;

    _routes = [
      _RouteDetails(
          MapLatLng(points[points.length - 1][0], points[points.length - 1][1]),
          Icon(Icons.location_on, color: Colors.red[600], size: 30),
          "Coimbatore"),
      _RouteDetails(MapLatLng(points[0][0], points[0][1]),
          Icon(Icons.location_on, color: Colors.red[600], size: 30), "Tirupur")
    ];
    // routesMap = coimbatoreToTirupur;

    _mapController = MapTileLayerController();
    _zoomPanBehavior = MapZoomPanBehavior(
      minZoomLevel: 3,
      zoomLevel: 11,
      showToolbar: true,
      focalLatLng: centerBounds,
      toolbarSettings: const MapToolbarSettings(
          direction: Axis.vertical, position: MapToolbarPosition.bottomRight),
      maxZoomLevel: 15,
      enableDoubleTapZooming: true,
    );

    _animationController = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.decelerate,
    );
    // getJsonDataMap();
    // getJsonDataMap();
    super.initState();
    currentLoc = MapLatLng(loc[0][0], loc[0][1]);
    _routes.add(_RouteDetails(currentLoc, Icon(Icons.ad_units), "Driver"));

    // Timer.periodic(Duration(seconds: 3), (timer) {
    //   Fluttertoast.showToast(msg: "${timer.tick}");
    //   setState(() {
    //     currentLoc = MapLatLng(loc[timer.tick][0], loc[timer.tick][1]);
    //     _routes.add(_RouteDetails(currentLoc, Icon(Icons.ad_units), "Driver"));
    //     _mapController.updateMarkers(<int>[0, 1, 2]);
    //   });
    // });
    stream = Stream.periodic(Duration(seconds: 2), (s) {
      var index = s > loc.length ? s % loc.length : s;
      Fluttertoast.showToast(msg: "IN STREAM PERIODIC ${index}");

      // setState(() {
      currentLoc = MapLatLng(loc[index][0], loc[index][1]);

      _routes[2] = _RouteDetails(
          MapLatLng(currentLoc.latitude, currentLoc.longitude),
          // Icon(
          //   Icons.car_rental_outlined,
          //   color: Colors.black,
          // ),
          null,
          "moving");
      _mapController.updateMarkers(<int>[2]);
    });
    // });
  }

  @override
  void dispose() {
    if (t != null) t.cancel();
    _animationController.dispose();
    _mapController.dispose();
    _routes.clear();
    super.dispose();
  }

  Future<dynamic> getJsonData() async {
    final List<MapLatLng> polyline = <MapLatLng>[];
    final String data = await rootBundle.loadString(_routeJson);
    final dynamic jsonData = json.decode(data);
    final List<dynamic> polylinePoints =
        jsonData['features'][0]['geometry']['coordinates'] as List<dynamic>;
    for (int i = 0; i < polylinePoints.length; i++) {
      polyline.add(MapLatLng(polylinePoints[i][0], polylinePoints[i][1]));
    }
    // ignore: unawaited_futures
    _animationController?.forward(from: 0);

    return polyline;
  }

  Map<String, dynamic> routesMap = {};

  Future<dynamic> getJsonDataMap() async {
    final List<MapLatLng> polyline = <MapLatLng>[];
    if (_routeJson != null) {
      final String data = await rootBundle.loadString(_routeJson);
      final dynamic jsonData = json.decode(data);
      final List<dynamic> polylinePoints =
          jsonData['features'][0]['geometry']['coordinates'] as List<dynamic>;
      for (int i = 0; i < polylinePoints.length; i++) {
        // setState(() {
        polyline.add(MapLatLng(polylinePoints[i][1], polylinePoints[i][0]));
        // });
      }
    } else {
      log("IN ELSE ${routesMap}");
      final String data = routesMap.toString();
      final dynamic jsonData = routesMap;
      final List<dynamic> polylinePoints =
          jsonData['features'][0]['geometry']['coordinates'] as List<dynamic>;
      for (int i = 0; i < polylinePoints.length; i++) {
        polyline.add(MapLatLng(polylinePoints[i][0], polylinePoints[i][1]));
      }
    }
    // ignore: unawaited_futures
    _animationController?.forward(from: 0);
    _animationController.repeat(reverse: false);

    return polyline;
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    _isDesktop = kIsWeb ||
        themeData.platform == TargetPlatform.macOS ||
        themeData.platform == TargetPlatform.windows ||
        themeData.platform == TargetPlatform.linux;
    return FutureBuilder(
        future: getJsonDataMap(),
        builder: (context, futureSnap) {
          return StreamBuilder(
              stream: stream,
              builder: (context, snapshot) {
                final List<MapLatLng> polylinePoints =
                    futureSnap.data as List<MapLatLng>;
                log("POLY POINTS ${polylinePoints}");

                return Scaffold(
                    body: Stack(children: <Widget>[
                  // Positioned.fill(
                  //   child: Image.asset(
                  //     'images/maps_grid.png',
                  //     repeat: ImageRepeat.repeat,
                  //   ),
                  // ),
                  SfMapsTheme(
                    data: SfMapsThemeData(
                      shapeHoverColor: Colors.transparent,
                    ),
                    child: SfMaps(
                      layers: <MapLayer>[
                        MapTileLayer(
                          urlTemplate:
                              'https://a.tile.openstreetmap.org/{z}/{x}/{y}.png',
                          initialMarkersCount: _routes.length,
                          controller: _mapController,
                          markerBuilder: (BuildContext context, int index) {
                            if (_routes[index].icon != null) {
                              return MapMarker(
                                key: UniqueKey(),
                                latitude: _routes[index].latLan.latitude,
                                longitude: _routes[index].latLan.longitude,
                                alignment: Alignment.bottomCenter,
                                child: _routes[index].icon,
                              );
                            } else {
                              return MapMarker(
                                key: UniqueKey(),
                                latitude: _routes[index].latLan.latitude,
                                longitude: _routes[index].latLan.longitude,
                                iconType: MapIconType.circle,
                                iconColor: Colors.white,
                                iconStrokeWidth: 2.0,
                                size: const Size(15, 15),
                                iconStrokeColor: Colors.black,
                              );
                            }
                          },
                          tooltipSettings: const MapTooltipSettings(
                            color: Color.fromRGBO(45, 45, 45, 1),
                          ),
                          markerTooltipBuilder:
                              (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(_routes[index].city,
                                  style: TextStyle(
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1))),
                            );
                          },
                          sublayers: <MapSublayer>[
                            MapPolylineLayer(
                                polylines: <MapPolyline>{
                                  MapPolyline(
                                    points: polylinePoints,
                                    color: Color.fromARGB(255, 40, 66, 61),
                                    width: 6.0,
                                  )
                                },
                                animation: _animation,
                                tooltipBuilder:
                                    (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        _routes[0].city +
                                            ' - ' +
                                            _routes[1].city,
                                        style: TextStyle(
                                            color: const Color.fromRGBO(
                                                255, 255, 255, 1))),
                                  );
                                }),
                          ],
                          zoomPanBehavior: _zoomPanBehavior,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          _buildChipWidget(0, 'Coimbatore to Tiruppur'),
                          _buildChipWidget(1, 'London'),
                        ],
                      ),
                    ),
                  ),
                ]));
              });
        });
  }

  Widget _buildChipWidget(int index, String city) {
    return Padding(
      padding: _isDesktop
          ? const EdgeInsets.only(left: 8.0, top: 8.0)
          : const EdgeInsets.only(left: 8.0),
      child: ChoiceChip(
        backgroundColor: Colors.white,
        elevation: 3.0,
        label: Text(
          city,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        selected: _currentSelectedCityIndex == index,
        onSelected: (bool isSelected) {
          if (isSelected) {
            setState(() {
              _currentSelectedCityIndex = index;
              _currentNavigationLine(index, city);
            });
          }
        },
      ),
    );
  }

  void _currentNavigationLine(int index, String city) {
    switch (index) {
      case 1:
        setState(() {
          // getJsonData();
          _routeJson = 'assets/london_to_british.json';
          // routesMap = coimbatoreToTirupur;
          _zoomPanBehavior.focalLatLng = const MapLatLng(51.4700, -0.2843);
          _zoomPanBehavior.zoomLevel = 10;
          _routes[1] = _RouteDetails(const MapLatLng(51.5194, -0.1270),
              Icon(Icons.location_on, color: Colors.red[600], size: 30), city);
          _mapController.updateMarkers(<int>[1]);
        });
        break;
      case 0:
        setState(() {
          // getJsonDataMap();
          _routeJson = null;
          // _routeJson = coimbatoreToTirupur.toString();
          routesMap = coimbatoreToTirupur;

          _routes[0] = _RouteDetails(
              MapLatLng(
                  points[points.length - 1][0], points[points.length - 1][1]),
              Icon(Icons.location_on, color: Colors.red[600], size: 30),
              city);

          _routes[1] = _RouteDetails(MapLatLng(points[0][0], points[0][1]),
              Icon(Icons.location_on, color: Colors.red[600], size: 30), city);
          // routesMap = coimbatoreToTirupur;

          _zoomPanBehavior.focalLatLng = centerBounds;

          _zoomPanBehavior.zoomLevel = 12;

          _mapController.updateMarkers(<int>[0, 1]);
        });
        break;
    }
  }
}

class _RouteDetails {
  _RouteDetails(this.latLan, this.icon, this.city);

  MapLatLng latLan;
  Widget icon;
  String city;
}
