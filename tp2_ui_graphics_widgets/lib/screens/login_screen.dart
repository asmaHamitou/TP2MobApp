import 'package:flutter/material.dart';
import 'package:tp2_ui_graphics_widgets/components/my_buttons.dart';
import 'package:tp2_ui_graphics_widgets/components/my_textfield.dart';


class LoginScreen extends StatelessWidget {



  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
          // Récupérer les dimensions de l'écran de l'appareil sur lequel l'application va être lancée
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    TextEditingController pwdController = TextEditingController();
    TextEditingController emailController = TextEditingController();

    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.09, vertical: screenHeight*0.1 ),  
            child: Column(
              children: [
                const Text(
                  "Welcome to my App ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
                const SizedBox(height: 10),
                 CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  radius: screenWidth*0.2,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/avatar.jpg",),
                    radius: screenWidth*0.19,
                  
                  ),
                ),
   const SizedBox(height: 20),
                // Textfield email
                MyTextField(
                    TFHinttext: "Email ",
                    TFController: emailController,
                    TFIcon: const Icon(Icons.email),
                    isObscure: false),
                const SizedBox(height: 10),
                // Textfield password
                MyTextField(
                    TFHinttext: "Password",
                    TFController: pwdController,
                    TFIcon: const Icon(Icons.lock),
                    isObscure: true),
                const SizedBox(height: 10),
// Elevated Button
                 MyElevatedButton(buttonLabel: "Login", onPressedFct: () {
                      
                    },),
                const SizedBox(height: 50),
                // TextButton Mot de passe oublie
                 MyTextButton(buttonLabel: "Forgot your password ?", onPressedFct: () {
                      
                    },),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Dont have an account? "),
                    // TextButton signup
                    MyTextButton(buttonLabel: "signup", onPressedFct: () {
                      
                    },)
                  ],
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}
