import 'package:ahmedzghal/pages/adresse.page.dart';
import 'package:ahmedzghal/pages/experience.page.dart';
import 'package:ahmedzghal/pages/home.page.dart';
import 'package:ahmedzghal/pages/profil.page.dart';
import 'package:ahmedzghal/pages/project.page.dart';
import 'package:ahmedzghal/pages/settings.page.dart';
import 'package:ahmedzghal/pages/skills.page.dart';
import 'package:ahmedzghal/pages/splash.page.dart';
import 'package:ahmedzghal/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = {
    '/home': (context) => HomePage(),
    '/profil': (context) => Profilpage(),
    '/adresse': (context) => Adressepage(),
    '/skills': (context) => Skillspage(),
    '/settings': (context) => Settingspage(),
    '/projects': (context) => Projectpage(),
    '/experience': (context) => Experiencepage(),
    '/splash': (context) => Splash(),
  };

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => UiProvider()..init(),
      child: Consumer<UiProvider>(
        builder: (context, UiProvider notifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Dark Theme',
            themeMode: notifier.isDark ? ThemeMode.dark : ThemeMode.light,
            darkTheme: notifier.isDark ? notifier.darkTheme : notifier.lightTheme,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            initialRoute: '/splash',
            routes: routes,
          );
        },
      ),
    );
  }
}
