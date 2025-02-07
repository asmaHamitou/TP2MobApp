import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:tp2_ui_graphics_widgets/screens/home_screen.dart';
import 'package:tp2_ui_graphics_widgets/screens/ingredients_ofa_meal_screen.dart';


/*void main() {
  runApp( MyApp());
}*/

// Utiliser DevicePreview pour tester le desing de l'application sur tout type de devices
void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (BuildContext context) =>  MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: "My Meal Planner",
        //////////////
        // Personnaliser le theme pour toute l'application
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black, 
            titleTextStyle: TextStyle(
                color: Colors.orange,
                fontSize: 17,
                fontWeight: FontWeight.bold,),
            iconTheme: IconThemeData(color: Colors.orange),
          ),
        ),
        /////////////
        debugShowCheckedModeBanner: false,
        home:
       HomeScreen(),
        //MealsOfADayScreen(day:"dMy Dayay",listOfMeals: List.empty(),),
      );
    }
}
