import 'package:elearning/pages/updates.dart';
import 'package:flutter/material.dart';
import 'package:elearning/widgets/drawer.dart';

import 'curriculum.dart';
import 'interview_experiance.dart';
import 'interview_questions.dart';
import 'login_page.dart';
class Homepage extends StatefulWidget{
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  int day=1+1;
  int currentIndex=1;
  final screens = [
    Interviewque(),
    curriculumPage(),
    updates(),
  ];
  Widget build(BuildContext context){
    return Scaffold(
      body:screens[currentIndex],


      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex:currentIndex,
        onTap: (index) => setState(()=>currentIndex=index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Interview Experience',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Updates',
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );

  }
}