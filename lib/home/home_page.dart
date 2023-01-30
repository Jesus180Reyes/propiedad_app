import 'package:flutter/material.dart';
import 'package:propiedad_app/services/map_provider.dart';
import 'package:propiedad_app/views/google_maps_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMapNormal = Provider.of<MapProvider>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: SafeArea(
        child: Container(
          alignment: Alignment.bottomLeft,
          margin: EdgeInsets.symmetric(
            horizontal: size.width * 0.08,
            vertical: size.height * 0.02,
          ),
          child: FloatingActionButton(
            tooltip: "Toca para cambiar de mapa",
            onPressed: () {
              isMapNormal.cambiarDisenoMapa();
              print(isMapNormal.isNormalMap);
            },
            child: Icon(
              isMapNormal.isNormalMap ? Icons.map_rounded : Icons.map_outlined,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: const [
            GoogleMapsWidget(),
          ],
        ),
      ),
    );
  }
}
