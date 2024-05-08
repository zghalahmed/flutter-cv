import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final String text;
  final String education;
  final Color colorIcon;
  final bool isEducation;

  const CardCustom({
    Key? key,
    required this.text, // Ajoutez required ici
    required this.colorIcon,
    required this.isEducation,
    this.education = '', // Valeur par défaut pour education
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25.0),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Color(0xff1F1E25),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: colorIcon,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Icon(Icons.work_outline_outlined, color: Colors.white),
            ),
            SizedBox(width: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
                SizedBox(height: 7.0),
                !isEducation
                    ? Text('2020 - 2023 . Sfax ', style: TextStyle(color: Colors.grey, fontSize: 15))
                    : Text(education, style: TextStyle(color: Colors.grey, fontSize: 15))
              ],
            )
          ],
        ),
      ),
    );
  }
}
