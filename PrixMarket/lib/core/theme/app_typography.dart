import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  // Headlines / Titles -> Space Grotesk
  static TextStyle get displayLarge => GoogleFonts.spaceGrotesk(
        fontSize: 32,
        height: 40 / 32,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.02 * 32,
      );

  static TextStyle get displayLargeMobile => GoogleFonts.spaceGrotesk(
        fontSize: 26,
        height: 34 / 26,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.01 * 26,
      );

  static TextStyle get headlineLarge => GoogleFonts.spaceGrotesk(
        fontSize: 24,
        height: 32 / 24,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.01 * 24,
      );

  static TextStyle get headlineMedium => GoogleFonts.spaceGrotesk(
        fontSize: 20,
        height: 28 / 20,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get headlineSmall => GoogleFonts.spaceGrotesk(
        fontSize: 18,
        height: 24 / 18,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get priceDisplay => GoogleFonts.spaceGrotesk(
        fontSize: 22,
        height: 28 / 22,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.02 * 22,
      );

  static TextStyle get labelLarge => GoogleFonts.spaceGrotesk(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.02 * 14,
      );

  static TextStyle get labelMedium => GoogleFonts.spaceGrotesk(
        fontSize: 12,
        height: 16 / 12,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.03 * 12,
      );

  static TextStyle get labelSmall => GoogleFonts.spaceGrotesk(
        fontSize: 10,
        height: 14 / 10,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.05 * 10,
      );

  // Body Texts -> Plus Jakarta Sans
  static TextStyle get bodyLarge => GoogleFonts.plusJakartaSans(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get bodyMedium => GoogleFonts.plusJakartaSans(
        fontSize: 14,
        height: 20 / 14,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get bodySmall => GoogleFonts.plusJakartaSans(
        fontSize: 12,
        height: 16 / 12,
        fontWeight: FontWeight.w400,
      );
}
