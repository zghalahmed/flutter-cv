import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../menu/drawer.widget.dart';

class Adressepage extends StatelessWidget {
  const Adressepage({Key? key});

  // Coordonnées de l'adresse professionnelle
  static const double latitude = 48.8566;
  static const double longitude = 2.3522;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Profil', style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Zghal Ahmed',
              style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Affichage de la carte Google Maps
            Container(
              height: 300,
              child: MapWidget(latitude: latitude, longitude: longitude),
            ),
            SizedBox(height: 20),
            // Adresse professionnelle
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.green),
                SizedBox(width: 10),
                Text(
                  'Adresse professionnelle:',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                SizedBox(width: 8),
                Text(
                  'Tunis, sfax', // Adresse professionnelle à afficher
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Ajoutez d'autres informations sur le profil ici
          ],
        ),
      ),
    );
  }
}

// Widget pour afficher la carte Google Maps
class MapWidget extends StatelessWidget {
  final double latitude;
  final double longitude;

  const MapWidget({required this.latitude, required this.longitude});

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(latitude, longitude),
        zoom: 15,
      ),
      markers: {
        Marker(
          markerId: MarkerId("ProfessionalAddress"),
          position: LatLng(latitude, longitude),
          infoWindow: InfoWindow(
            title: "Adresse Professionnelle",
          ),
        ),
      },
    );
  }
}
