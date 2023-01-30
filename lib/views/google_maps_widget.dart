import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../services/map_provider.dart';

class GoogleMapsWidget extends StatelessWidget {
  const GoogleMapsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMapNormal = Provider.of<MapProvider>(context).isNormalMap;
    final mapList = Provider.of<MapProvider>(context).list;
    final polygonPoints = Provider.of<MapProvider>(context).points;
    const CameraPosition kGooglePlex = CameraPosition(
      target: LatLng(13.171451, -87.074530),
      zoom: 16.5,
    );
    return GoogleMap(
      buildingsEnabled: true,
      mapToolbarEnabled: true,
      compassEnabled: true,
      mapType: isMapNormal ? MapType.normal : MapType.satellite,
      initialCameraPosition: kGooglePlex,
      markers: mapList.map((e) => e).toSet(),
      polygons: {
        Polygon(
          polygonId: PolygonId(polygonPoints.id),
          points: polygonPoints.routes,
          strokeWidth: 2,
          fillColor: const Color.fromARGB(255, 190, 190, 190).withOpacity(0.2),
        ),
      },
    );
  }
}
