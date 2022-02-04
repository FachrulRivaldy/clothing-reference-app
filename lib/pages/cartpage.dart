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
                    fontWeight: FontWeight.bold,
                    fontSize: 24)),
          ),
          //const SizedBox(height: 15),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 15, right: 30, left: 30),
              child: ListView(
                shrinkWrap: true,
                children: const [
                  CartCard(),
                  CartCard(),
                  CartCard(),
                  CartCard(),
                ],
              ),
            ),
          ),
          //Spacer(),
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFABA6A2),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Subtotal"),
                      Text(
                        "Harga Barang",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  //const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFF2F2E2C)),
                    child: Text("Checkout"),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          )
        ]));
  }
}
