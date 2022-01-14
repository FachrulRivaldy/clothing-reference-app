import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Center(
          child: Column(
            children: [
              const Text(
                "Find Your Choice",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                    color: const Color(0xFFE7E3E2),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {},
                            ),
                            hintText: "Search...",
                            border: InputBorder.none))),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFABA6A2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: const Size(155, 40)),
                    child: const Text(
                      "Grid",
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF2F2E2C),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: const Size(155, 40)),
                    child: const Text(
                      "List",
                      style: TextStyle(fontSize: 24),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: const [
                    ListViewCard(),
                    ListViewCard(),
                    ListViewCard(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

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

class GridViewCard extends StatelessWidget {
  const GridViewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
