import 'package:clothing_reference_app/pages/cartpage.dart';
import 'package:clothing_reference_app/pages/categorydetails.dart';
import 'package:clothing_reference_app/pages/detailpage.dart';
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
    return MaterialApp(
      theme: ThemeData(primarySwatch: cream),
      debugShowCheckedModeBanner: false,
      title: 'Clothing_Marketplace',
      home: const DetailPage(),
    );
  }
}

const MaterialColor cream = MaterialColor(
  0xFFABA6A2,
  <int, Color>{
    50: Color(0xFFABA6A2),
    100: Color(0xFFABA6A2),
    200: Color(0xFFABA6A2),
    300: Color(0xFFABA6A2),
    400: Color(0xFFABA6A2),
    500: Color(0xFFABA6A2),
    600: Color(0xFFABA6A2),
    700: Color(0xFFABA6A2),
    800: Color(0xFFABA6A2),
    900: Color(0xFFABA6A2),
  },
);
