import 'package:flutter/material.dart';
import 'package:screen_login_flutter/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 185, 1)),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
