import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';

class Projectpage extends StatelessWidget {
  const Projectpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Projects', style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ProjectCard(
              title: ' Site Web E-Commerce',
              description: 'Développement site web e-commerce en utilisant PHP et MySQL',
              imageUrl: 'images/ecommerce.jpg', // Mettez ici l'URL ou le chemin de votre image
            ),
            SizedBox(height: 20),
            ProjectCard(
              title: 'systeme de controle d acces intelligent dans les aeroports',
              description: 'Conception et implementation dun systeme de controle d acces intelligent dans les aéroports basé sur la reconnaissance faciale',
              imageUrl: 'images/project1.jpg', // Mettez ici l'URL ou le chemin de votre image
            ),
            ProjectCard(
              title: 'Systéme Parking intelligent des voitures',
              description: 'Réalisation d un système parking intelligent des voitures à base d une carte Arduino',
              imageUrl: 'images/arduino.webp', // Mettez ici l'URL ou le chemin de votre image
            )

            // Ajoutez autant de ProjectCard que nécessaire pour représenter vos projets
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const ProjectCard({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
