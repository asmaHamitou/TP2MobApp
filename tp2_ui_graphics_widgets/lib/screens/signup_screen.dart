import 'package:flutter/material.dart';


import 'package:tp2_ui_graphics_widgets/components/my_buttons.dart';
import 'package:tp2_ui_graphics_widgets/components/my_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
        // Récupérer les dimensions de l'écran de l'appareil sur lequel l'application va être lancée
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    TextEditingController userController = TextEditingController();
    TextEditingController pwdController = TextEditingController();
    TextEditingController pwdController2 = TextEditingController();
    TextEditingController emailController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1, vertical: screenHeight*0.1 ),  
          //padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[

              const SizedBox(
                height: 10,
              ),
              Text(
                "Create your account",
                style: TextStyle(fontSize: 15, color: Colors.grey[700]),
              ),
              const SizedBox(
                height: 30,
              ),
              // TextField Username
              MyTextField(
                  TFHinttext: "Username",
                  TFController: userController,
                  TFIcon: const Icon(Icons.person),
                  isObscure: false),
              const SizedBox(height: 20),
// Textfield email
              MyTextField(
                  TFHinttext: "Email",
                  TFController: emailController,
                  TFIcon: const Icon(Icons.email),
                  isObscure: false),

              const SizedBox(height: 20),
// Textfield password
              MyTextField(
                  TFHinttext: "Password",
                  TFController: pwdController,
                  TFIcon: const Icon(Icons.lock),
                  isObscure: true),

              const SizedBox(height: 20),
// Textfield confirm password
              MyTextField(
                  TFHinttext: "Confirm Password",
                  TFController: pwdController2,
                  TFIcon: const Icon(Icons.lock),
                  isObscure: true),
              const SizedBox(height: 20),
// signup button
              MyElevatedButton(
                buttonLabel: "Sign up",
                onPressedFct: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(child: Text("Or")),
              const SizedBox(
                height: 20,
              ),
              MyElevatedButton(
                buttonLabel: "Sign in with Google",
                onPressedFct: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Already have an account?"),
                  // TextButon login
                  MyTextButton(
                    buttonLabel: "login",
                    onPressedFct: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
