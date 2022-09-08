import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';



class MainPageData with ChangeNotifier {
  bool _isPressed = false;

  SharedPreferences? _preferences;

  bool get isPressed => _isPressed;

  MainPageData() {
    _loadSettingsFromPrefs();
  }

  _initializePrefs() async {
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }
  }

  _loadSettingsFromPrefs() async {
    await _initializePrefs();
    _isPressed = _preferences?.getBool('isPressed') ?? false;
    notifyListeners();
  }

  _saveSettingsToPrefs() async {
    await _initializePrefs();
    _preferences?.setBool('isPressed', _isPressed);
  }

  void isPressedCheck() {
    _isPressed = !_isPressed;
    _saveSettingsToPrefs();
    notifyListeners();
  }

  ElevatedButton _shape4 = ElevatedButton.icon(
    onPressed: () {},
    icon: Icon(Icons.phone),
    label: Text('Mobile'),
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        primary: Colors.purple,
        minimumSize: Size(120.0, 40.0)),
  );

  ElevatedButton _shape5 = ElevatedButton.icon(
    onPressed: () {},
    icon: Icon(Icons.mail_sharp),
    label: Text('Mail'),
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        primary: Colors.purple,
        minimumSize: Size(120.0, 40.0)),
  );

  ElevatedButton get shape4 => _shape4;

  ElevatedButton get shape5 => _shape5;

  set shape4(ElevatedButton s) {
    _shape4 = s;
    notifyListeners();
  }

  set shape5(ElevatedButton s) {
    _shape5 = s;
    notifyListeners();
  }

  Row _row1 = Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 3, top: 35),
        child: Container(
          width: 180.0,
          height: 140.0,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 4,
                )
              ],
              image: new DecorationImage(
                fit: BoxFit.fill,
                image:
                    AssetImage("assets/images/black-woman-fashion-photo.webp"),
              )),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              'Joyce',
              style: GoogleFonts.lato(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              'Makhaba',
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    ],
  );

  Row get row1 => _row1;

  set row1(Row r) {
    _row1 = r;
    notifyListeners();
  }
}
