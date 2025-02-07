import 'package:flutter/material.dart';
import 'package:tp2_ui_graphics_widgets/components/my_buttons.dart';
import 'package:tp2_ui_graphics_widgets/components/my_textfield.dart';


class AddNewMealScreen extends StatefulWidget {
  const AddNewMealScreen({super.key});

  @override
  State<AddNewMealScreen> createState() => _AddNewMealScreenState();
}

class _AddNewMealScreenState extends State<AddNewMealScreen> {

///////////////////////
  
  final TextEditingController mealNameController = TextEditingController();
  final TextEditingController mealImgController = TextEditingController();
  final TextEditingController ingredientController = TextEditingController(); // ???

  final List<String> listOfIngredientNames = []; // La liste des ingrédients // ??
 
  List<MyTextField> listOfTextField = [];

  @override
  Widget build(BuildContext context) {
          // Récupérer les dimensions de l'écran de l'appareil sur lequel l'application va être lancée
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
       // title: const Text("Adding a new meal to $day "),
        title: const Text("Adding a new meal "),
      ),
      body: SingleChildScrollView(
          child: Expanded(
            child: Container(
              margin: 
               EdgeInsets.all(screenWidth*0.3),
                  padding: 
               EdgeInsets.all(screenWidth*0.01),
              child: Column(
                children: [
                  SizedBox(height: screenHeight*0.05),
                  /////////////////////////////////////////////////////////////////////////
                  // Ajouter le nom
                  MyTextField(
                    TFHinttext: "Enter meal's name",
                    TFController: mealNameController,
                    isObscure: false,
                    TFIcon: const Icon(Icons.restaurant_menu),
                  ),
                  /////////////////////////////////////////////////////////////////////////
                  SizedBox(height: screenHeight*0.05),
                  // Ajouter l'image
                  MyTextField(
                    TFHinttext: "Enter image path of the meal ",
                    TFController: mealImgController,
                    isObscure: false,
                    TFIcon: const Icon(Icons.image),
                  ),
                  SizedBox(height: screenHeight*0.05),
                  /////////////////////////////////////////////////////////////////////////
                  // Ajouter le titre Liste des ingredients + la liste
                  Card(
                    elevation: 30,
                    child: Column(
                      children: [
                      SizedBox(height: screenHeight*0.05),
                        const Divider(
                            color: Colors.black, endIndent: 20, indent: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ///////////////////
                             const Expanded(
                               child: Text(
                                "List of ingredient",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                                           ),
                             ),
                            /////////////////////////
                            IconButton(
                              icon: const Icon(Icons.delete), 
                              onPressed: () {  },
                            ),
                            ////////////////////////////////////////////////////:
                            /////////////////////////
                            IconButton(
                              onPressed: () {
                              },
                              icon: const Icon(Icons.add),
                            ),
                            ////////////////////////////////////////////////////:
                          ],
                        ),
                        const Divider(
                            color: Colors.black, endIndent: 20, indent: 20),
                              
                        ///////////////////LIST////////////////
                        ListView.builder(
                            shrinkWrap: true,
                            // physics: NeverScrollableScrollPhysics(),
                            // primary: false,
                            itemCount: listOfTextField.length,
                            padding: const EdgeInsets.all(20),
                            itemBuilder: (context, index) {
                              return listOfTextField[index];
                            }),
                              
                        ////////////////////////////////////////////////////:
                      ],
                    ),
                  ),
                  /////////////////////////////////////////////////////////////////////////
                  ///
                 SizedBox(height: screenHeight*0.05),
                  Center(
                    child: MyElevatedButton(
                        buttonLabel: "Add the meal",
                        onPressedFct: () {
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
