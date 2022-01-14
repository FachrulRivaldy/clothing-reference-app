import 'package:clothing_reference_app/signIn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClothRefApp());
}

class ClothRefApp extends StatelessWidget {
  const ClothRefApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Clothing_Marketplace',
      home: SignIn(),
    );
  }
}
