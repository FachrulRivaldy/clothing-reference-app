import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(
          children: [
            Column(
              children: [
                const Text(
                  "Profile",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(160),
                    child: Image.asset('assets/images/profpic.jpg'),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Hans Fahrezi",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Member Gold",
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
            Column(
              children: [
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Order History")),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        child: const Icon(Icons.pending_actions),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        child: const Icon(Icons.check_box_outlined),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        child: const Icon(Icons.delivery_dining_sharp),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: ElevatedButton(
                        child: const Icon(Icons.done_all_rounded),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("Pending"),
                    Text("Packed"),
                    Text("On the way"),
                    Text("Arrived"),
                  ],
                ),
                InkWell(
                  child: const Text("Edit Profile"),
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
