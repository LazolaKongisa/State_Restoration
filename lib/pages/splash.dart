

import 'dart:async';
import 'package:flutter/material.dart';

import 'main_page.dart';


class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }



} 

class StartState extends State<SplashScreen> {

  @override 
  void initState() {

    super.initState();
    startTimer();
  }

  startTimer() async {

    var duration = Duration(seconds: 3);
    return Timer(duration,route);
  }

  route() {

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainPage()));
  }





  
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(

         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.gif', height: 180, ),
            SizedBox(height: 20,),
            Text('Getting the magic ready...please wait')
          ],

        ),
      )

    );
  }
}