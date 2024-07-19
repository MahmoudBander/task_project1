
import 'package:flutter/material.dart';
import 'package:task_project1/pages/Login.dart';
import 'package:task_project1/pages/Signup.dart';
import 'package:task_project1/pages/Welcom.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
  routes: {
    "/":(context) => const Welcom(),
    "/login":(context) => const Login(),
    "/signup":(context) => const Signup(),
  },
    );
  }
}