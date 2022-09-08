import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tpg_final_exam/models/settings_data.dart';


class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          title: Text(
            'Settings',
            style: GoogleFonts.lato(
              fontSize: 35,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Color(0xFF3D3D3D),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'App buttons rounded',
                          style: GoogleFonts.lato(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Consumer<SettingsData>(
                          builder: (context, value, child) {
                            return Switch(
                              value: value.state,
                              onChanged: (newValue) {
                                setState(() {
                                  value.toggleState();
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 10),
            Container(
              width: 400,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Color(0xFF3D3D3D),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40, top: 5),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 28),
                          child: Text(
                            'Choose layout',
                            style: GoogleFonts.lato(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Consumer<SettingsData>(
                          builder: (context, value, child) {
                            return value.state
                                ? buttonRound = ElevatedButton(
                                    onPressed: () {
                                      
                                      value.isPressedState1();
                                    },
                                    child: Text('Pic on left'),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        minimumSize: Size(80.0, 40.0)),
                                  )
                                : buttonSquare = ElevatedButton(
                                    onPressed: () {
                                      value.isPressedState1();
                                    },
                                    child: Text('Pic on left'),
                                    style: ElevatedButton.styleFrom(
                                        
                                        minimumSize: Size(80.0, 40.0)),
                                  );
                          },
                        ),
                        SizedBox(width: 10),
                        Consumer<SettingsData>(
                          builder: (context, value, child) {
                            return value.state ? buttonRound2 = ElevatedButton(
                                    onPressed: () {
                                      value.isPressedState2();
                                    },
                                    child: Text('Pic on Right'),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        minimumSize: Size(80.0, 40.0)),
                                  ): buttonSquare2 = ElevatedButton(
                                    onPressed: () {
                                      value.isPressedState2();
                                    },
                                    child: Text('Pic on Right'),
                                    style: ElevatedButton.styleFrom(
                                        
                                        minimumSize: Size(80.0, 40.0)),
                                  );
                          },
                        ),
                        SizedBox(width: 10),
                        Consumer<SettingsData>(
                          builder: (context, value, child) {
                            return value.state ? buttonRound3 = ElevatedButton(
                                    onPressed: () {
                                      value.isPressedState3();
                                    },
                                    child: Text('Pic at top'),
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        minimumSize: Size(80.0, 40.0)),
                                  ): buttonSquare3 = ElevatedButton(
                                    onPressed: () {
                                      value.isPressedState3();
                                    },
                                    child: Text('Pic at top'),
                                    style: ElevatedButton.styleFrom(
                                        
                                        minimumSize: Size(80.0, 40.0)),
                                  );
                          },
                        ),
                      ],
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
