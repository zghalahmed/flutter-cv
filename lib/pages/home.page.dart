import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("Home page"),
          backgroundColor: Colors.blue,
        ),
        body:Center(
            child:Wrap(
              children: [
                InkWell(
                    child:Ink.image(
                      height: 180,
                      width: 180,
                      image: AssetImage('images/profile.png',),),
                    onTap:(){
                      Navigator.pushNamed(context, "/profil");
                    }

                ),
                InkWell(
                    child:Ink.image(
                      height: 180,
                      width: 180,
                      image: AssetImage('images/skills.webp',),),
                    onTap:(){
                      Navigator.pushNamed(context, "/skills");
                    }

                ),

                InkWell(
                    child:Ink.image(
                      height: 180,
                      width: 180,
                      image: AssetImage('images/experience.jpg',),),
                    onTap:(){
                      Navigator.pushNamed(context, "/experience");
                    }

                ),

                InkWell(
                    child:Ink.image(
                      height: 180,
                      width: 180,
                      image: AssetImage('images/project.jpg',),),
                    onTap:(){
                      Navigator.pushNamed(context, "/projects");
                    }

                ),


                InkWell(
                    child:Ink.image(
                      height: 180,
                      width: 180,
                      image: AssetImage('images/adresse.png',),),
                    onTap:(){
                      Navigator.pushNamed(context, "/adresse");
                    }

                ),
                InkWell(
                    child:Ink.image(
                      height: 180,
                      width: 180,
                      image: AssetImage('images/parametres.png',),),
                    onTap:(){
                      Navigator.pushNamed(context, "/settings");
                    }

                ),









              ],
            )
        )

    );
  }


}


