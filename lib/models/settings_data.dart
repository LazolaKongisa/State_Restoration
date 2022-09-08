import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';


Row row = Row(
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
              image: AssetImage("assets/images/black-woman-fashion-photo.webp"),
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

Row row1 = Row(
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
              image: AssetImage("assets/images/black-woman-fashion-photo.webp"),
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

Row row2 = Row(
  children: [

     Padding(
      padding: const EdgeInsets.only(left: 30, top: 20),
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
    Padding(
      padding: const EdgeInsets.only(left: 10, top: 35),
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
              image: AssetImage("assets/images/black-woman-fashion-photo.webp"),
            )),
      ),
    ),
   
  ],
);

Row row3 = Row(
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 120, top: 30),
      child: Column(
        children: [
          Container(
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
                  image: AssetImage("assets/images/black-woman-fashion-photo.webp"),
                )),
          ),
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

ElevatedButton buttonRound = ElevatedButton(
  onPressed: () {
    row1 = Row(
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
                  image: AssetImage(
                      "assets/images/black-woman-fashion-photo.webp"),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Text(
                'Joyce10',
                style: GoogleFonts.lato(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                'Makhaba10',
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
  },
  child: Text('Pic on left'),
  style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      minimumSize: Size(80.0, 40.0)),
);

ElevatedButton buttonSquare = ElevatedButton(
  onPressed: () {},
  child: Text('Pic on left'),
  style: ElevatedButton.styleFrom(minimumSize: Size(80.0, 40.0)),
);

ElevatedButton buttonRound2 = ElevatedButton(
  onPressed: () {},
  child: Text('Pic on Right'),
  style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      minimumSize: Size(80.0, 40.0)),
);

ElevatedButton buttonSquare2 = ElevatedButton(
  onPressed: () {},
  child: Text('Pic on Right'),
  style: ElevatedButton.styleFrom(minimumSize: Size(80.0, 40.0)),
);

ElevatedButton buttonRound3 = ElevatedButton(
  onPressed: () {},
  child: Text('Pic at top'),
  style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      minimumSize: Size(80.0, 40.0)),
);

ElevatedButton buttonSquare3 = ElevatedButton(
  onPressed: () {},
  child: Text('Pic at top'),
  style: ElevatedButton.styleFrom(minimumSize: Size(80.0, 40.0)),
);

ElevatedButton shapeRound1 = ElevatedButton.icon(
  onPressed: () {},
  icon: Icon(Icons.phone),
  label: Text('Mobile'),
  style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      primary: Colors.purple,
      minimumSize: Size(120.0, 40.0)),
);

ElevatedButton shapeSquare1 = ElevatedButton.icon(
  onPressed: () {},
  icon: Icon(Icons.phone),
  label: Text('Mobile'),
  style: ElevatedButton.styleFrom(
      primary: Colors.purple, minimumSize: Size(120.0, 40.0)),
);

ElevatedButton shapeRound2 = ElevatedButton.icon(
  onPressed: () {},
  icon: Icon(Icons.mail_sharp),
  label: Text('Mail'),
  style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      primary: Colors.purple,
      minimumSize: Size(120.0, 40.0)),
);
ElevatedButton shapeSquare2 = ElevatedButton.icon(
  onPressed: () {},
  icon: Icon(Icons.mail_sharp),
  label: Text('Mail'),
  style: ElevatedButton.styleFrom(
      primary: Colors.purple, minimumSize: Size(120.0, 40.0)),
);

class SettingsData with ChangeNotifier {
  bool _state = true;

  SharedPreferences? _preferences;

  bool get state => _state;

  SettingsData() {
    _loadSettingsFromPrefs();
    _loadSettingsFromPrefs1();
    _loadSettingsFromPrefs2();
    _loadSettingsFromPrefs3();
  }

  _initializePrefs() async {
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }
  }

  _loadSettingsFromPrefs() async {
    await _initializePrefs();
    _state = _preferences?.getBool('State') ?? false;
    notifyListeners();
  }

  _saveSettingsToPrefs() async {
    await _initializePrefs();
    _preferences?.setBool('State', _state);
  }

  void toggleState() {
    _state = !_state;
    _saveSettingsToPrefs();
    notifyListeners();
  }

  bool _isPressed1 = false;

  SharedPreferences? _preferences1;

  bool get isPressed1 => _isPressed1;

  _initializePrefs1() async {
    if (_preferences1 == null) {
      _preferences1 = await SharedPreferences.getInstance();
    }
  }

  _loadSettingsFromPrefs1() async {
    await _initializePrefs1();
    _isPressed1 = _preferences1?.getBool('IsPressed1') ?? false;
    notifyListeners();
  }

  _saveSettingsToPrefs1() async {
    await _initializePrefs1();
    _preferences1?.setBool('IsPressed1', _isPressed1);
  }

  void isPressedState1() {
    _isPressed1 = ! _isPressed1;
    _saveSettingsToPrefs1();
    notifyListeners();
  }

  bool _isPressed2 = false;

  SharedPreferences? _preferences2;

  bool get isPressed2 => _isPressed2;

  _initializePrefs2() async {
    if (_preferences2 == null) {
      _preferences2 = await SharedPreferences.getInstance();
    }
  }

  _loadSettingsFromPrefs2() async {
    await _initializePrefs2();
    _isPressed2 = _preferences2?.getBool('IsPressed2') ?? false;
    notifyListeners();
  }

  _saveSettingsToPrefs2() async {
    await _initializePrefs2();
    _preferences2?.setBool('IsPressed2', _isPressed2);
  }

  void isPressedState2() {
    _isPressed2 =! _isPressed2;
    _saveSettingsToPrefs2();
    notifyListeners();
  }

  bool _isPressed3 = false;

  SharedPreferences? _preferences3;

  bool get isPressed3 => _isPressed3;

  _initializePrefs3() async {
    if (_preferences3 == null) {
      _preferences3 = await SharedPreferences.getInstance();
    }
  }

  _loadSettingsFromPrefs3() async {
    await _initializePrefs3();
    _isPressed3 = _preferences3?.getBool('IsPressed3') ?? false;
    notifyListeners();
  }

  _saveSettingsToPrefs3() async {
    await _initializePrefs2();
    _preferences2?.setBool('IsPressed3', _isPressed3);
  }

  void isPressedState3() {
    _isPressed3=! _isPressed3;
    _saveSettingsToPrefs3();
    notifyListeners();
  }

  ElevatedButton _shape = ElevatedButton(
    onPressed: () {},
    child: Text('Pic on left'),
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        minimumSize: Size(80.0, 40.0)),
  );

  ElevatedButton _shape2 = ElevatedButton(
    onPressed: () {},
    child: Text('Pic on right'),
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        minimumSize: Size(80.0, 40.0)),
  );

  ElevatedButton _shape3 = ElevatedButton(
    onPressed: () {},
    child: Text('Pic at top'),
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        minimumSize: Size(80.0, 40.0)),
  );

  ElevatedButton get shape => _shape;

  ElevatedButton get shape2 => _shape2;

  ElevatedButton get shape3 => _shape3;

  set shape(ElevatedButton s) {
    _shape = s;
    notifyListeners();
  }

  set shape2(ElevatedButton s) {
    _shape2 = s;
    notifyListeners();
  }

  set shape3(ElevatedButton s) {
    _shape3 = s;
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
