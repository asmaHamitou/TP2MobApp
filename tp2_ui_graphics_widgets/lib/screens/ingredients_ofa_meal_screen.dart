import 'package:flutter/material.dart';


class IngredientsOfAMealScreen extends StatelessWidget {
  const IngredientsOfAMealScreen({super.key});

  @override
  Widget build(BuildContext context) {
          // Récupérer les dimensions de l'écran de l'appareil sur lequel l'application va être lancée
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    ////////////////
// Récupérer la liste des ingrédients pour le menu selectionné
    final Meal currentMeal ;
   
    return Scaffold(
      appBar: AppBar(
     //   title: Text('Ingredients list of the ${currentMeal.name} meal'),
        title: Text('Ingredients list of the meal'),
        actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            ),
          ]
      ),
      body: ListView.builder(
        itemCount: currentMeal.listOfIngredients.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.amber,
            child: ListTile(
                title: Text(
              currentMeal. listOfIngredients[index],
            )),
          );
        },
      ),
    );
  }
}
////////@@@@@@@@@@@///////