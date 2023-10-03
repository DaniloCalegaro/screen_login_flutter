import 'package:flutter/material.dart';

@override
Widget buttonCustom(String label, onPress) {
  return SizedBox(
    width: double.infinity,
    height: 60,
    child: ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      child: Text(
        label,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),
      ),
    ),
  );
}
