import 'package:flutter/material.dart';

@override
Widget buttonCustomIcon(String label, String apiAdressIcon) {
  return Container(
    width: double.infinity,
    height: 55,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(35), boxShadow: [
      BoxShadow(
          color: Color.fromARGB(50, 0, 0, 0),
          spreadRadius: 0,
          blurRadius: 4,
          offset: Offset(0, 2))
    ]),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
      child: Row(
        children: [
          SizedBox(
            width: 300,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.network(apiAdressIcon, fit: BoxFit.cover),
                Text(
                  label,
                  style: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                const Icon(
                  Icons.arrow_forward_rounded,
                  color: Colors.black,
                  size: 36.0,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
