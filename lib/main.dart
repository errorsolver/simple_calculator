import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalkulator Sederhana',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange[400],
          titleTextStyle: GoogleFonts.poppins(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange),
        scaffoldBackgroundColor: Colors.orange[50],
        textTheme: GoogleFonts.poppinsTextTheme(),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
      home: MenuPage(),
    );
  }
}
