import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'home.page.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000, // Durée de l'animation en millisecondes
      splash: 'images/profile.png',
      nextScreen: HomePage(),
      splashTransition: SplashTransition.rotationTransition, // Type de transition de l'écran de démarrage

      backgroundColor: Colors.blue, // Couleur de fond de l'écran de démarrage
    );
  }
}
