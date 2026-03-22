import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // ── Background & text ──────────────────────────────────────────────
  static const Color warmCream = Color(0xFFFFF8F0);
  static const Color textDark = Color(0xFF2D1B4E);
  static const Color textMuted = Color(0xFF6B5A7D);

  // ── Primary palette ────────────────────────────────────────────────
  static const Color coral = Color(0xFFF97066);
  static const Color softTeal = Color(0xFF5EEAD4);
  static const Color mutedPurple = Color(0xFFA78BFA);
  static const Color sunshine = Color(0xFFFCD34D);
  static const Color bubblegumPink = Color(0xFFF9A8D4);
  static const Color mintGreen = Color(0xFF6EE7B7);
  static const Color peachRed = Color(0xFFFCA5A5);

  // ── Success / Danger / Warning ─────────────────────────────────────
  static const Color successGreen = Color(0xFF10B981);
  static const Color dangerRed = Color(0xFFEF4444);
  static const Color warningAmber = Color(0xFFF59E0B);

  // ── Pearl & mnemonic callout colors ────────────────────────────────
  static const Color pearlBackground = Color(0xFFFFFBEB);
  static const Color pearlBorder = Color(0xFFF59E0B);
  static const Color pearlText = Color(0xFF92400E);

  static const Color mnemonicBackground = Color(0xFFFDF2F8);
  static const Color mnemonicBorder = Color(0xFFEC4899);
  static const Color mnemonicText = Color(0xFF9D174D);

  static const Color avoidBackground = Color(0xFFFEF2F2);
  static const Color avoidBorder = Color(0xFFEF4444);

  // ── Module-specific colors (14 pediatric modules) ──────────────────
  static const Color geneticsColor = Color(0xFF8B5CF6);
  static const Color developmentColor = Color(0xFF06B6D4);
  static const Color limbDeficienciesColor = Color(0xFFEC4899);
  static const Color bonesJointsColor = Color(0xFFF97316);
  static const Color connectiveTissueColor = Color(0xFF3B82F6);
  static const Color burnsColor = Color(0xFFEF4444);
  static const Color cancersColor = Color(0xFF6366F1);
  static const Color neurotraumaColor = Color(0xFF0EA5E9);
  static const Color cerebralPalsyColor = Color(0xFF14B8A6);
  static const Color spinaBifidaColor = Color(0xFF7C3AED);
  static const Color neuromuscularColor = Color(0xFFD946EF);
  static const Color pharmacologyColor = Color(0xFF0D9488);
  static const Color orthoticsColor = Color(0xFFF59E0B);
  static const Color rehabContinuumColor = Color(0xFF059669);

  // ── Pastel tints for module cards ──────────────────────────────────
  static Color getModuleTint(int index) {
    final tints = [
      const Color(0xFFF5F3FF), // Genetics - light lavender
      const Color(0xFFECFEFF), // Development - light cyan
      const Color(0xFFFDF2F8), // Limb - light pink
      const Color(0xFFFFF7ED), // Bones - light orange
      const Color(0xFFEFF6FF), // Connective - light blue
      const Color(0xFFFEF2F2), // Burns - light red
      const Color(0xFFEEF2FF), // Cancers - light indigo
      const Color(0xFFF0F9FF), // Neurotrauma - light sky
      const Color(0xFFF0FDFA), // CP - light teal
      const Color(0xFFF5F3FF), // Spina Bifida - light violet
      const Color(0xFFFDF4FF), // Neuromuscular - light fuchsia
      const Color(0xFFF0FDFA), // Pharmacology - light teal
      const Color(0xFFFEFCE8), // Orthotics - light yellow
      const Color(0xFFECFDF5), // Rehab - light emerald
    ];
    return tints[index % tints.length];
  }

  // ── Theme ──────────────────────────────────────────────────────────
  static ThemeData get lightTheme {
    final baseTextTheme = GoogleFonts.quicksandTextTheme();

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: mutedPurple,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: warmCream,
      appBarTheme: const AppBarTheme(
        backgroundColor: warmCream,
        foregroundColor: textDark,
        elevation: 0,
        scrolledUnderElevation: 0.5,
        centerTitle: true,
      ),
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Color(0xFFE8DDD0)),
        ),
      ),
      textTheme: baseTextTheme.copyWith(
        headlineLarge: GoogleFonts.quicksand(
          fontSize: 28,
          fontWeight: FontWeight.w800,
          color: textDark,
        ),
        headlineMedium: GoogleFonts.quicksand(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: textDark,
        ),
        titleLarge: GoogleFonts.quicksand(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: textDark,
        ),
        bodyLarge: GoogleFonts.dmSans(
          fontSize: 16,
          height: 1.6,
          color: textDark,
        ),
        bodyMedium: GoogleFonts.dmSans(
          fontSize: 14,
          height: 1.5,
          color: textMuted,
        ),
        labelSmall: GoogleFonts.dmSans(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.2,
          color: textMuted,
        ),
      ),
      tabBarTheme: const TabBarThemeData(
        labelColor: coral,
        unselectedLabelColor: textMuted,
        indicatorColor: coral,
        indicatorSize: TabBarIndicatorSize.label,
      ),
      chipTheme: ChipThemeData(
        selectedColor: coral.withAlpha(31),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
