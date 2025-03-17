import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  fontFamily: GoogleFonts.manrope().fontFamily,
  scaffoldBackgroundColor: SJColors.primary,
);

class SJColors {
  static const Color primary = Color(0xFF8ED701);
  static const Color secondary = Color(0xFF538000);
  static const Color black = Color(0xFF020800);
  static const Color lemon = Color(0xFFDDDFAE);
}
