import 'package:flutter/material.dart';
import 'package:clothing_reference_app/data/templates.dart';

class SearchTabBar extends StatefulWidget {
  const SearchTabBar({Key? key}) : super(key: key);

  @override
  _SearchTabBarState createState() => _SearchTabBarState();
}

class _SearchTabBarState extends State<SearchTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFFEBEAEF),
        appBar: AppBar(
          title: const Text(
            'Find Your Choices',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
          ),
          backgroundColor: const Color(0xFFEBEAEF),
          elevation: 0,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: const Color(0xFFABA6A2),
                    borderRadius: BorderRadius.circular(10)),
                child: TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: const Color(0xFFE7E3E2),
                  labelStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                      color: const Color(0xFF2F2E2C),
                      borderRadius: BorderRadius.circular(10)),
                  tabs: const [
                    Tab(text: 'Grid'),
                    Tab(
                      text: 'List',
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width / 1.125,
              child: TabBarView(
                children: [
                  Expanded(
                    child: ListView(
                      children: const [ListViewCard(), ListViewCard()],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: const [
                        ListViewCard(),
                        ListViewCard(),
                        ListViewCard()
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
