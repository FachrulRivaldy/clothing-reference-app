import 'package:clothing_reference_app/pages/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:clothing_reference_app/data/templates.dart';
import 'package:intl/intl.dart';

class CartPage extends StatelessWidget {
  final totalPrice = NumberFormat.simpleCurrency(locale: 'id_ID');

  CartPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFEFEFE),
        elevation: 0,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 25,
            color: Colors.black,
          ),
        ),
        title: const Center(
          child: Text(
            'Cart',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            color: Colors.black,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainPage()));
            },
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 350,
            child: Align(
              alignment: Alignment.center,
              child: Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: const [
                    CartCard(),
                    CartCard(),
                    CartCard(),
                    CartCard(),
                    CartCard(),
                    CartCard(),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFB7A599),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: const Offset(0, -10))
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Subtotal",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "343434",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(45),
                                    side: const BorderSide(
                                        color: Colors.transparent))),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF2F2E2C))),
                    child: const Text("Checkout"),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
// class CartPage extends StatelessWidget {
//   const CartPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color(0xFFFAFAFA),
//           elevation: 0,
//           leading: GestureDetector(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: const Icon(
//               Icons.arrow_back_ios_new_rounded,
//               size: 25,
//               color: Colors.black,
//             ),
//           ),
//           titleSpacing: 0.0,
//           title: const Text(
//             'Back',
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//         ),
//         body: Column(children: [
//           const Align(
//             alignment: Alignment.center,
//             child: Text("Your Cart",
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 24)),
//           ),
//           //const SizedBox(height: 15),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.only(top: 15, right: 30, left: 30),
//               child: ListView(
//                 shrinkWrap: true,
//                 children: const [
//                   CartCard(),
//                   CartCard(),
//                   CartCard(),
//                   CartCard(),
//                 ],
//               ),
//             ),
//           ),
//           //Spacer(),
//           Container(
//             height: 70,
//             width: MediaQuery.of(context).size.width,
//             color: Color(0xFFABA6A2),
//             child: Padding(
//               padding: const EdgeInsets.only(left: 30, right: 30),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: const [
//                       Text("Subtotal"),
//                       Text(
//                         "Harga Barang",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       )
//                     ],
//                   ),
//                   //const Spacer(),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(primary: Color(0xFF2F2E2C)),
//                     child: Text("Checkout"),
//                     onPressed: () {},
//                   )
//                 ],
//               ),
//             ),
//           )
//         ]));
//   }
// }
