import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomThemes {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xFFFFFFFF),
      titleTextStyle: GoogleFonts.anonymousPro(
        color: const Color(0xFF9999A1),
        fontSize: 15,
      ),
      iconTheme: const IconThemeData(
        color: Color(0xFF9999A1),
      ),
      elevation: 0,
      centerTitle: true,
    ),
  );
}
