// ignore_for_file: file_names

import 'package:clothing_reference_app/mainMenu.dart';
import 'package:clothing_reference_app/signIn.dart';
import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 25,
              color: Colors.black,
            ),
          ),
          titleSpacing: 0.0,
          title: Text(
            'Back',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 55, right: 55),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lets Create Your Account!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF2F2E2C),
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 40),
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
                  SizedBox(height: 25),
                  TextFormField(
                    //Nama Lengkap
                    decoration: InputDecoration(
                      hintText: 'Nama Lengkap',
                      fillColor: const Color(0xFFABA6A2),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    //email input form
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
                  SizedBox(height: 25),
                  TextFormField(
                    //email input form
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      fillColor: const Color(0xFFABA6A2),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        'I accept the terms and conditions',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  InkWell(
                    //Sign Up button
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
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
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFFF7F2EE),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    //Sign Up
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already Have Account?   ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Login Here',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
