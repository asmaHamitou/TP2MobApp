import 'package:flutter/material.dart';
import 'package:tp2_ui_graphics_widgets/components/meal_card.dart';


class MealsOfADayScreen extends StatefulWidget {
  final MealsOfADay dayandItsListOfMeals;

  const MealsOfADayScreen({super.key, required this.dayandItsListOfMeals});

  @override
  State<MealsOfADayScreen> createState() => _MealsOfADayScreenState();
}

class _MealsOfADayScreenState extends State<MealsOfADayScreen> {
  @override
  Widget build(BuildContext context) {
    ////////////////////////////////
    // Récupérer les dimensions de l'écran de l'appareil sur lequel l'application va être lancée
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
   
    ////////////////////////////////
    ///

    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text("Meals for ${widget.dayandItsListOfMeals.day} "),
          ), // ici on utilise le nom du jour pour l’afficher dans le titre de la page
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            ),
          ]),
// Déterminer la grille qui va afficher les menus (nom + image) de chaque jour
      body: GridView.builder(
        itemCount: widget.dayandItsListOfMeals.listOfMealsForADay.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 3,
          //childAspectRatio: 2 / 3 // la hauteur est deux tiers la largeur
          mainAxisExtent: screenHeight * 0.5,
        ),
        itemBuilder: (context, index) {
          return MealCard(meal: widget.dayandItsListOfMeals.listOfMealsForADay[index]);
        },
      ),
    );
  }
}
