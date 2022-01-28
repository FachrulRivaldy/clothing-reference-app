import 'package:flutter/material.dart';
import 'package:clothing_reference_app/data/templates.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFAFAFA),
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 25,
              color: Colors.black,
            ),
          ),
          titleSpacing: 0.0,
          title: const Text(
            'Back',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Column(children: [
          const Align(
            alignment: Alignment.center,
            child: Text("Your Cart",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 24)),
          ),
          //const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 30, left: 30),
            child: ListView(
              shrinkWrap: true,
              children: const [CartCard()],
            ),
          )
        ]));
  }
}
