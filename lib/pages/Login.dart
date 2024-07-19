// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
              "Login",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Login to your account"),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email"),
                Container(    
                    width: 300,
                    height: 40,
                    child: TextField(
                        decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ))),
                SizedBox(
                  height: 20,
                ),
                Text("Password"),
                Container(
                    width: 300,
                    height: 40,
                    child: TextField(
                      obscureText: true,
                        decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ))),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66),
                          side: BorderSide(color: Colors.black))),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 120, vertical: 20)),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account? "),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                    child: Text(
                      " Sign up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ],
              
            ),
              SizedBox(
              height: 20,
            ),
            Image.asset("assets/image/login.jpg")
          ],
        ),
      ),
    );
  }
}
