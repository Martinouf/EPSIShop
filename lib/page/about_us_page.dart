import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class AboutUsPage extends StatelessWidget {
  AboutUsPage({super.key});
  final mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => mapController.move(LatLng(51.275754845716286, 30.222829637526395), 21),
        child: Icon(Icons.gps_fixed),
      ),
        body: FlutterMap(
          options: MapOptions(
              initialCenter: LatLng(51.275754845716286, 30.222829637526395)
          ),
          mapController: mapController,
          children: [
            TileLayer(
                urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"),
            const MarkerLayer(
                markers: [
                 Marker(point: LatLng(51.275754845716286, 30.222829637526395), child: Icon(Icons.attractions_outlined))
                ]
            )
          ],
        ),
    );
  }
}
