import 'package:flutter/material.dart';

class AppColors {
  // Core colors for astrology theme
  static const Color primary = Color(0xFF4E342E); // Earthy brown
  static const Color secondary = Color(0xFFFFD700); // Gold accent
  static const Color surfaceLight = Color(0xFFF8EDEB); // Soft peach
  static const Color surfaceDark = Color(0xFF262626); // Deep charcoal
  static const Color backgroundLight = Color(0xFFF5F5F5); // Light grey
  static const Color backgroundDark = Color(0xFF121212); // Dark black
  static const Color textPrimaryLight = Colors.black87;
  static const Color textPrimaryDark = Colors.white70;
  static const Color textSecondary = Colors.black54;
  static const Color error = Colors.redAccent;
}

class AppThemeConfig {
  // Theme constants
  static const String defaultFontFamily = 'Roboto'; 
  static const double defaultBorderRadius = 12.0;
  static const double defaultElevation = 4.0;
  static const Size defaultButtonSize = Size(double.infinity, 50);
  static const EdgeInsets defaultButtonPadding = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 12,
  );
}

class AppTheme {
  static ThemeData createTheme({
    required Brightness brightness,
    required Color primaryColor,
    required Color secondaryColor,
    required Color surfaceColor,
    required Color backgroundColor,
    required Color textPrimaryColor,
    Color errorColor = AppColors.error,
    String fontFamily = AppThemeConfig.defaultFontFamily,
    double borderRadius = AppThemeConfig.defaultBorderRadius,
    double elevation = AppThemeConfig.defaultElevation,
    Size buttonSize = AppThemeConfig.defaultButtonSize,
    EdgeInsets buttonPadding = AppThemeConfig.defaultButtonPadding,
  }) {
    final isLight = brightness == Brightness.light;
    final primarySwatch = MaterialColor(primaryColor.value, {
      50: primaryColor.withValues(alpha: 0.1),
      100: primaryColor.withValues(alpha: 0.2),
      200: primaryColor.withValues(alpha: 0.3),
      300: primaryColor.withValues(alpha: 0.4),
      400: primaryColor.withValues(alpha: 0.5),
      500: primaryColor,
      600: primaryColor.withValues(alpha: 0.7),
      700: primaryColor.withValues(alpha: 0.8),
      800: primaryColor.withValues(alpha: 0.9),
      900: primaryColor.withValues(alpha: 1.0),
    });

    return ThemeData(
      brightness: brightness,
      primaryColor: primaryColor,
      primarySwatch: primarySwatch,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: primaryColor,
        onPrimary: Colors.white,
        secondary: secondaryColor,
        onSecondary: Colors.black,
        error: errorColor,
        onError: Colors.white,
        background: backgroundColor,
        onBackground: textPrimaryColor,
        surface: surfaceColor,
        onSurface: textPrimaryColor,
      ),
      fontFamily: fontFamily,
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: textPrimaryColor,
          fontFamily: fontFamily,
        ),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: textPrimaryColor,
          fontFamily: fontFamily,
        ),
        bodyLarge: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: textPrimaryColor,
          fontFamily: fontFamily,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: textPrimaryColor,
          fontFamily: fontFamily,
        ),
        labelMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.textSecondary,
          fontFamily: fontFamily,
        ),
        labelSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: AppColors.textSecondary,
          fontFamily: fontFamily,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: isLight ? Colors.black : Colors.white,
          backgroundColor: secondaryColor,
          minimumSize: buttonSize,
          padding: buttonPadding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: elevation,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: primaryColor.withValues(alpha: 0.5)),
          foregroundColor: primaryColor,
          minimumSize: buttonSize,
          padding: buttonPadding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        selectedItemColor: secondaryColor,
        unselectedItemColor: Colors.grey,
        elevation: elevation,
      ),
      cardTheme: CardTheme(
        color: isLight ? Colors.white : AppColors.surfaceDark,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(color: primaryColor),
        filled: true,
        fillColor: isLight ? Colors.white : AppColors.surfaceDark,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: primaryColor.withValues(alpha: 0.3)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: primaryColor.withValues(alpha: 0.3)),
        ),
      ),
    );
  }

  static ThemeData get lightTheme => createTheme(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    secondaryColor: AppColors.secondary,
    surfaceColor: AppColors.surfaceLight,
    backgroundColor: AppColors.backgroundLight,
    textPrimaryColor: AppColors.textPrimaryLight,
  );

  static ThemeData get darkTheme => createTheme(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    secondaryColor: AppColors.secondary,
    surfaceColor: AppColors.surfaceDark,
    backgroundColor: AppColors.backgroundDark,
    textPrimaryColor: AppColors.textPrimaryDark,
  );
}
