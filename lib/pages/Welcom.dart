// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "slash Flutter provides extraordinary flutter tutorials. Do Subscribe! "),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/image/welcome.jpg",
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
              child: Text(
                "Login",
                style: TextStyle(fontSize: 25,color: Colors.black),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(66),
                        side: BorderSide(color: Colors.black))),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 115, vertical: 20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 110, vertical: 20)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: Text(
                  "Signup",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
