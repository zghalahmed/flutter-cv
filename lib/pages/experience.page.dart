import 'package:ahmedzghal/pages/Education.page.dart';
import 'package:ahmedzghal/pages/skills.page.dart';
import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';
import '../widgets/CardCustom.dart';
import '../widgets/CardTop.dart';

class Experiencepage extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      drawer: MyDrawer(),

      backgroundColor: Color(0xfffafafa),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text('About Me', style: TextStyle(color: Colors.black,)),
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
                  CardTop(icon: Icons.work_outline_outlined, text: 'Experience', isColor: true),
                  CardTop(icon: Icons.stacked_line_chart_sharp, text: 'Education', isColor: false, page: EducationPage()),
                ],
              ),

              SizedBox(height: 15.0),
              CardCustom(text: 'Stage initiation  DIGIX',colorIcon: Color(0xffA36FF6), isEducation: false),
              CardCustom(text: 'Stage pfe Smart Ways ',colorIcon: Color(0xff83DBC5), isEducation: false),
              CardCustom(text: 'Stage de perfectionnement ',colorIcon: Color(0xff0385DC), isEducation: false),
              CardCustom(text: 'Stage STEG',colorIcon: Color(0xffE62755), isEducation: false),
            ],
          ),
        ),
      ),
    );
  }
}
