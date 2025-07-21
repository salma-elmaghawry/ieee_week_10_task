import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:week_10/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: ThemeData.dark().textTheme.apply(
          fontFamily: GoogleFonts.audiowide().fontFamily,
        ),
      ),
      home: const HomePage(),
    );
  }
}
