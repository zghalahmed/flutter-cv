
import 'package:flutter/material.dart';

class GlobalParams {
  static List<Map<String, dynamic>> menus = [
    {
      "title": "Profil",
      "icon": Icon(Icons.person, color: Colors.blue),
      "route": "/profil"
    },
    {
      "title": "Skills",
      "icon": Icon(Icons.star, color: Colors.blue),
      "route": "/skills"
    },

    {
      "title": "Projects",
      "icon": Icon(Icons.folder, color: Colors.blue),
      "route": "/projects"
    },
    {
      "title": "Adresse",
      "icon": Icon(Icons.location_on, color: Colors.blue),
      "route": "/adresse"
    },
    {
      "title": "Settings",
      "icon": Icon(Icons.settings, color: Colors.blue),
      "route": "/settings"
    },

  ];
}
