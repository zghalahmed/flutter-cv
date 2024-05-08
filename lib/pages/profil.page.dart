import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../menu/drawer.widget.dart';

class Profilpage extends StatelessWidget {
  final double coverHeight = 250;
  final double profilHeight = 144;

  const Profilpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profilHeight / 2;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'), // Titre de la page
      ),
      drawer: MyDrawer(),
      backgroundColor: Color(0xfffafafa),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center, // Utilisation du widget Stack
            children: [
              buildCoverImage(),
              Positioned(
                top: top,
                child: buildProfileImage(), // Ajout du widget de l'image de profil
              ),
              // Ajoutez d'autres widgets ici, positionnés par rapport à l'image de couverture
            ],
          ),
          buildContent(),
          SizedBox(height: 20), // Espacement
          Text(
            'Software Engineering Student', // Titre
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue, // Couleur du texte
            ),
          ),
          SizedBox(height: 20), // Espacement
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.email),
                onPressed: () {
                  launch('mailto:zghalahmeda@gmail.com'); // Ouvrir l'email
                },
                color: Colors.red, // Couleur de l'icône
              ),
              IconButton(
                icon: Icon(Icons.link),
                onPressed: () {
                  launch('https://www.linkedin.com/in/zghal-ahmed-85bb9a202/'); // Ouvrir le lien
                },
                color: Colors.blue, // Couleur de l'icône
              ),
              IconButton(
                icon: Icon(Icons.work),
                onPressed: () {
                  launch('https://github.com/zghalahmed'); // Ouvrir GitHub
                },
                color: Colors.black, // Couleur de l'icône
              ),
            ],
          ),
          SizedBox(height: 20), // Espacement
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue, // Couleur du texte
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Etudiant en ingénierie informatique, je suis passionné par les nouvelles technologies et le développement logiciel. Je suis à la recherche d\'une opportunité professionnelle qui me permettra de mettre en pratique mes connaissances et de contribuer à des projets innovants.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87, // Couleur du texte
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.person, color: Colors.blue), // Couleur de l'icône
                    SizedBox(width: 10),
                    Text(
                      'Nom: Ahmed Zghal',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87, // Couleur du texte
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.calendar_today, color: Colors.blue), // Couleur de l'icône
                    SizedBox(width: 10),
                    Text(
                      'Date de naissance: 11/09/1998',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87, // Couleur du texte
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.phone, color: Colors.blue), // Couleur de l'icône
                    SizedBox(width: 10),
                    Text(
                      'Téléphone: +216 25072802',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87, // Couleur du texte
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCoverImage() {
    return Container(
      color: Colors.grey, // Couleur de fond grise
      child: Image.asset(
        'images/background.jpg', // Image de fond
        width: double.infinity,
        height: coverHeight,
        fit: BoxFit.cover, // Paramètre fit
      ),
    );
  }

  Widget buildProfileImage() {
    return CircleAvatar(
      radius: profilHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: AssetImage('images/img.jpg'),
    );
  }

  Widget buildContent() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        '',// Votre contenu
        style: TextStyle(fontSize: 18.0),


      ),
    );
  }
}
