import 'package:flutter/material.dart';

// Password, Username (icon Person), Email (icon email),
//Password (icon lock + textobscure true), Confirm Password

class MyTextField extends StatelessWidget {
  final String TFHinttext;
  final Icon TFIcon;
  final TextEditingController TFController;
  final String? Function(String?)? TFValidator;
  final bool isObscure;
  const MyTextField(
      {super.key,
      required this.TFHinttext,
      required this.TFController,
      this.TFValidator,
      required this.TFIcon,
      required this.isObscure});

  @override
  Widget build(Object context) {
    return TextFormField(
      validator: TFValidator, //ça existe uniquement dans le TextFormField
      // un FormField qui contient un TextField
      // un FormField un widget qui maintien le state courant d'un formField
      // If you are making a Form where you require save, reset, or validate
      // operations => use TextFormField.
      // Else For Simple user input capture TextField is sufficient.

      controller: TFController,
      obscureText: isObscure,

      decoration: InputDecoration(
        hintText: TFHinttext,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        filled: true,
        fillColor: Color.fromARGB(255, 224, 217, 217),
        prefixIconColor: Colors.black,
        hintStyle: TextStyle(color: Colors.orange),
        prefixIcon: TFIcon,
      ),
    );
    ////////////////////
  }
}
