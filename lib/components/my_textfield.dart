import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller:
            controller, // The text editing controller associated with the text field.
        obscureText:
            obscureText, // Whether the text field should obscure the text being typed.
        decoration: InputDecoration(
          hintText:
              hintText,hintStyle:TextStyle(color: Theme.of(context).colorScheme.primary) , 
          border: OutlineInputBorder(
            // The border of the text field when the text field is not focused.
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.tertiary),
          ),
          focusedBorder: OutlineInputBorder(
            // The border of the text field when the text field is focused.
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
          enabledBorder: OutlineInputBorder(
            // The border of the text field when the text field is enabled but not focused.
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.tertiary),
          ),
        ),
      ),
    );
  }
}
