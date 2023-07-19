import 'package:ecom_app_dashboard_ui/core/color_palette.dart';
import 'package:ecom_app_dashboard_ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecom Dashboard App UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          foregroundColor: ColorPalette.white,
          backgroundColor: ColorPalette.nightBlack,
        ),
        scaffoldBackgroundColor: ColorPalette.nightBlack,
        fontFamily: GoogleFonts.ubuntuMono().fontFamily,
        colorScheme:
            ColorScheme.fromSeed(seedColor: ColorPalette.busGreen).copyWith(
          brightness: Brightness.dark,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
