/*
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  static const LatLng _pGooglePlex = LatLng(37.4223, -122.0848);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
          initialCameraPosition: CameraPosition(
        target: _pGooglePlex,
        zoom: 13,
      )),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  static const LatLng _pGooglePlex = LatLng(37.4223, -122.0848);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);  // Geri gitme işlemi
              },
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.brown,
              ),
            ),
            const SizedBox(height: 20.0),  // Geri butonu ile harita arasında boşluk
            Expanded(
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: _pGooglePlex,  // Googleplex'in konumu
                  zoom: 13,  // Harita yakınlaştırma düzeyi
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}