import 'package:ahmedzghal/pages/experience.page.dart';
import 'package:ahmedzghal/pages/skills.page.dart';
import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';
import '../widgets/CardCustom.dart';
import '../widgets/CardTop.dart';


class EducationPage extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Color(0xfffafafa),


      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text('About Me', style: TextStyle(color: Colors.black, )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardTop(icon: Icons.person_outline_rounded, text: 'About Me', isColor: false, page: Skillspage()),
                  CardTop(icon: Icons.work_outline_outlined, text: 'Experience', isColor: false, page: Experiencepage()),
                  CardTop(icon: Icons.stacked_line_chart_sharp, text: 'Education', isColor: true ),
                ],
              ),

              SizedBox(height: 15.0),
              CardCustom(text: 'Etudes d ingénieur ',colorIcon: Color(0xffA36FF6), isEducation: true, education: '2022 - Now . IIT',),
              CardCustom(text: 'Licence appliquée ',colorIcon: Color(0xffA36FF6), isEducation: true, education: '2019 - 2022 . iset',),
              CardCustom(text: 'etude bacalaureat',colorIcon: Color(0xffA36FF6), isEducation: true, education: '2018 - 2019 . Privee',),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        color: Color(0xff1F1E25),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_border_outlined, color: Color(0xffA36FF6), size: 35),
                        SizedBox(height:5),
                        Text('Web Developer', style: TextStyle(color: Colors.white, fontSize: 16)),
                        SizedBox(height:5),
                        Text('2020', style: TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                        color: Color(0xff1F1E25),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_border_outlined, color: Color(0xffA36FF6), size: 35),
                        SizedBox(height:5),
                        Text('App Developer', style: TextStyle(color: Colors.white, fontSize: 16)),
                        SizedBox(height:5),
                        Text('2021', style: TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}