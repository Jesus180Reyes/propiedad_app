import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:propiedad_app/models/polygon_model.dart';

class MapProvider extends ChangeNotifier {
  final CustomPolygons points = CustomPolygons(
    id: "1",
    routes: [
      const LatLng(13.171576, -87.075614),
      const LatLng(13.170608, -87.075577),
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
}
