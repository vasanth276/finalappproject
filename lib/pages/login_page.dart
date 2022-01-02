import 'dart:math';

import 'package:flutter/material.dart';
import 'package:elearning/utils/routes.dart';

class Loginpage extends StatefulWidget{
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name="";
  bool changeButton=false;
  final _formkey=GlobalKey<FormState>();


  moveToHome(BuildContext context) async{
    setState(() {
      changeButton=true;
    });
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushNamed(context, MyRoutes.homeRoute);
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      changeButton=false;
    });
  }

  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Image.asset("assets/images/secure_login_img.png",
              fit: BoxFit.cover,
            ),
            Text("Welcome $name",
              style: TextStyle(
                fontSize: 28 ,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value){
                        name=value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter EmailId",
                        labelText: "Email-Id",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    InkWell (
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 2),
                        width: changeButton?50:140,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton?Icon(Icons.done,color: Colors.white):Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color:changeButton?Colors.green:Colors.deepOrange,
                          borderRadius: BorderRadius.circular(changeButton?50:8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

