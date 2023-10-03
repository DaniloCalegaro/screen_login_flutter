import 'package:flutter/material.dart';

@override
Widget textFieldCustom(String labelText, bool obscureText, onChange) {
  return TextField(
    onChanged: onChange,
    obscureText: obscureText,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide:
            const BorderSide(width: 0, color: Color.fromARGB(0, 255, 255, 255)),
        borderRadius: BorderRadius.circular(50.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 2, color: Colors.black45),
        borderRadius: BorderRadius.circular(50.0),
      ),
      labelText: labelText,
      labelStyle:
          const TextStyle(color: Colors.black26, fontWeight: FontWeight.w500),
      filled: true,
      contentPadding: const EdgeInsets.all(20),
      fillColor: const Color.fromARGB(221, 240, 240, 240),
    ),
    cursorColor: Colors.black,
  );
}
