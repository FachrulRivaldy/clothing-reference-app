import 'package:flutter/material.dart';

class ListViewCard extends StatefulWidget {
  const ListViewCard({Key? key}) : super(key: key);

  @override
  State<ListViewCard> createState() => _ListViewCardState();
}

class _ListViewCardState extends State<ListViewCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFFABA6A2)),
          width: 300,
          height: 117,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipRRect(
                  child: Image.asset("assets/images/profpic.jpg"),
                  borderRadius: BorderRadius.circular(15),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Nama Item",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Harga Item",
                      style: TextStyle(fontSize: 12),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        InkWell(
                          child: const Icon(Icons.library_add),
                          onTap: () {},
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 25,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: const Align(
                              alignment: Alignment.center,
                              child: Text("+ Add To Cart")),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}

class GridViewCard extends StatefulWidget {
  const GridViewCard({Key? key}) : super(key: key);

  @override
  _GridViewCardState createState() => _GridViewCardState();
}

class _GridViewCardState extends State<GridViewCard> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CartCard extends StatefulWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(),
        Container(),
      ],
    );
  }
}
