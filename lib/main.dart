import 'package:clothing_reference_app/mainMenu.dart';
import 'package:clothing_reference_app/signIn.dart';
import 'package:clothing_reference_app/signUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClothRefApp());
}

class ClothRefApp extends StatelessWidget {
  const ClothRefApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clothing_Marketplace',
      home: const signUp(),
    );
  }
}
