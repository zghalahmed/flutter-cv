import 'package:ahmedzghal/pages/Education.page.dart';
import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';
import '../pages/experience.page.dart';
import '../widgets/CardTop.dart';
import '../widgets/ProgressBar.dart';

class Skillspage extends StatelessWidget {
  const Skillspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),

      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text(
          'About Me',
          style: TextStyle(
            color: Colors.black,

          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardTop(
                    icon: Icons.person_outline_rounded,
                    text: 'About Me',
                    isColor: true,
                  ),
                  CardTop(
                    icon: Icons.work_outline_outlined,
                    text: 'Experience',
                    isColor: false,
                    page: Experiencepage(), // Ajout du paramètre page
                  ),
                  CardTop(
                    icon: Icons.stacked_line_chart_sharp,
                    text: 'Education',
                    isColor: false,
                    page: EducationPage(), // Ajout du paramètre page
                  ),
                ],
              ),

              SizedBox(height: 15.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff1F1E25),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Skills', style: TextStyle(color: Colors.white, fontSize: 18)),
                    SizedBox(height: 30.0),
                    ProgressBarCustom(skill: 'Vue js', porcentaje: '95',color: Color(0xffA36FF6)),
                    ProgressBarCustom(skill: 'Angular', porcentaje: '80',color: Color(0xff83DBC5), barra: 250),
                    ProgressBarCustom(skill: 'Flutter', porcentaje: '50',color: Color(0xff0385DC), barra: 210),
                    ProgressBarCustom(skill: 'Laravel', porcentaje: '70',color: Color(0xffF7605D), barra: 250),
                    ProgressBarCustom(skill: 'MySQL', porcentaje: '75',color: Colors.yellow, barra: 250),

                  ],
                ),
              ),

              SizedBox(height: 15.0),
              Text('Interests', style: TextStyle(color: Colors.black, fontSize: 18)),
              SizedBox(height: 15.0),

              // Ajout des containers manquants dans le Row
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xff1F1E25),

                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text('Camping', style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xff1F1E25),

                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text('Robotique', style: TextStyle(color: Colors.white, fontSize: 15)),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
