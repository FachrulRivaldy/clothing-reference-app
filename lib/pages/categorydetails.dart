import 'package:clothing_reference_app/pages/mainMenu.dart';
import 'package:clothing_reference_app/data/templates.dart';
import 'package:flutter/material.dart';

class CategoryDetails extends StatefulWidget {
  const CategoryDetails({Key? key}) : super(key: key);

  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFAFAFA),
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const MainMenu()));
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
        body: Column(
          children: [
            const Text("Category Name",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 24)),
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
