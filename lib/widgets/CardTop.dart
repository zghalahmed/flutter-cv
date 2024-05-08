import 'package:flutter/material.dart';

class CardTop extends StatelessWidget {
  final bool isColor;
  final String text;
  final IconData icon;
  final Widget? page; // Modifiez ici pour rendre le paramètre page facultatif

  const CardTop({
    required this.isColor,
    required this.text,
    required this.icon,
    this.page, // Mettez un "?" pour rendre le paramètre facultatif
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (page != null) { // Vérifiez si la page est fournie
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => page!), // Utilisez "page!" pour récupérer la page si elle est fournie
          );
        }
      },
      child: Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
          color: isColor ? Color(0xff1F1E25) : Color(0xff040305),

          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 35),
            SizedBox(height: 6),
            Text(text, style: TextStyle(color: Colors.white, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
