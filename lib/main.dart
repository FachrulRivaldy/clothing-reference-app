import 'package:clothing_reference_app/pages/cartpage.dart';
import 'package:clothing_reference_app/pages/categorydetails.dart';
import 'package:clothing_reference_app/pages/mainpage.dart';
import 'package:clothing_reference_app/pages/onboardingpage.dart';
import 'package:clothing_reference_app/pages/profilepage.dart';
import 'package:clothing_reference_app/pages/searchpage.dart';
import 'package:clothing_reference_app/pages/mainMenu.dart';
import 'package:clothing_reference_app/pages/signIn.dart';
import 'package:clothing_reference_app/pages/signUp.dart';

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
      home: MainMenu(),
    );
  }
}
