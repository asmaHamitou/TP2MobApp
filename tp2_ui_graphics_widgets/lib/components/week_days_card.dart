import 'package:flutter/material.dart';

class WeekDaysCard extends StatelessWidget {
  final String day;
  const WeekDaysCard({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    // Récupérer les dimensions de l'écran de l'appareil sur lequel l'application va être lancée
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.1,
      padding: EdgeInsets.only(
        left: screenWidth * 0.05,
        right: screenWidth * 0.05,
        top: screenHeight * 0.01,
        bottom: screenHeight * 0.01,
      ),
      margin: EdgeInsets.fromLTRB(screenWidth * 0.1, screenHeight * 0.02,
          screenWidth * 0.1, screenHeight * 0.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.amber,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(day,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenHeight * 0.03)),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.005,
        ),
        Expanded(
          // On utilise Expanded pour s'assurer que le widget row (child) va occuper (uniquement et tout) l'espace disponible à l'intérieur (offert par) le widget parent (ici Column).
          // Dans notre cas, l'espace de la colonne est divisé sur 3 car on a trois children (Text, SizedBox et Row). Le premier et le deuxième child prennent l'espace qu'ils ont besoin,
          // ensuite le troisième qui est déclaré expanded il va occuper tous l'espace qui reste à la fin de la colonne.
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                   IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility),
                  color: (Colors.orange)),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  color: (Colors.black)),
            ],
          ),
        ),
      ]),
    );
  }
}
