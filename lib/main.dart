import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hupomnesis/src/views/login_sign_up_page.dart';
import 'package:hupomnesis/src/views/root.dart';

void main() {
  runApp(
    Hupomnesis(),
  );
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setEnabledSystemUIOverlays(<SystemUiOverlay>[]);
}

class Hupomnesis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hupomnesis',
      home: LoginSignUpPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blue),
        accentColor: Colors.blueAccent,
        brightness: Brightness.light,
      ),
    );
  }
}