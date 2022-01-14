import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Center(
          child: Column(
            children: [
              const Text("Find Your Choice"),
              Row(
                children: [
                  ElevatedButton(
                    child: const Text(""),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    child: const Text(""),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
