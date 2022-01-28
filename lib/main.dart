import 'package:clothing_reference_app/detailpage.dart';
import 'package:clothing_reference_app/favoritepage.dart';
import 'package:clothing_reference_app/profilepage.dart';
import 'package:clothing_reference_app/searchpage.dart';
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothing_Marketplace',
      home: DetailPage(),
    );
  }
}
