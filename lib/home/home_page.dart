import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:propiedad_app/services/map_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mapList = Provider.of<MapProvider>(context).list;
    final polygonPoints = Provider.of<MapProvider>(context).points;
    const CameraPosition kGooglePlex = CameraPosition(
      target: LatLng(13.171576, -87.075614),
      zoom: 14.4746,
    );
    return Scaffold(
      body: GoogleMap(
        mapToolbarEnabled: true,
        compassEnabled: true,
        mapType: MapType.normal,
        initialCameraPosition: kGooglePlex,
        markers: mapList.map((e) => e).toSet(),
        polygons: {
          Polygon(
            polygonId: PolygonId(polygonPoints.id),
            points: polygonPoints.routes,
          ),
        },
      ),
    );
  }
}
