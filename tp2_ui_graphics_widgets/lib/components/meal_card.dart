import 'package:flutter/material.dart';


class MealCard extends StatelessWidget {
  final Meal meal;
  const MealCard({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    // Récupérer les dimensions de l'écran de l'appareil sur lequel l'application va être lancée
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Card(
      color: Colors.orange,
      child: Container(
        padding: EdgeInsets.all(screenHeight * 0.01),
        child: Column(
          children: [
            Image.asset(
              meal.imgPath,
              height: screenHeight * 0.15,
              width: screenWidth * 0.25,
              fit: BoxFit.cover,
            ),
            Expanded(
                child: Text(
              meal.name,
              style: TextStyle(
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.bold,
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.visibility),
                    color: Colors.black,
                    iconSize: screenWidth * 0.05,
                    onPressed: () {},
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  Expanded(
                    child: IconButton(
                      icon: const Icon(Icons.delete),
                      color: Colors.black,
                      iconSize: screenWidth * 0.05,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
