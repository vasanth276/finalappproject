import 'package:flutter/material.dart';
import 'package:elearning/pages/login_page.dart';
import 'package:elearning/utils/routes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context)=>Loginpage(),
        MyRoutes.homeRoute:(context)=>Homepage(),
        MyRoutes.loginRoute:(context)=>Homepage(),
      },
    );
  }
}