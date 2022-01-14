// ignore_for_file: file_names

import 'package:flutter/material.dart';

class signUp extends StatelessWidget {
  const signUp({Key? key}) : super(key: key);

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lets Create Your Account",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ));
  }
}
