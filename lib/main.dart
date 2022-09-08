import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tpg_final_exam/pages/main_page_data.dart';
import 'package:tpg_final_exam/routes/routes.dart';

import 'models/settings_data.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building MyApp');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SettingsData()),
        ChangeNotifierProvider(create: (context) => MainPageData())
      ],
      child: Consumer<SettingsData>(builder: (context,value,child)
      {
        return MaterialApp(
          initialRoute: RouteManager.splashPage,
          onGenerateRoute: RouteManager.generateRoute,
        );
      },
      )
    );
  }
}