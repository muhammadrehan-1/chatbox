import 'package:chatbox/authentication/sign_up_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //Using copywith here to maintain the predefined settings of themeData.
      theme: ThemeData().copyWith(
        useMaterial3: true,
      ),
      //Passing Signup screen to home.
      home: SignUpScreen(),
    );
  }
}

