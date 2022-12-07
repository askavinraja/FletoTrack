import 'dart:convert';
import 'dart:developer';
import 'dart:html';

import 'package:google_maps_flutter/google_maps_flutter.dart';

List<dynamic> points = [];
Map<String, dynamic> coimbatoreToTirupur;
polylineFromOSM() {
  Map<String, dynamic> json = {
    "code": "Ok",
    "waypoints": [
      {
        "hint":
            "gUx2go9MdoIAAAAAaQAAAAAAAACoAAAAAAAAAMNLO0EAAAAA2S6VQQAAAABpAAAAAAAAAKgAAACOAgAANVyWBCffpwAaXJYE1N-nAAAAfwX9ZGZP",
        "distance": 19.36138,
        "location": [76.962869, 11.001639],
        "name": "Krishnasamy Road"
      },
      {
        "hint":
            "YDB1gtZzB4AJAAAAEwEAAFMCAABNBwAADx6DQEPg8kFRIYRD4PFOQwkAAAATAQAAUwIAAE0HAACOAgAA8vSbBNVWqQBh9psE1FWpAAoAPwL9ZGZP",
        "distance": 49.152616,
        "location": [77.32965, 11.097813],
        "name": "Mangalam Royapuram Connection Road"
      }
    ],
    "routes": [
      {
        "legs": [
          {
            "steps": [
              {
                "intersections": [
                  {
                    "out": 0,
                    "entry": [true],
                    "location": [76.962869, 11.001639],
                    "bearings": [87]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.963141, 11.001687],
                    "bearings": [75, 225, 255]
                  },
                  {
                    "out": 2,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.963553, 11.002005],
                    "bearings": [150, 165, 330]
                  }
                ],
                "driving_side": "right",
                "geometry": "gwcbA}xvtM?UI_@UgAKKOAMB}Ar@aBn@k@\\eClA",
                "duration": 80.2,
                "distance": 333.6,
                "name": "Krishnasamy Road",
                "weight": 80.2,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 87,
                  "location": [76.962869, 11.001639],
                  "type": "depart",
                  "bearing_before": 0,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.962506, 11.003858],
                    "bearings": [75, 150, 330]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.964209, 11.004292],
                    "bearings": [0, 75, 255]
                  }
                ],
                "driving_side": "right",
                "geometry": "cedbAuvvtMUw@WiBO_BWqASeB",
                "duration": 63,
                "distance": 249.8,
                "name": "",
                "weight": 63,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 67,
                  "location": [76.962506, 11.003858],
                  "type": "turn",
                  "bearing_before": 329,
                  "modifier": "right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.964722, 11.004393],
                    "bearings": [0, 90, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [76.964627, 11.006699],
                    "bearings": [0, 90, 180, 270]
                  }
                ],
                "driving_side": "right",
                "geometry": "mhdbAodwtMiFDcFJyA?",
                "duration": 73.3,
                "distance": 307.2,
                "name": "Ranga Konar Street",
                "weight": 73.3,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 357,
                  "location": [76.964722, 11.004393],
                  "type": "turn",
                  "bearing_before": 77,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.964628, 11.007153],
                    "bearings": [0, 90, 180]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.967797, 11.007078],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.968371, 11.007101],
                    "bearings": [90, 180, 270]
                  }
                ],
                "driving_side": "right",
                "geometry": "uydbA}cwtMAmF?sABsABMFuECqBBq@",
                "duration": 111.5,
                "distance": 436.2,
                "name": "",
                "weight": 111.5,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 88,
                  "location": [76.964628, 11.007153],
                  "type": "turn",
                  "bearing_before": 0,
                  "modifier": "right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.968619, 11.007084],
                    "bearings": [15, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.968966, 11.007607],
                    "bearings": [60, 240, 345]
                  }
                ],
                "driving_side": "right",
                "geometry": "gydbA{|wtMg@Ik@]U]K[G_@?c@Dc@H]JYRQTOl@OnEG",
                "duration": 89.2,
                "distance": 351.9,
                "name": "Nehru Stadium",
                "weight": 89.2,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 12,
                  "location": [76.968619, 11.007084],
                  "type": "end of road",
                  "bearing_before": 92,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 0,
                    "entry": [false, true, true],
                    "location": [76.970195, 11.006094],
                    "bearings": [0, 105, 210]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.970309, 11.00605],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.970909, 11.005906],
                    "bearings": [90, 180, 285]
                  }
                ],
                "driving_side": "right",
                "geometry": "asdbAwfxtMFUZwBBqE",
                "duration": 50.2,
                "distance": 195.6,
                "name": "Park Road",
                "weight": 50.2,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 111,
                  "location": [76.970195, 11.006094],
                  "type": "turn",
                  "bearing_before": 177,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.97196, 11.005888],
                    "bearings": [165, 270, 345]
                  }
                ],
                "driving_side": "right",
                "geometry": "yqdbAwqxtMl@GrEo@bCc@",
                "duration": 63.3,
                "distance": 222.2,
                "name": "Park Road",
                "weight": 63.3,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 168,
                  "location": [76.97196, 11.005888],
                  "type": "end of road",
                  "bearing_before": 90,
                  "modifier": "right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [76.972419, 11.003943],
                    "bearings": [60, 150, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.974245, 11.005046],
                    "bearings": [60, 75, 240]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [76.974638, 11.005336],
                    "bearings": [15, 60, 150, 240]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [76.974819, 11.005461],
                    "bearings": [15, 60, 210, 240]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.976002, 11.006165],
                    "bearings": [0, 60, 240]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.978046, 11.007707],
                    "bearings": [0, 45, 225]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.980336, 11.0095],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.981626, 11.010275],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [76.981978, 11.010487],
                    "bearings": [60, 150, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.98568, 11.01266],
                    "bearings": [45, 225, 330]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [76.986025, 11.012959],
                    "bearings": [45, 150, 225, 330]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [76.98611, 11.013035],
                    "bearings": [45, 150, 225, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.987517, 11.014243],
                    "bearings": [45, 225, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.988188, 11.014769],
                    "bearings": [45, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.990599, 11.017888],
                    "bearings": [30, 210, 315]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [76.992122, 11.020173],
                    "bearings": [60, 105, 225, 315]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.992749, 11.020583],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.993758, 11.021176],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.995632, 11.021816],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [76.996092, 11.021961],
                    "bearings": [75, 165, 255, 345]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.998025, 11.022242],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.998899, 11.022303],
                    "bearings": [90, 270, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.000302, 11.022624],
                    "bearings": [60, 150, 240]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.001488, 11.023212],
                    "bearings": [60, 150, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.001792, 11.023348],
                    "bearings": [60, 150, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.00291, 11.023745],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.005127, 11.024151],
                    "bearings": [75, 165, 255, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.006524, 11.024453],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.007076, 11.024547],
                    "bearings": [75, 165, 255, 345]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.00754, 11.024613],
                    "bearings": [0, 75, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.010118, 11.025032],
                    "bearings": [75, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.010584, 11.025131],
                    "bearings": [90, 255, 345]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.013318, 11.025423],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.014304, 11.025488],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.014921, 11.025499],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.017577, 11.025858],
                    "bearings": [0, 75, 180, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.017635, 11.025867],
                    "bearings": [75, 165, 255, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.019309, 11.026169],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.019774, 11.026264],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.020219, 11.026354],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true, true],
                    "location": [77.023601, 11.027673],
                    "bearings": [60, 150, 240, 315, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.024221, 11.027972],
                    "bearings": [60, 240, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.024959, 11.028385],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.02581, 11.029006],
                    "bearings": [0, 60, 180, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.027483, 11.030154],
                    "bearings": [60, 240, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.02755, 11.030201],
                    "bearings": [60, 240, 330]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.027918, 11.030462],
                    "bearings": [0, 45, 180, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.029566, 11.031812],
                    "bearings": [45, 225, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.029901, 11.032087],
                    "bearings": [60, 225, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.030816, 11.032738],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.033179, 11.034505],
                    "bearings": [0, 45, 225]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.033612, 11.034881],
                    "bearings": [45, 150, 225]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.036127, 11.037069],
                    "bearings": [60, 225, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.036368, 11.037243],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.037414, 11.038004],
                    "bearings": [0, 45, 165, 240]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.03753, 11.038104],
                    "bearings": [0, 45, 180, 225]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.037878, 11.038384],
                    "bearings": [45, 225, 285]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.038006, 11.038481],
                    "bearings": [45, 225, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.039305, 11.039533],
                    "bearings": [60, 225, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.040656, 11.040475],
                    "bearings": [60, 240, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.041517, 11.041074],
                    "bearings": [60, 240, 330]
                  }
                ],
                "driving_side": "right",
                "geometry":
                    "sedbAstxtMmBaEoBkDy@mAWc@eBsDg@w@aDgFqCqDiDmEoCuDk@eA{CaGi@eAeFuKKQCGuBoEo@kAUWIIq@{@OOOS_@c@iAuAqBgCCC{@iACCi@w@eBcBuDcDmEaCc@WaB_AqDuBuDmBwAcAGGS]Yi@c@u@[i@c@}@w@aBQi@Mo@Oq@i@aCe@gBUgAESK}@Ec@MiAGgAOoCAO?OAMG_CEeAQoBYgAKSAC?AmB{EGQ[{@w@iCWuAMwAWwD]uBKu@c@eCWoCSoBK{AIeAk@_H]}CS{AAMa@{GO{CE}AMcE??A{B??Cw@QcDQyBAWU}BGg@AK]sD]wC?AQ{AQyAY}BIg@_@sA]_Ao@gBc@kASi@c@sAYw@e@oAUk@KU_@{@g@aAQ_@aB_CGI_C}DcBoCIMk@}@GKmGiIw@aAoAoBq@gA{AgCw@mAoBmCsAgBIKQUw@_AaCuCiEaFgB}BAAa@o@wCoESWw@eASYmE{FCG}DmGq@gAcAcBMQ",
                "duration": 2067.1,
                "distance": 8898,
                "name": "Avinashi Road",
                "weight": 2067.1,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 59,
                  "location": [76.972419, 11.003943],
                  "type": "turn",
                  "bearing_before": 164,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.041606, 11.041136],
                    "bearings": [60, 150, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.041645, 11.041163],
                    "bearings": [60, 240, 315]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.042299, 11.041613],
                    "bearings": [0, 60, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.042638, 11.041823],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.042986, 11.042039],
                    "bearings": [0, 60, 240]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.043333, 11.042249],
                    "bearings": [0, 60, 240]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.046469, 11.043988],
                    "bearings": [60, 135, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.047075, 11.044285],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.047399, 11.044443],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.047829, 11.044653],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.048314, 11.04487],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.048699, 11.045027],
                    "bearings": [75, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.049157, 11.045213],
                    "bearings": [60, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.051988, 11.046353],
                    "bearings": [60, 150, 240, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.052397, 11.04655],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.052848, 11.046767],
                    "bearings": [60, 240, 330]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.057051, 11.049338],
                    "bearings": [0, 60, 240]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.05776, 11.049734],
                    "bearings": [60, 150, 240]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.058177, 11.049977],
                    "bearings": [0, 60, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.059144, 11.050695],
                    "bearings": [45, 225, 330]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.059754, 11.05134],
                    "bearings": [45, 135, 225, 345]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.063154, 11.054036],
                    "bearings": [0, 60, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.06379, 11.054399],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.064058, 11.054552],
                    "bearings": [0, 60, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.064735, 11.054935],
                    "bearings": [60, 240, 330]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.065487, 11.055357],
                    "bearings": [60, 150, 240, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.065838, 11.055564],
                    "bearings": [0, 60, 240]
                  }
                ],
                "driving_side": "right",
                "geometry":
                    "cnkbAaefuMCGyAaCi@cAk@eAi@cAQ_@cAkBuCwGUg@yAgDGOM[e@mA]_Ai@uAk@_B_@mAc@{AmA{DuAcF_AuCg@qAk@yAAEaCoEkGeLqBkEmAmC_@u@Q]{@}AsAaB_CyBkDcDiCiDaByCcC_EgA_C]u@i@eAc@aAsAuCg@eAgBoDqByCmCgE_@y@",
                "duration": 791.6,
                "distance": 3501,
                "name": "",
                "weight": 791.6,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 53,
                  "location": [77.041606, 11.041136],
                  "type": "new name",
                  "bearing_before": 53,
                  "modifier": "straight"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.068777, 11.05752],
                    "bearings": [75, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.074748, 11.057882],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.074957, 11.057901],
                    "bearings": [90, 270, 330]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.075142, 11.057917],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.079553, 11.058622],
                    "bearings": [0, 75, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.083935, 11.060288],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.086179, 11.061192],
                    "bearings": [0, 75, 255]
                  }
                ],
                "driving_side": "right",
                "geometry":
                    "otnbA{nkuM??W}@WiCAoGCyCCgJKiDAe@Ci@Cc@KwBQyBIaA[qD]eEe@uDCOe@}Bu@sCiA}DgD}KiDcLI[{@{C",
                "duration": 468,
                "distance": 2057,
                "name": "Avanishi Road",
                "weight": 468,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 67,
                  "location": [77.068777, 11.05752],
                  "type": "turn",
                  "bearing_before": 60,
                  "modifier": "straight"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.086962, 11.061493],
                    "bearings": [75, 165, 255]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.086984, 11.061391],
                    "bearings": [75, 165, 255, 345]
                  }
                ],
                "driving_side": "right",
                "geometry": "imobAo`ouMRCdHo@`BU",
                "duration": 66.7,
                "distance": 232.5,
                "name": "Bypass-Avanishi Rd",
                "weight": 66.7,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 167,
                  "location": [77.086962, 11.061493],
                  "type": "turn",
                  "bearing_before": 67,
                  "modifier": "right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.087326, 11.059434],
                    "bearings": [45, 225, 345]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 49,
                  "location": [77.087326, 11.059434],
                  "type": "turn",
                  "bearing_before": 167,
                  "modifier": "left"
                },
                "duration": 18.9,
                "distance": 78.4,
                "name": "Coimbatore Bypass",
                "geometry": "m`obAybouMg@m@u@}@",
                "ref": "NH544",
                "weight": 18.9,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.087865, 11.0599],
                    "bearings": [43, 49, 228]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.100687, 11.068601],
                    "bearings": [60, 240, 300]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 42,
                  "location": [77.087865, 11.0599],
                  "type": "fork",
                  "bearing_before": 46,
                  "modifier": "slight left"
                },
                "duration": 505.8,
                "distance": 2092.8,
                "name": "Coimbatore Bypass",
                "geometry":
                    "kcobAefouMsCmCu@}@q@u@uBgCeEcF_ByBkAaBoAuBoA}BuAiCwFaMiMkXo@mAuJyPGK",
                "ref": "NH544",
                "weight": 505.8,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.103602, 11.070509],
                    "bearings": [0, 60, 165, 240]
                  }
                ],
                "driving_side": "right",
                "geometry": "ueqbAohruMa@?",
                "duration": 5.9,
                "distance": 18.6,
                "name": "",
                "weight": 5.9,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 358,
                  "location": [77.103602, 11.070509],
                  "type": "turn",
                  "bearing_before": 56,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.103598, 11.070676],
                    "bearings": [0, 60, 180]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.106957, 11.072957],
                    "bearings": [60, 150, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.110141, 11.074859],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.112793, 11.076547],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.118221, 11.080008],
                    "bearings": [60, 240, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.121617, 11.08217],
                    "bearings": [60, 240, 315]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.122723, 11.082891],
                    "bearings": [0, 60, 135, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.12768, 11.086207],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.130119, 11.087876],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.139398, 11.091493],
                    "bearings": [0, 75, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.14574, 11.093493],
                    "bearings": [75, 150, 255, 315]
                  }
                ],
                "driving_side": "right",
                "geometry":
                    "wfqbAohruM}DgH]k@aAgBaAmB][][k@}@e@cAOs@Se@eD_GyAoCS_@]m@}AoCKScCsEcByCYk@{EuIcFgJyEsIIOIO}BcE}GcMoC{E_B{CgBgDcEeHaBiCiDkFa@o@yDoGsAwB]o@w@aBcA_CaAiCyAyECMy@oCg@gBw@wCoA}FaDqNi@kBg@cBm@eC{@sE{AwH[gBQ{@Kk@m@kDa@}@WcAKyAGgAY}A}@oFUuA?wA",
                "duration": 1276.4,
                "distance": 5668.1,
                "name": "",
                "weight": 1276.4,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 56,
                  "location": [77.103598, 11.070676],
                  "type": "turn",
                  "bearing_before": 358,
                  "modifier": "right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.149091, 11.094137],
                    "bearings": [75, 255, 270]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 68,
                  "location": [77.149091, 11.094137],
                  "type": "merge",
                  "bearing_before": 88,
                  "modifier": "slight right"
                },
                "duration": 121,
                "distance": 502.7,
                "name": "",
                "geometry": "kyubAyd{uMw@wC}CmH?Ay@mBkC{F",
                "ref": "NH544",
                "weight": 121,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.153181, 11.096198],
                    "bearings": [45, 60, 240]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.155541, 11.097341],
                    "bearings": [0, 60, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.155775, 11.09748],
                    "bearings": [60, 240, 300]
                  }
                ],
                "driving_side": "right",
                "geometry": "gfvbAk~{uMy@{@Wi@i@sAs@}B]_BU_A[o@CGIS",
                "duration": 81.6,
                "distance": 338.5,
                "name": "",
                "weight": 81.6,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 45,
                  "location": [77.153181, 11.096198],
                  "type": "turn",
                  "bearing_before": 60,
                  "modifier": "slight left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.155922, 11.097554],
                    "bearings": [75, 165, 240]
                  }
                ],
                "driving_side": "right",
                "geometry": "unvbAoo|uMXG`AUXI",
                "duration": 20.2,
                "distance": 69.6,
                "name": "",
                "weight": 20.2,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 161,
                  "location": [77.155922, 11.097554],
                  "type": "turn",
                  "bearing_before": 61,
                  "modifier": "right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.156116, 11.096958],
                    "bearings": [60, 255, 345]
                  }
                ],
                "driving_side": "right",
                "geometry": "_kvbAwp|uMH`@?p@Fr@TbA",
                "duration": 34.8,
                "distance": 113.8,
                "name": "",
                "weight": 34.8,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 254,
                  "location": [77.156116, 11.096958],
                  "type": "turn",
                  "bearing_before": 161,
                  "modifier": "right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 0,
                    "entry": [false, true, true],
                    "location": [77.155102, 11.096755],
                    "bearings": [75, 150, 255]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.156486, 11.087997],
                    "bearings": [75, 165, 345]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 154,
                  "location": [77.155102, 11.096755],
                  "type": "turn",
                  "bearing_before": 248,
                  "modifier": "left"
                },
                "duration": 291.1,
                "distance": 1259.1,
                "name": "",
                "geometry":
                    "wivbAkj|uMxCgAfAIpCDt@O`A@tB`@t@@xAMrE?l@GlIsBtKuAtCa@hEMfBB",
                "ref": "Somanur Road",
                "weight": 291.1,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 0,
                    "entry": [false, true, true, true],
                    "location": [77.156706, 11.085718],
                    "bearings": [0, 90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.170449, 11.086282],
                    "bearings": [90, 150, 255]
                  }
                ],
                "driving_side": "right",
                "geometry":
                    "wdtbAmt|uMBc@Cg@Eo@Aq@D{@Hu@D_ABiBBo@Ac@Gu@Iy@KsAEaBGoAMqAG{AC}@I}@Ea@?UHWDY?c@AyAEiCCwC?{B@kBBi@C}@?e@Fe@B[?_@Es@Eo@Cy@CgAGqAOcBMwAEg@?UEg@YmBSmAIm@KkAUaBQkAEc@Ge@UgAIa@",
                "duration": 433.5,
                "distance": 1915.7,
                "name": "",
                "weight": 433.5,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 95,
                  "location": [77.156706, 11.085718],
                  "type": "turn",
                  "bearing_before": 182,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.174075, 11.087083],
                    "bearings": [135, 255, 330]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.179242, 11.086111],
                    "bearings": [45, 135, 285]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.181019, 11.084634],
                    "bearings": [75, 105, 225, 285]
                  }
                ],
                "driving_side": "right",
                "geometry":
                    "gmtbA_a`vMv@q@~@i@fBuAp@o@JUAUIa@Gg@Eu@Ce@G]Ke@Oe@IYE_@OkAI{@AWBa@BaABaC@WBQFIZWb@SXQNUJc@Rc@h@aAb@k@d@e@ZYDODU",
                "duration": 212.3,
                "distance": 918.8,
                "name": "",
                "weight": 212.3,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 139,
                  "location": [77.174075, 11.087083],
                  "type": "end of road",
                  "bearing_before": 71,
                  "modifier": "right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.181126, 11.084604],
                    "bearings": [45, 210, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.181433, 11.083983],
                    "bearings": [135, 285, 330]
                  }
                ],
                "driving_side": "right",
                "geometry":
                    "w}sbAamavMRHNCl@[LOJKNI~A}Aj@c@ZQXMp@O`ASn@OjAWTKFC",
                "duration": 96.8,
                "distance": 381.7,
                "name": "",
                "weight": 96.8,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 202,
                  "location": [77.181126, 11.084604],
                  "type": "end of road",
                  "bearing_before": 105,
                  "modifier": "right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.182697, 11.081662],
                    "bearings": [60, 225, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.186624, 11.082914],
                    "bearings": [75, 255, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.187821, 11.083278],
                    "bearings": [75, 255, 330]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 54,
                  "location": [77.182697, 11.081662],
                  "type": "end of road",
                  "bearing_before": 158,
                  "modifier": "left"
                },
                "duration": 157.5,
                "distance": 690.3,
                "name": "Chinniyampalayam - Ravathur - Somanur Road",
                "geometry":
                    "kksbA{vavMGOo@aASw@}@{Gk@cDu@aDMc@Og@_@oBYwA_@qBS{@",
                "ref": "MDR879",
                "weight": 157.5,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.188693, 11.083537],
                    "bearings": [60, 135, 255, 315]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.188998, 11.083204],
                    "bearings": [60, 150, 315]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.192559, 11.074466],
                    "bearings": [180, 255, 345]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 137,
                  "location": [77.188693, 11.083537],
                  "type": "turn",
                  "bearing_before": 71,
                  "modifier": "right"
                },
                "duration": 288.7,
                "distance": 1167,
                "name": "Kamanaikenpalayam - Annur Road",
                "geometry":
                    "cwsbAi|bvMbA}@l@]vF{CnAs@pBu@rDk@nDy@|Aa@`HiBxM_Dj@QrBM",
                "ref": "SH165",
                "weight": 288.7,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 0,
                    "entry": [false, true, true],
                    "location": [77.192633, 11.073892],
                    "bearings": [0, 75, 180]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.205462, 11.079514],
                    "bearings": [45, 150, 210]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.205701, 11.079708],
                    "bearings": [45, 165, 225]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.206008, 11.079946],
                    "bearings": [60, 165, 225]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.206222, 11.080097],
                    "bearings": [60, 150, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.206349, 11.080182],
                    "bearings": [60, 240, 315]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.210774, 11.082782],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.21266, 11.08385],
                    "bearings": [60, 135, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.213723, 11.085098],
                    "bearings": [45, 210, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.214154, 11.085622],
                    "bearings": [30, 210, 315]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.22324, 11.089858],
                    "bearings": [75, 135, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.22673, 11.090603],
                    "bearings": [30, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.233714, 11.093564],
                    "bearings": [15, 105, 210]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.243061, 11.097026],
                    "bearings": [15, 135, 225]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.248953, 11.101354],
                    "bearings": [30, 90, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.249109, 11.101347],
                    "bearings": [105, 270, 330]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.251322, 11.101609],
                    "bearings": [75, 150, 270]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 81,
                  "location": [77.192633, 11.073892],
                  "type": "turn",
                  "bearing_before": 171,
                  "modifier": "left"
                },
                "duration": 1744.6,
                "distance": 7740,
                "name": "Tirupur - Somanur Road",
                "geometry":
                    "yzqbA}tcvMo@gJ_@}F]wEKk@g@[}Cs@[QMc@GwCBqAGmAQgAs@gC]_C_AoEe@sCc@mC_@uBUe@e@a@cBc@uAg@aCkAeBaAACg@o@a@i@MS]i@GKGMs@mAsB}D}CuGkCuFu@{Ai@gAqBgEy@iBy@yA[g@YOwAg@q@Yw@y@o@[wAs@k@g@Wg@a@aCk@uC]mA_@aASa@g@aAw@aAc@oAo@cAiAsAe@cAa@aAw@sAmAyAq@_AOm@Au@P{FEaAOiA]_C{@aHm@qFKe@e@U}AWoAi@{BJ{@_@SiHoAgJ_@wCKcCMiCGaDG]UO{@Ww@UoAg@uCeAUQWi@Gg@MuCMeDS[y@QYo@QsBIsAwAaGk@oFB}@L_APsHGg@]_@aAWy@[k@g@u@aAyAoBgCoCm@gBcAeD{B}D_CqDm@{ACa@?_@Nu@?YIa@[u@Me@E]@o@C}@EoAAOKgAi@cB",
                "ref": "SH169",
                "weight": 1744.6,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.252177, 11.101882],
                    "bearings": [60, 90, 240]
                  }
                ],
                "driving_side": "right",
                "geometry": "wiwbAciovMCaAZqBZeA",
                "duration": 32,
                "distance": 141.5,
                "name": "",
                "weight": 32,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 85,
                  "location": [77.252177, 11.101882],
                  "type": "turn",
                  "bearing_before": 66,
                  "modifier": "slight right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.253428, 11.101622],
                    "bearings": [120, 285, 315]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.259142, 11.102123],
                    "bearings": [90, 195, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.264451, 11.100857],
                    "bearings": [45, 180, 255]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.271406, 11.10245],
                    "bearings": [0, 90, 180, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.280137, 11.101981],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.28649, 11.102506],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.287599, 11.102198],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.287838, 11.102118],
                    "bearings": [105, 180, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.288993, 11.101594],
                    "bearings": [120, 210, 300]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.289649, 11.101368],
                    "bearings": [105, 180, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.289862, 11.101311],
                    "bearings": [90, 180, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.294576, 11.10126],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.29719, 11.101522],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.297703, 11.101573],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.297975, 11.101601],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.29836, 11.10166],
                    "bearings": [0, 60, 180, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.302218, 11.101656],
                    "bearings": [0, 90, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.303921, 11.101572],
                    "bearings": [0, 105, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.305217, 11.101421],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.305605, 11.101413],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.305675, 11.101411],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.30756, 11.101241],
                    "bearings": [0, 105, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.307936, 11.101184],
                    "bearings": [0, 105, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.309557, 11.100679],
                    "bearings": [120, 195, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.309607, 11.100658],
                    "bearings": [15, 105, 300]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.309978, 11.100518],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.310149, 11.100456],
                    "bearings": [30, 105, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.311867, 11.099928],
                    "bearings": [0, 105, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.313869, 11.099757],
                    "bearings": [30, 105, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.314168, 11.099706],
                    "bearings": [105, 285, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.31426, 11.099679],
                    "bearings": [105, 180, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.314965, 11.099494],
                    "bearings": [15, 90, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.315907, 11.099392],
                    "bearings": [105, 180, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.316333, 11.099301],
                    "bearings": [15, 105, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.31673, 11.099208],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.317246, 11.099086],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.317718, 11.098975],
                    "bearings": [0, 105, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.317755, 11.098966],
                    "bearings": [105, 180, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.318081, 11.098889],
                    "bearings": [0, 105, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.318284, 11.098842],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.31886, 11.098904],
                    "bearings": [75, 180, 255]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.319448, 11.098995],
                    "bearings": [15, 90, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.319966, 11.098948],
                    "bearings": [105, 210, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.320279, 11.098829],
                    "bearings": [15, 105, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.320776, 11.098494],
                    "bearings": [15, 150, 315]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.321171, 11.097957],
                    "bearings": [15, 150, 195, 330]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.322955, 11.097219],
                    "bearings": [15, 90, 195, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.323436, 11.097175],
                    "bearings": [90, 195, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.324337, 11.097105],
                    "bearings": [15, 105, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.32602, 11.096771],
                    "bearings": [30, 105, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.326585, 11.096551],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.327623, 11.09629],
                    "bearings": [15, 90, 270]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 116,
                  "location": [77.253428, 11.101622],
                  "type": "new name",
                  "bearing_before": 111,
                  "modifier": "straight"
                },
                "duration": 1919.2,
                "distance": 8508.5,
                "name": "Tirupur - Somanur Road",
                "geometry":
                    "chwbA}povMJWFiA^kCDeC?_BUgAmBwBWs@SiAEcA@yBToC?UAoDS}KV}Af@uAt@sAj@}@|@{@f@c@N[EUOS{BiAo@c@Oe@E_BOqBOyBA{JEyESsBo@qDWwDbAkDxAmDn@gEW_Ec@{M[{IWiHuBsLa@mBC}Al@kEZ_C\\{B^aBNo@d@mBbAwBRc@V_BJi@O}Gd@_NKqDs@iOIeBEw@E}@EMo@oBi@w@SW]eAVqBfAuEj@uDBgGLkAZ}C@eB@mA?M@yC^}EHcA@Gx@{Eh@gBBIJ[Nm@Ja@pA_FVwBTgBJgH@[F_@DQb@{B@QR{D@ONcAPoAVgBT}A@GN_AHg@D]QuAU{A@YHgBV}@J]v@eADGbBeAPKvAcCh@uE@IDuALsDB[~@sH?Ej@kBj@kBFaBBs@",
                "ref": "SH169",
                "weight": 1919.2,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.327879, 11.096267],
                    "bearings": [45, 135, 270]
                  }
                ],
                "driving_side": "right",
                "geometry": "ufvbAgb~vMs@i@Uk@oAe@WSSMIQ_@cAMa@a@c@Mc@EC",
                "duration": 60.4,
                "distance": 268.9,
                "name": "Mangalam Royapuram Connection Road",
                "weight": 60.4,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 37,
                  "location": [77.327879, 11.096267],
                  "type": "turn",
                  "bearing_before": 94,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "in": 0,
                    "entry": [true],
                    "location": [77.32965, 11.097813],
                    "bearings": [216]
                  }
                ],
                "driving_side": "right",
                "geometry": "ipvbAim~vM",
                "duration": 0,
                "distance": 0,
                "name": "Mangalam Royapuram Connection Road",
                "weight": 0,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 0,
                  "location": [77.32965, 11.097813],
                  "type": "arrive",
                  "bearing_before": 36,
                  "modifier": "right"
                }
              }
            ],
            "weight": 11224.8,
            "distance": 48659.1,
            "summary": "Avinashi Road, Tirupur - Somanur Road",
            "duration": 11224.8
          }
        ],
        "weight_name": "duration",
        "weight": 11224.8,
        "distance": 48659.1,
        "duration": 11224.8
      },
      {
        "legs": [
          {
            "steps": [
              {
                "intersections": [
                  {
                    "out": 0,
                    "entry": [true],
                    "location": [76.962869, 11.001639],
                    "bearings": [87]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.963141, 11.001687],
                    "bearings": [75, 225, 255]
                  },
                  {
                    "out": 2,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.963553, 11.002005],
                    "bearings": [150, 165, 330]
                  }
                ],
                "driving_side": "right",
                "geometry": "gwcbA}xvtM?UI_@UgAKKOAMB}Ar@aBn@k@\\",
                "duration": 70.2,
                "distance": 247.8,
                "name": "Krishnasamy Road",
                "weight": 70.2,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 87,
                  "location": [76.962869, 11.001639],
                  "type": "depart",
                  "bearing_before": 0,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.962904, 11.003192],
                    "bearings": [135, 150, 330]
                  },
                  {
                    "classes": ["tunnel"],
                    "out": 0,
                    "in": 1,
                    "entry": [true, false],
                    "location": [76.963719, 11.001827],
                    "bearings": [75, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.963953, 11.001896],
                    "bearings": [75, 255, 330]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.965461, 11.002228],
                    "bearings": [0, 75, 255]
                  }
                ],
                "driving_side": "right",
                "geometry": "}`dbAcyvtMT[NMfBq@`CgAMm@Ow@OiAMeAGm@Kw@Gc@",
                "duration": 104.9,
                "distance": 393.3,
                "name": "",
                "weight": 104.9,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 130,
                  "location": [76.962904, 11.003192],
                  "type": "turn",
                  "bearing_before": 326,
                  "modifier": "sharp right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.965641, 11.002269],
                    "bearings": [75, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.966195, 11.002203],
                    "bearings": [75, 180, 255]
                  }
                ],
                "driving_side": "right",
                "geometry": "e{cbAgjwtM^EQiBU}B",
                "duration": 135.8,
                "distance": 146.4,
                "name": "",
                "weight": 135.8,
                "mode": "pushing bike",
                "maneuver": {
                  "bearing_after": 168,
                  "location": [76.965641, 11.002269],
                  "type": "turn",
                  "bearing_before": 75,
                  "modifier": "right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.966825, 11.002312],
                    "bearings": [75, 165, 255]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.966923, 11.001865],
                    "bearings": [90, 165, 345]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [76.967287, 11.000729],
                    "bearings": [75, 150, 255, 330]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 167,
                  "location": [76.966825, 11.002312],
                  "type": "turn",
                  "bearing_before": 78,
                  "modifier": "right"
                },
                "duration": 63.5,
                "distance": 258.3,
                "name": "Old Post Office Road",
                "geometry": "m{cbAuqwtMvAQvAS|Aa@l@S~Ao@TM",
                "ref": "MDR125",
                "weight": 63.5,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [76.967602, 11.000135],
                    "bearings": [75, 105, 195, 330]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.967838, 11.000181],
                    "bearings": [60, 180, 255]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 78,
                  "location": [76.967602, 11.000135],
                  "type": "continue",
                  "bearing_before": 151,
                  "modifier": "left"
                },
                "duration": 8.4,
                "distance": 36.5,
                "name": "Old Post Office Road",
                "geometry": "{mcbAovwtMASAK?CCKCCAEAE",
                "ref": "MDR125",
                "weight": 8.4,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.967921, 11.000216],
                    "bearings": [75, 135, 240]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.968005, 11.00024],
                    "bearings": [0, 75, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.968229, 11.000304],
                    "bearings": [75, 240, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.968568, 11.000401],
                    "bearings": [75, 255, 345]
                  }
                ],
                "driving_side": "right",
                "geometry": "kncbAoxwtMCQCMG]ScAKi@",
                "duration": 21.8,
                "distance": 97.4,
                "name": "Huzur Road",
                "weight": 21.8,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 73,
                  "location": [76.967921, 11.000216],
                  "type": "turn",
                  "bearing_before": 66,
                  "modifier": "straight"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.968777, 11.000461],
                    "bearings": [68, 77, 254]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.969263, 11.000689],
                    "bearings": [15, 45, 240]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [76.969426, 11.00084],
                    "bearings": [45, 135, 225, 315]
                  },
                  {
                    "out": 0,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [76.969505, 11.000905],
                    "bearings": [60, 90, 180, 225]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [76.96957, 11.000944],
                    "bearings": [75, 120, 240, 300]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.969967, 11.001024],
                    "bearings": [45, 195, 255]
                  }
                ],
                "driving_side": "right",
                "geometry": "{ocbA{}wtMQg@[w@WYEGMOCEAEEWEe@CQ[c@iD}EiA_B",
                "duration": 104.1,
                "distance": 392.2,
                "name": "Huzur Road",
                "weight": 104.1,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 67,
                  "location": [76.968777, 11.000461],
                  "type": "continue",
                  "bearing_before": 73,
                  "modifier": "straight"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 1,
                    "entry": [true, true, false],
                    "location": [76.971738, 11.002376],
                    "bearings": [45, 225, 240]
                  }
                ],
                "driving_side": "right",
                "geometry": "{{cbAkpxtM`@\\",
                "duration": 8.2,
                "distance": 24.8,
                "name": "Huzur Road",
                "weight": 8.2,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 219,
                  "location": [76.971738, 11.002376],
                  "type": "continue",
                  "bearing_before": 52,
                  "modifier": "sharp right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 0,
                    "entry": [false, true, true],
                    "location": [76.971592, 11.002205],
                    "bearings": [45, 165, 225]
                  }
                ],
                "driving_side": "right",
                "geometry": "yzcbAmoxtMxDa@",
                "duration": 24,
                "distance": 104.2,
                "name": "",
                "weight": 24,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 168,
                  "location": [76.971592, 11.002205],
                  "type": "turn",
                  "bearing_before": 219,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.97176, 11.001283],
                    "bearings": [150, 165, 345]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.971806, 11.001218],
                    "bearings": [90, 150, 330]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.972167, 11.000883],
                    "bearings": [75, 255, 300]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.972831, 11.000984],
                    "bearings": [75, 90, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.973353, 11.001087],
                    "bearings": [60, 195, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.97339, 11.001107],
                    "bearings": [45, 135, 240]
                  }
                ],
                "driving_side": "right",
                "geometry": "_ucbAopxtMJILIVSLQNWScCIk@CYGa@CG]c@UY",
                "duration": 57.6,
                "distance": 243.7,
                "name": "",
                "weight": 57.6,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 144,
                  "location": [76.97176, 11.001283],
                  "type": "turn",
                  "bearing_before": 168,
                  "modifier": "slight left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.973696, 11.001365],
                    "bearings": [30, 195, 225]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [76.975888, 11.002983],
                    "bearings": [15, 75, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.976256, 11.003057],
                    "bearings": [75, 255, 315]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.977938, 11.00337],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.978026, 11.003386],
                    "bearings": [75, 165, 255]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.97866, 11.003507],
                    "bearings": [0, 75, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.978963, 11.003562],
                    "bearings": [75, 180, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.980726, 11.003788],
                    "bearings": [90, 105, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.981149, 11.003832],
                    "bearings": [0, 90, 270]
                  }
                ],
                "driving_side": "right",
                "geometry":
                    "qucbAs|xtMcBo@m@[i@c@a@e@_@e@c@kA_@mDOiA}@oICQW}BI{@]aDO_EGsA@{@",
                "duration": 210.5,
                "distance": 935.7,
                "name": "Racecourse Road",
                "weight": 210.5,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 25,
                  "location": [76.973696, 11.001365],
                  "type": "turn",
                  "bearing_before": 49,
                  "modifier": "straight"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.981448, 11.003823],
                    "bearings": [90, 150, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.983454, 11.004057],
                    "bearings": [90, 165, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.98405, 11.004106],
                    "bearings": [90, 165, 270]
                  }
                ],
                "driving_side": "right",
                "geometry": "{ddbAamztMo@oKAUGaBOsCEkA",
                "duration": 93.5,
                "distance": 409.1,
                "name": "Abdul Rahim Road",
                "weight": 93.5,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 82,
                  "location": [76.981448, 11.003823],
                  "type": "new name",
                  "bearing_before": 91,
                  "modifier": "straight"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.985173, 11.004216],
                    "bearings": [45, 165, 270]
                  }
                ],
                "driving_side": "right",
                "geometry": "kgdbAid{tMIGAE",
                "duration": 4.4,
                "distance": 10.5,
                "name": "",
                "weight": 4.4,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 45,
                  "location": [76.985173, 11.004216],
                  "type": "turn",
                  "bearing_before": 84,
                  "modifier": "slight left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.985239, 11.004279],
                    "bearings": [0, 105, 225]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.985311, 11.004256],
                    "bearings": [0, 165, 285]
                  }
                ],
                "driving_side": "right",
                "geometry": "wgdbAwd{tMBMFC",
                "duration": 10.2,
                "distance": 12.8,
                "name": "",
                "weight": 10.2,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 106,
                  "location": [76.985239, 11.004279],
                  "type": "turn",
                  "bearing_before": 45,
                  "modifier": "right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.985326, 11.004218],
                    "bearings": [90, 195, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.988366, 11.00461],
                    "bearings": [90, 270, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.988505, 11.004626],
                    "bearings": [90, 165, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.988767, 11.004656],
                    "bearings": [90, 165, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.989391, 11.004728],
                    "bearings": [90, 270, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.990218, 11.004805],
                    "bearings": [75, 180, 270]
                  }
                ],
                "driving_side": "right",
                "geometry": "kgdbAie{tMmA_RC[Es@M{BOeD?OYcD",
                "duration": 147.9,
                "distance": 637.8,
                "name": "Red Fields Road",
                "weight": 147.9,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 81,
                  "location": [76.985326, 11.004218],
                  "type": "turn",
                  "bearing_before": 157,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.99112, 11.004944],
                    "bearings": [75, 180, 255]
                  }
                ],
                "driving_side": "right",
                "geometry": "{kdbAoi|tM~@GdAGd@C",
                "duration": 30.1,
                "distance": 96.5,
                "name": "",
                "weight": 30.1,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 172,
                  "location": [76.99112, 11.004944],
                  "type": "turn",
                  "bearing_before": 80,
                  "modifier": "right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 0,
                    "entry": [false, true, true],
                    "location": [76.991222, 11.004082],
                    "bearings": [0, 90, 270]
                  }
                ],
                "driving_side": "right",
                "geometry": "ofdbAcj|tM@S?gAb@M",
                "duration": 26,
                "distance": 71.4,
                "name": "",
                "weight": 26,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 91,
                  "location": [76.991222, 11.004082],
                  "type": "turn",
                  "bearing_before": 172,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.991753, 11.003891],
                    "bearings": [60, 165, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.992595, 11.004164],
                    "bearings": [90, 255, 345]
                  }
                ],
                "driving_side": "right",
                "geometry": "iedbAmm|tMY{@[mBCq@",
                "duration": 35.7,
                "distance": 125.2,
                "name": "",
                "weight": 35.7,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 64,
                  "location": [76.991753, 11.003891],
                  "type": "turn",
                  "bearing_before": 157,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [76.992851, 11.004183],
                    "bearings": [15, 105, 195, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.992874, 11.00437],
                    "bearings": [0, 60, 180]
                  }
                ],
                "driving_side": "right",
                "geometry": "cgdbAit|tMI@I?IAGCGICI?K",
                "duration": 13.3,
                "distance": 40.9,
                "name": "Puliyakulam road",
                "weight": 13.3,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 11,
                  "location": [76.992851, 11.004183],
                  "type": "turn",
                  "bearing_before": 84,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.993028, 11.004433],
                    "bearings": [135, 255, 330]
                  }
                ],
                "driving_side": "right",
                "geometry": "uhdbAmu|tM@IBGFGFCNE",
                "duration": 9.4,
                "distance": 31.3,
                "name": "Puliyakulam road",
                "weight": 9.4,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 129,
                  "location": [76.993028, 11.004433],
                  "type": "end of road",
                  "bearing_before": 67,
                  "modifier": "sharp right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [76.993205, 11.004238],
                    "bearings": [90, 165, 225, 315]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.993868, 11.004623],
                    "bearings": [60, 240, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.994181, 11.004853],
                    "bearings": [45, 240, 330]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.994529, 11.005304],
                    "bearings": [30, 150, 210]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.994595, 11.005411],
                    "bearings": [30, 210, 330]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.994666, 11.005525],
                    "bearings": [15, 30, 210]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.995328, 11.006034],
                    "bearings": [60, 165, 240]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [76.995914, 11.006292],
                    "bearings": [15, 75, 135, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.997136, 11.006588],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [76.997608, 11.006754],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.998623, 11.007101],
                    "bearings": [75, 165, 255]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [76.99904, 11.007273],
                    "bearings": [0, 60, 240]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.000484, 11.007752],
                    "bearings": [0, 75, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.002015, 11.008085],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.002359, 11.008186],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.002772, 11.008307],
                    "bearings": [60, 180, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.003449, 11.008616],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.004165, 11.008925],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.004389, 11.009011],
                    "bearings": [75, 255, 330]
                  }
                ],
                "driving_side": "right",
                "geometry":
                    "ogdbAqv|tMAWKU}@uAm@}@kA}@MGUMWM_@S_@e@c@iAs@sBKe@Ie@W_CMi@_@}A_@yAe@oBMk@Sg@y@qBUeAOgBAOWyCi@iCScAWqA}@gCAEg@uASs@CMK]]kA]_CE]Ig@",
                "duration": 342,
                "distance": 1518.5,
                "name": "Sowripalayam Road",
                "weight": 342,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 84,
                  "location": [76.993205, 11.004238],
                  "type": "turn",
                  "bearing_before": 135,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.005758, 11.009393],
                    "bearings": [30, 105, 255]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.007621, 11.008671],
                    "bearings": [15, 120, 300]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.007801, 11.008582],
                    "bearings": [120, 195, 300]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.008565, 11.008195],
                    "bearings": [105, 210, 300]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.009587, 11.007899],
                    "bearings": [105, 180, 285]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.009639, 11.007882],
                    "bearings": [135, 285, 315]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.010782, 11.007151],
                    "bearings": [105, 180, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.011311, 11.006966],
                    "bearings": [0, 105, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.011726, 11.006821],
                    "bearings": [0, 90, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.012159, 11.006781],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.012578, 11.006749],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.012893, 11.006739],
                    "bearings": [90, 195, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.012994, 11.006728],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.013457, 11.006709],
                    "bearings": [90, 225, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.013528, 11.006714],
                    "bearings": [90, 150, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.014212, 11.006769],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.014251, 11.006772],
                    "bearings": [90, 270, 315]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.014883, 11.006741],
                    "bearings": [90, 180, 270]
                  }
                ],
                "driving_side": "right",
                "geometry":
                    "ugebA_e_uMb@sC^aAjA}CJYDIjAoC?INwAj@sBBI\\Yz@kAb@cARy@Lg@TaA\\sA@CDqADsA@Q?k@@SB}A?MKgC?GD}BBcA",
                "duration": 249.4,
                "distance": 1102.1,
                "name": "",
                "weight": 249.4,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 102,
                  "location": [77.005758, 11.009393],
                  "type": "turn",
                  "bearing_before": 73,
                  "modifier": "slight right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 2,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.015221, 11.006716],
                    "bearings": [0, 75, 135, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.015893, 11.006219],
                    "bearings": [105, 240, 300]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.01655, 11.006144],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.016782, 11.006193],
                    "bearings": [30, 105, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.017138, 11.005453],
                    "bearings": [105, 210, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.017525, 11.005446],
                    "bearings": [75, 270, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.018367, 11.00546],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.01887, 11.005508],
                    "bearings": [0, 75, 255]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.01912, 11.005555],
                    "bearings": [15, 75, 180, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.020605, 11.00586],
                    "bearings": [75, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.02212, 11.006265],
                    "bearings": [75, 180, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.022229, 11.006304],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.022292, 11.006327],
                    "bearings": [15, 75, 255]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.022747, 11.006369],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.02395, 11.006256],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.024261, 11.006226],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.024377, 11.006215],
                    "bearings": [90, 195, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.024583, 11.006201],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.024865, 11.006201],
                    "bearings": [75, 270, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.025227, 11.006269],
                    "bearings": [75, 180, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.026081, 11.006631],
                    "bearings": [75, 165, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.027278, 11.007029],
                    "bearings": [75, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.027774, 11.007201],
                    "bearings": [60, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.028131, 11.007451],
                    "bearings": [45, 165, 225]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.02837, 11.007643],
                    "bearings": [45, 135, 225, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.02848, 11.007743],
                    "bearings": [45, 225, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.028743, 11.007971],
                    "bearings": [45, 165, 225, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.029088, 11.008353],
                    "bearings": [30, 165, 225]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.029271, 11.008641],
                    "bearings": [15, 75, 210, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.02939, 11.009116],
                    "bearings": [30, 195, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.029575, 11.009507],
                    "bearings": [60, 210, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.029695, 11.009582],
                    "bearings": [60, 165, 240]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.030172, 11.009754],
                    "bearings": [75, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.030877, 11.009992],
                    "bearings": [60, 165, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.030938, 11.010033],
                    "bearings": [75, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.031698, 11.010298],
                    "bearings": [60, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.031799, 11.010342],
                    "bearings": [75, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.032259, 11.010442],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.032296, 11.010449],
                    "bearings": [75, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.033438, 11.010678],
                    "bearings": [75, 165, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.034005, 11.011045],
                    "bearings": [30, 165, 195]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.034384, 11.011275],
                    "bearings": [75, 255, 315]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.034691, 11.011389],
                    "bearings": [75, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.034937, 11.011452],
                    "bearings": [90, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.035343, 11.011492],
                    "bearings": [90, 195, 270, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.036187, 11.011598],
                    "bearings": [75, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.036225, 11.011608],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.036768, 11.011749],
                    "bearings": [90, 165, 255, 345]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.037295, 11.011754],
                    "bearings": [15, 90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.037796, 11.011775],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.038252, 11.011794],
                    "bearings": [90, 180, 270]
                  }
                ],
                "driving_side": "right",
                "geometry":
                    "_wdbAc`auMjAuAVo@Ny@@}@AKIm@FUzBg@NIDOE}@E]?y@By@?U?c@I_A?IIg@{@iHGc@Eo@i@sCYeAEUEKI[@_A?ETiFD}@@WBg@@i@AOGw@EOOu@_@sAW_@w@cDWkA[uAEKGQU]SWe@o@SUm@s@e@e@e@_@]S[Og@G[E[ImAe@GGEOOc@Qy@Ms@C]AMGMS_@GKs@sCACGSMo@Ek@AGm@cFEa@Ke@IO[UQCC?SQUw@U}@Kq@GoAI_BCe@Gc@AG[kB?iBEcBAyACyA",
                "duration": 661.1,
                "distance": 2872.5,
                "name": "",
                "weight": 661.1,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 130,
                  "location": [77.015221, 11.006716],
                  "type": "turn",
                  "bearing_before": 94,
                  "modifier": "slight right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.038699, 11.011812],
                    "bearings": [0, 90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.042129, 11.01113],
                    "bearings": [165, 285, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.042264, 11.010707],
                    "bearings": [165, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.042374, 11.010365],
                    "bearings": [165, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.042526, 11.009888],
                    "bearings": [165, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.042643, 11.009528],
                    "bearings": [165, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.042811, 11.009012],
                    "bearings": [165, 255, 345]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.043126, 11.008043],
                    "bearings": [75, 165, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.04328, 11.007569],
                    "bearings": [165, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.043398, 11.007205],
                    "bearings": [165, 255, 345]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.043528, 11.006806],
                    "bearings": [60, 165, 255, 345]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.043619, 11.006526],
                    "bearings": [75, 165, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.043638, 11.006468],
                    "bearings": [165, 240, 345]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.04373, 11.006184],
                    "bearings": [75, 165, 345]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.043821, 11.005905],
                    "bearings": [75, 165, 195, 345]
                  }
                ],
                "driving_side": "right",
                "geometry":
                    "yvebA{reuMeADCEASKQQUB]JsBCSFg@Jk@f@uBPKJGVeAH[PQTO`@q@X_@DWrAYbAU~A_@fAUfAW^I`E_A|A]fAWnAYv@QJCx@Qt@QpAY",
                "duration": 270.6,
                "distance": 1120.7,
                "name": "",
                "weight": 270.6,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 354,
                  "location": [77.038699, 11.011812],
                  "type": "turn",
                  "bearing_before": 87,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.043954, 11.005496],
                    "bearings": [60, 165, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.04573, 11.00623],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.046134, 11.006346],
                    "bearings": [90, 150, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.046534, 11.006384],
                    "bearings": [90, 270, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.046862, 11.006415],
                    "bearings": [90, 270, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.046983, 11.006426],
                    "bearings": [75, 165, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.047969, 11.006604],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.048027, 11.006615],
                    "bearings": [75, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.048437, 11.006746],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.048929, 11.006903],
                    "bearings": [15, 165, 195, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.048983, 11.007085],
                    "bearings": [45, 195, 315]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.049371, 11.007325],
                    "bearings": [60, 165, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.049888, 11.00756],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.049949, 11.007587],
                    "bearings": [60, 165, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.050559, 11.00788],
                    "bearings": [60, 240, 330]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.050593, 11.007898],
                    "bearings": [60, 150, 240]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.050813, 11.008019],
                    "bearings": [60, 150, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.051041, 11.008144],
                    "bearings": [60, 240, 330]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.051327, 11.008333],
                    "bearings": [60, 150, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.051577, 11.008513],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.05189, 11.008738],
                    "bearings": [45, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.052227, 11.009022],
                    "bearings": [60, 165, 225, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.052577, 11.009234],
                    "bearings": [60, 165, 240]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.052876, 11.009368],
                    "bearings": [60, 165, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.052987, 11.009415],
                    "bearings": [75, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.053228, 11.009487],
                    "bearings": [90, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.053443, 11.009506],
                    "bearings": [90, 270, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.054221, 11.009589],
                    "bearings": [75, 165, 270]
                  },
                  {
                    "out": 0,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.054972, 11.009747],
                    "bearings": [75, 105, 150, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.059899, 11.012207],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.060461, 11.012399],
                    "bearings": [75, 255, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.06158, 11.012815],
                    "bearings": [75, 150, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.062518, 11.013145],
                    "bearings": [75, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.062858, 11.013361],
                    "bearings": [45, 165, 225]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.064426, 11.01494],
                    "bearings": [15, 195, 330]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.065794, 11.015909],
                    "bearings": [30, 135, 210, 330]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.066246, 11.016503],
                    "bearings": [30, 180, 210]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.066321, 11.01663],
                    "bearings": [45, 210, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.066516, 11.016872],
                    "bearings": [15, 225, 315]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.066638, 11.017239],
                    "bearings": [45, 195, 270]
                  }
                ],
                "driving_side": "right",
                "geometry":
                    "kodbAusfuMqCcJSq@C]EoAGaAAWa@eECKYqA]_B?Ae@IQW]u@EKg@{AEKc@qAUg@CEWk@Wm@KSYe@c@q@m@}@a@g@U[Wa@Qc@KUOe@IUMo@Ci@ASE_AGgAKoAIg@I]}AgHa@sAu@wAsByDsCcFMYOa@Ok@S_AQo@s@eC_@yAaA{DI[_@g@gC}CkAsBgBg@OEuC}F[KuB{AYMQI]]ECcASSU",
                "duration": 673.4,
                "distance": 2913.1,
                "name": "Ondipudur - Irugur Road",
                "weight": 673.4,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 66,
                  "location": [77.043954, 11.005496],
                  "type": "turn",
                  "bearing_before": 161,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.066754, 11.017339],
                    "bearings": [30, 195, 225]
                  },
                  {
                    "out": 2,
                    "in": 0,
                    "entry": [false, true, true],
                    "location": [77.066627, 11.016904],
                    "bearings": [15, 120, 210]
                  }
                ],
                "driving_side": "right",
                "geometry": "kyfbAebkuMVBv@NFBZRd@^XHlD?|B?xACdFO|CEhBMj@M",
                "duration": 153,
                "distance": 631.2,
                "name": "",
                "weight": 153,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 195,
                  "location": [77.066754, 11.017339],
                  "type": "turn",
                  "bearing_before": 47,
                  "modifier": "uturn"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.066587, 11.011798],
                    "bearings": [60, 165, 345]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.074615, 11.017335],
                    "bearings": [0, 45, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.086321, 11.024389],
                    "bearings": [45, 195, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.09651, 11.028039],
                    "bearings": [90, 180, 255]
                  }
                ],
                "driving_side": "right",
                "geometry":
                    "wvebAeakuMSe@[y@Yk@i@o@eAi@_@M_@AmAFyAB{@C_CIc@@g@EYIWSU]_A_BGU?O\\eABQ?SGSMSKQES?S@WBKBSAO@SF[Pm@FWBa@C[CO?O?_@Ac@Ec@A[CWEQOWMWM_@Ic@E]C[GUWq@Wi@a@k@a@_@a@W]YUUQYCS?MOMYa@QWc@[SWWe@Qa@_@e@g@k@[g@c@w@Wi@Qu@S_AQ_BG{@MmBSoCQeAUu@Yi@i@y@s@eAyAqBo@gAS]c@s@]i@]a@Y[s@w@c@e@MMEMGSO}@Ke@WuAQc@[s@_@i@e@u@e@s@i@}@UWWQUMq@Sq@UUE[_@GsAIoAGcDKoA]aDYuBUoAa@_AkB_DgByBu@qAeAwB[s@Q}@s@_E[_Bc@iB[mBYgAAY",
                "duration": 918,
                "distance": 4063.4,
                "name": "Bypass-Ravathur Link Road",
                "weight": 918,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 60,
                  "location": [77.066587, 11.011798],
                  "type": "turn",
                  "bearing_before": 161,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.09664, 11.028052],
                    "bearings": [135, 270, 330]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.097048, 11.02769],
                    "bearings": [120, 180, 315]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.09791, 11.027548],
                    "bearings": [15, 120, 210, 285]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 133,
                  "location": [77.09664, 11.028052],
                  "type": "turn",
                  "bearing_before": 82,
                  "modifier": "right"
                },
                "duration": 514.7,
                "distance": 2246.6,
                "name": "Chinniyampalayam - Ravathur - Somanur Road",
                "geometry":
                    "i|hbA_}puMb@g@b@i@Na@Ds@?y@D[N[Zg@Ja@@c@Ke@_AwAm@yAw@uAs@kAaAeAiBaCyBgC[u@iAcCw@uA_@q@K{@ImAI{@Q{@iAoCs@eB}@sCw@wBW_@aAy@Sc@WiAKaACwAOsAQaCi@{CO_AKsDIqABi@\\{Ad@qADk@Ec@YgAU_A",
                "ref": "MDR879",
                "weight": 514.7,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 2,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.115047, 11.033503],
                    "bearings": [165, 255, 330]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 336,
                  "location": [77.115047, 11.033503],
                  "type": "end of road",
                  "bearing_before": 68,
                  "modifier": "left"
                },
                "duration": 334.2,
                "distance": 1386,
                "name": "Sulur Railway Feeder Road",
                "geometry":
                    "k~ibAaptuMWHc@Bc@CaAIy@MeAWe@U_@UYIYAsEIuEOwBIc@C}Mu@mAKa@GqASkB[eBe@yDoAeI{D",
                "ref": "MDR438",
                "weight": 334.2,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.117857, 11.045437],
                    "bearings": [30, 90, 210]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.132199, 11.057546],
                    "bearings": [60, 165, 240]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.132567, 11.057819],
                    "bearings": [30, 135, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.132682, 11.05816],
                    "bearings": [15, 180, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.134291, 11.059305],
                    "bearings": [75, 150, 240]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.13457, 11.0594],
                    "bearings": [75, 150, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.134758, 11.059463],
                    "bearings": [75, 150, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.134951, 11.059529],
                    "bearings": [75, 150, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.142215, 11.062839],
                    "bearings": [75, 135, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.142304, 11.062854],
                    "bearings": [75, 105, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.146069, 11.065555],
                    "bearings": [60, 165, 240]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.158279, 11.068368],
                    "bearings": [105, 180, 285]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.158747, 11.06832],
                    "bearings": [0, 105, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.159504, 11.068292],
                    "bearings": [105, 270, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.160732, 11.06838],
                    "bearings": [75, 180, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.173861, 11.077252],
                    "bearings": [60, 225, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.174831, 11.077896],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.175923, 11.078621],
                    "bearings": [60, 240, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.176498, 11.079036],
                    "bearings": [45, 225, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.17817, 11.080029],
                    "bearings": [75, 150, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.180958, 11.081101],
                    "bearings": [60, 210, 285]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.182697, 11.081662],
                    "bearings": [60, 225, 345]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.186624, 11.082914],
                    "bearings": [75, 255, 330]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.187821, 11.083278],
                    "bearings": [75, 255, 330]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 82,
                  "location": [77.117857, 11.045437],
                  "type": "turn",
                  "bearing_before": 28,
                  "modifier": "right"
                },
                "duration": 2149.9,
                "distance": 9539.8,
                "name": "Chinniyampalayam - Ravathur - Somanur Road",
                "geometry":
                    "_ilbAsauuMe@eIR_Bj@mDz@o@fA_AFkBk@oByAcBgFcCwCgBcYwSaJkFiIaGsGeCcCaBmCuEu@iAMG[KYA_@K[Uc@]]q@gBoEQw@Ke@Me@a@aBWWs@g@iBmEgD{Hs@kBoCwIw@eDMy@AM?I?OIu@AOMsAEw@?eAA[Ia@OWIIMGUAyCPYAWKqEyJa@_AcD{HQo@CY`@cDV}AL[RSr@UTQFSGg@WgAO}@?QLWRWDUGWsBsD_@Yc@i@gD{P_AwD]aBQyA[[]QIWEmA@s@@GFa@?o@@KDa@Bs@C_AJk@@_@_@iDGm@aD{JqBgFgGaKkA}GeAcDmEgG{F}F{G{EuAeC_@i@mB{AuAaBW[aCaEoCyEg@{@k@w@q@o@aAmA[u@u@yCg@uBkAwDaAgFQKMKIGJmDE_@I_@aBeBGOo@aASw@}@{Gk@cDu@aDMc@Og@_@oBYwA_@qBS{@",
                "ref": "MDR879",
                "weight": 2149.9,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false, true],
                    "location": [77.188693, 11.083537],
                    "bearings": [60, 135, 255, 315]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.188998, 11.083204],
                    "bearings": [60, 150, 315]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.192559, 11.074466],
                    "bearings": [180, 255, 345]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 137,
                  "location": [77.188693, 11.083537],
                  "type": "turn",
                  "bearing_before": 71,
                  "modifier": "right"
                },
                "duration": 288.7,
                "distance": 1167,
                "name": "Kamanaikenpalayam - Annur Road",
                "geometry":
                    "cwsbAi|bvMbA}@l@]vF{CnAs@pBu@rDk@nDy@|Aa@`HiBxM_Dj@QrBM",
                "ref": "SH165",
                "weight": 288.7,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 0,
                    "entry": [false, true, true],
                    "location": [77.192633, 11.073892],
                    "bearings": [0, 75, 180]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.205462, 11.079514],
                    "bearings": [45, 150, 210]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.205701, 11.079708],
                    "bearings": [45, 165, 225]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.206008, 11.079946],
                    "bearings": [60, 165, 225]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.206222, 11.080097],
                    "bearings": [60, 150, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.206349, 11.080182],
                    "bearings": [60, 240, 315]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.210774, 11.082782],
                    "bearings": [60, 240, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.21266, 11.08385],
                    "bearings": [60, 135, 240]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.213723, 11.085098],
                    "bearings": [45, 210, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.214154, 11.085622],
                    "bearings": [30, 210, 315]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.22324, 11.089858],
                    "bearings": [75, 135, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.22673, 11.090603],
                    "bearings": [30, 165, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.233714, 11.093564],
                    "bearings": [15, 105, 210]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.243061, 11.097026],
                    "bearings": [15, 135, 225]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.248953, 11.101354],
                    "bearings": [30, 90, 255]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.249109, 11.101347],
                    "bearings": [105, 270, 330]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.251322, 11.101609],
                    "bearings": [75, 150, 270]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 81,
                  "location": [77.192633, 11.073892],
                  "type": "turn",
                  "bearing_before": 171,
                  "modifier": "left"
                },
                "duration": 1744.6,
                "distance": 7740,
                "name": "Tirupur - Somanur Road",
                "geometry":
                    "yzqbA}tcvMo@gJ_@}F]wEKk@g@[}Cs@[QMc@GwCBqAGmAQgAs@gC]_C_AoEe@sCc@mC_@uBUe@e@a@cBc@uAg@aCkAeBaAACg@o@a@i@MS]i@GKGMs@mAsB}D}CuGkCuFu@{Ai@gAqBgEy@iBy@yA[g@YOwAg@q@Yw@y@o@[wAs@k@g@Wg@a@aCk@uC]mA_@aASa@g@aAw@aAc@oAo@cAiAsAe@cAa@aAw@sAmAyAq@_AOm@Au@P{FEaAOiA]_C{@aHm@qFKe@e@U}AWoAi@{BJ{@_@SiHoAgJ_@wCKcCMiCGaDG]UO{@Ww@UoAg@uCeAUQWi@Gg@MuCMeDS[y@QYo@QsBIsAwAaGk@oFB}@L_APsHGg@]_@aAWy@[k@g@u@aAyAoBgCoCm@gBcAeD{B}D_CqDm@{ACa@?_@Nu@?YIa@[u@Me@E]@o@C}@EoAAOKgAi@cB",
                "ref": "SH169",
                "weight": 1744.6,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.252177, 11.101882],
                    "bearings": [60, 90, 240]
                  }
                ],
                "driving_side": "right",
                "geometry": "wiwbAciovMCaAZqBZeA",
                "duration": 32,
                "distance": 141.5,
                "name": "",
                "weight": 32,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 85,
                  "location": [77.252177, 11.101882],
                  "type": "turn",
                  "bearing_before": 66,
                  "modifier": "slight right"
                }
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.253428, 11.101622],
                    "bearings": [120, 285, 315]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.259142, 11.102123],
                    "bearings": [90, 195, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.264451, 11.100857],
                    "bearings": [45, 180, 255]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.271406, 11.10245],
                    "bearings": [0, 90, 180, 255]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.280137, 11.101981],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.28649, 11.102506],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.287599, 11.102198],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.287838, 11.102118],
                    "bearings": [105, 180, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.288993, 11.101594],
                    "bearings": [120, 210, 300]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.289649, 11.101368],
                    "bearings": [105, 180, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.289862, 11.101311],
                    "bearings": [90, 180, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.294576, 11.10126],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.29719, 11.101522],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.297703, 11.101573],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.297975, 11.101601],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.29836, 11.10166],
                    "bearings": [0, 60, 180, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.302218, 11.101656],
                    "bearings": [0, 90, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.303921, 11.101572],
                    "bearings": [0, 105, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.305217, 11.101421],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.305605, 11.101413],
                    "bearings": [90, 180, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.305675, 11.101411],
                    "bearings": [0, 90, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.30756, 11.101241],
                    "bearings": [0, 105, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.307936, 11.101184],
                    "bearings": [0, 105, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.309557, 11.100679],
                    "bearings": [120, 195, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.309607, 11.100658],
                    "bearings": [15, 105, 300]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.309978, 11.100518],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.310149, 11.100456],
                    "bearings": [30, 105, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.311867, 11.099928],
                    "bearings": [0, 105, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.313869, 11.099757],
                    "bearings": [30, 105, 270]
                  },
                  {
                    "out": 0,
                    "in": 1,
                    "entry": [true, false, true],
                    "location": [77.314168, 11.099706],
                    "bearings": [105, 285, 345]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.31426, 11.099679],
                    "bearings": [105, 180, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.314965, 11.099494],
                    "bearings": [15, 90, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.315907, 11.099392],
                    "bearings": [105, 180, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.316333, 11.099301],
                    "bearings": [15, 105, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.31673, 11.099208],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.317246, 11.099086],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.317718, 11.098975],
                    "bearings": [0, 105, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.317755, 11.098966],
                    "bearings": [105, 180, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.318081, 11.098889],
                    "bearings": [0, 105, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.318284, 11.098842],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.31886, 11.098904],
                    "bearings": [75, 180, 255]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.319448, 11.098995],
                    "bearings": [15, 90, 270]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.319966, 11.098948],
                    "bearings": [105, 210, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.320279, 11.098829],
                    "bearings": [15, 105, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.320776, 11.098494],
                    "bearings": [15, 150, 315]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.321171, 11.097957],
                    "bearings": [15, 150, 195, 330]
                  },
                  {
                    "out": 1,
                    "in": 3,
                    "entry": [true, true, true, false],
                    "location": [77.322955, 11.097219],
                    "bearings": [15, 90, 195, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.323436, 11.097175],
                    "bearings": [90, 195, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.324337, 11.097105],
                    "bearings": [15, 105, 270]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.32602, 11.096771],
                    "bearings": [30, 105, 285]
                  },
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.326585, 11.096551],
                    "bearings": [105, 195, 285]
                  },
                  {
                    "out": 1,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.327623, 11.09629],
                    "bearings": [15, 90, 270]
                  }
                ],
                "driving_side": "right",
                "maneuver": {
                  "bearing_after": 116,
                  "location": [77.253428, 11.101622],
                  "type": "new name",
                  "bearing_before": 111,
                  "modifier": "straight"
                },
                "duration": 1919.2,
                "distance": 8508.5,
                "name": "Tirupur - Somanur Road",
                "geometry":
                    "chwbA}povMJWFiA^kCDeC?_BUgAmBwBWs@SiAEcA@yBToC?UAoDS}KV}Af@uAt@sAj@}@|@{@f@c@N[EUOS{BiAo@c@Oe@E_BOqBOyBA{JEyESsBo@qDWwDbAkDxAmDn@gEW_Ec@{M[{IWiHuBsLa@mBC}Al@kEZ_C\\{B^aBNo@d@mBbAwBRc@V_BJi@O}Gd@_NKqDs@iOIeBEw@E}@EMo@oBi@w@SW]eAVqBfAuEj@uDBgGLkAZ}C@eB@mA?M@yC^}EHcA@Gx@{Eh@gBBIJ[Nm@Ja@pA_FVwBTgBJgH@[F_@DQb@{B@QR{D@ONcAPoAVgBT}A@GN_AHg@D]QuAU{A@YHgBV}@J]v@eADGbBeAPKvAcCh@uE@IDuALsDB[~@sH?Ej@kBj@kBFaBBs@",
                "ref": "SH169",
                "weight": 1919.2,
                "mode": "cycling"
              },
              {
                "intersections": [
                  {
                    "out": 0,
                    "in": 2,
                    "entry": [true, true, false],
                    "location": [77.327879, 11.096267],
                    "bearings": [45, 135, 270]
                  }
                ],
                "driving_side": "right",
                "geometry": "ufvbAgb~vMs@i@Uk@oAe@WSSMIQ_@cAMa@a@c@Mc@EC",
                "duration": 60.4,
                "distance": 268.9,
                "name": "Mangalam Royapuram Connection Road",
                "weight": 60.4,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 37,
                  "location": [77.327879, 11.096267],
                  "type": "turn",
                  "bearing_before": 94,
                  "modifier": "left"
                }
              },
              {
                "intersections": [
                  {
                    "in": 0,
                    "entry": [true],
                    "location": [77.32965, 11.097813],
                    "bearings": [216]
                  }
                ],
                "driving_side": "right",
                "geometry": "ipvbAim~vM",
                "duration": 0,
                "distance": 0,
                "name": "Mangalam Royapuram Connection Road",
                "weight": 0,
                "mode": "cycling",
                "maneuver": {
                  "bearing_after": 0,
                  "location": [77.32965, 11.097813],
                  "type": "arrive",
                  "bearing_before": 36,
                  "modifier": "right"
                }
              }
            ],
            "weight": 11490.7,
            "distance": 49535.4,
            "summary":
                "Chinniyampalayam - Ravathur - Somanur Road, Tirupur - Somanur Road",
            "duration": 11490.7
          }
        ],
        "weight_name": "duration",
        "weight": 11490.7,
        "distance": 49535.4,
        "duration": 11490.7
      }
    ]
  };

//  "routes": [
//         {
//             "legs": [
//                 {
//                     "steps": [
//                         {
//                             "intersections": [
//                                 {
//                                     "out": 0,
//                                     "entry": [
//                                         true
//                                     ],
//                                     "location": [
//                                         76.962869,
//                                         11.001639
//                                     ],
//                                     "bearings": [
//                                         87
//                                     ]
//                                 },

  // json.forEach((key, value) {
  json['routes'][0]['legs'][0]['steps'].forEach((e) {
    e['intersections'].forEach((e) {
      // log("${e['location']}");
      points.add([e['location'][1], e['location'][0]]);
    });

    // e['legs'][0]
  });
  setJSON();
  // log("POINTS ${points.length} ${points}");
  print("JSON ${jsonEncode(coimbatoreToTirupur)}");
}

setJSON() {
  coimbatoreToTirupur = {
    "type": "FeatureCollection",
    "crs": {
      "type": "name",
      "properties": {"name": "urn:ogc:def:crs:OGC:1.3:CRS84"}
    },
    "features": [
      {
        "type": "Feature",
        "properties": {"name": "London Heathrow - Big Ben"},
        "geometry": {"type": "Polygon", "coordinates": points}
      }
    ]
  };
}
