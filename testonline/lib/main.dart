import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testonline/Page/Home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.ralewayTextTheme(),
      ),
      home: HomeScreen(),
    );
  }
}
