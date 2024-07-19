// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
              "Sign up",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Create an account, It’s free"),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Username"),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Email"),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Password"),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Confirm Password"),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Signup",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90),
                          side: BorderSide(color: Colors.black))),
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 170, vertical: 20))),
            ),
              SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? "),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    child: Text(
                      " Log in",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
