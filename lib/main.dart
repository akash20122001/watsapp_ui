import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watsapp_ui/Screens/authenticationScreen.dart';
import 'package:watsapp_ui/Screens/homeScreen.dart';
import 'package:watsapp_ui/Screens/introScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
      routes: {
        '\introscreen': (context) => IntroScreen(),
        '\authenticationScreen': (context) => AuthenticationPage(),
        '\homescreen': (context) => HomeScreen(),
      },
    );
  }
}
