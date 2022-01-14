
import 'package:clothing_reference_app/mainMenu.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 55, right: 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              //logo aplikasi
              'assets/images/logo.jpg',
              width: 150,
            ),
            const SizedBox(height: 25),
            const Text(
              "Welcome!\nLet's Sign You In",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              //email input form
              decoration: InputDecoration(
                hintText: 'Email',
                fillColor: const Color(0xFFABA6A2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            const SizedBox(height: 25),
            TextFormField(
              //pass input form
              decoration: InputDecoration(
                hintText: 'Password',
                fillColor: const Color(0xFFABA6A2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              //Forgot Password
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 25),
            InkWell(
              //Sign In button
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainMenu()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF2F2E2C),
                  borderRadius: BorderRadius.circular(45),
                ),
                child: const Center(
                  child: Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFFF7F2EE),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 21),
            Row(
              //Account Login
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/google.png',
                  width: 50,
                ),
                const SizedBox(width: 30),
                Image.asset(
                  'assets/images/logo.jpg',
                  width: 50,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              //Sign Up
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Doesn't Have Account?  ",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Register Here',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
