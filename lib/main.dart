import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mmama/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme()
      ),
      debugShowCheckedModeBanner: false,
      title: 'Mama Mtoto App',
      home: splash(),
    );
  }
}



