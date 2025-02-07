import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
   final Function() onPressedFct; // final VoidCallback onePressedFct; 
  final String buttonLabel;

  const MyElevatedButton({super.key, required this.onPressedFct, required this.buttonLabel});

  @override
  Widget build(Object context) {
    return SizedBox(
      height: 50,
      width: 330,
      child: ElevatedButton(
        onPressed: onPressedFct,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.black, //background color of button
          side: const BorderSide(
              width: 1, color: Colors.black), //border width and color
          shape: RoundedRectangleBorder(
              //to set border radius to button
              borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.all(5), //content padding inside button
          textStyle: const TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        child: Text(
          buttonLabel,
        ),
      ),
    );
  }
}
///////////////////////
/// "Forgot password?","Signup", "Login",

class MyTextButton extends StatelessWidget {
  final String buttonLabel;
  final Function() onPressedFct;

  const MyTextButton(
      {super.key, required this.buttonLabel, required this.onPressedFct});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressedFct,
      child: Text(
        buttonLabel,
        style: const TextStyle(color: Colors.blue),
      ),
    );
  }
}