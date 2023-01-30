import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:propiedad_app/models/polygon_model.dart';

class MapProvider extends ChangeNotifier {
  bool isNormalMap = true;
  final CustomPolygons points = CustomPolygons(
    id: "1",
    routes: [
      const LatLng(13.171576, -87.075614),
      const LatLng(13.170608, -87.075577),
      const LatLng(13.170536, -87.075567),
      const LatLng(13.170446, -87.075051),
      const LatLng(13.170419, -87.074432),
      const LatLng(13.170464, -87.073989),
      const LatLng(13.170474, -87.071849),
      const LatLng(13.170636, -87.071932),
      const LatLng(13.171224, -87.072015),
      const LatLng(13.171532, -87.072006),
      const LatLng(13.171613, -87.071969),
      const LatLng(13.171776, -87.071969),
      const LatLng(13.171938, -87.072117),
      const LatLng(13.172119, -87.072273),
      const LatLng(13.172210, -87.072449),
      const LatLng(13.172390, -87.072578),
      const LatLng(13.172517, -87.072643),
      const LatLng(13.172626, -87.072670),
      const LatLng(13.172924, -87.072772),
      const LatLng(13.173204, -87.072809),
      const LatLng(13.173277, -87.072827),
      const LatLng(13.173059, -87.073593),
      const LatLng(13.172996, -87.073815),
      const LatLng(13.172969, -87.074082),
      const LatLng(13.171820, -87.075734),
    ],
  );

  final List<Marker> list = const [
    // List of Markers Added on Google Map
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(13.171576, -87.075614),
        infoWindow: InfoWindow(
          title: 'Arbol 1',
        )),

    Marker(
        markerId: MarkerId('2'),
        position: LatLng(13.171451, -87.074530),
        infoWindow: InfoWindow(
          title: 'Arbol 2',
        )),

    Marker(
        markerId: MarkerId('3'),
        position: LatLng(13.171566, -87.072031),
        infoWindow: InfoWindow(
          title: 'Arbol 3',
        )),
  ];

  bool cambiarDisenoMapa() {
    if (!isNormalMap) {
      notifyListeners();
      return isNormalMap = true;
    }
    isNormalMap = false;
    notifyListeners();
    return true;
  }
}
