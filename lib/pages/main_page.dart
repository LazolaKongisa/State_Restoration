import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tpg_final_exam/models/settings_data.dart';
import 'package:tpg_final_exam/routes/routes.dart';


class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => MainPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.gif',
            height: 180,
          ),
          SizedBox(
            height: 20,
          ),
          Text('Getting the magic ready...please wait')
        ],
      )),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPagesState createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFF64B5F6),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 20,
                    ),
                    child: Container(
                        width: 400,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xFF2477CA),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Profile',
                                style: GoogleFonts.lato(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(RouteManager.settingsPage);
                                },
                                icon: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Consumer<SettingsData>(
              builder: (context, value, child) {
                if (value.isPressed1) {
                  return row1;
                } else if(value.isPressed2){
                  
                  return row2;

                }
                else if(value.isPressed3)
                {
                  return row3;
                }
                else {
                  return row;
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 100),
              child: Center(
                child: Row(
                  children: [
                    Consumer<SettingsData>(
                      builder: (context, value, child) {
                        return value.state ? shapeRound1 : shapeSquare1;
                      },
                    ),
                    SizedBox(width: 10),
                    Consumer<SettingsData>(
                      builder: (context, value, child) {
                        return value.state ? shapeRound2 : shapeSquare2;
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
