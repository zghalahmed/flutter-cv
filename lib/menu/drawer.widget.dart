// drawer_widget.dart

import 'package:flutter/material.dart';

import '../pages/global.params.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.white, Colors.blue]),
            ),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("images/profil.jpg"),
                radius: 80,
              ),
            ),
          ),
          for (var menu in GlobalParams.menus)
            ListTile(
              title: Text(
                menu['title'],
                style: TextStyle(fontSize: 22),
              ),
              leading: menu['icon'],
              trailing: Icon(Icons.arrow_right, color: Colors.blue),
              onTap: () {
                Navigator.pushNamed(context, menu['route']);
              },
            ),
        ],
      ),
    );
  }
}
