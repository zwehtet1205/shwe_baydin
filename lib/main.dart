import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'controllers/horoscope_controller.dart';
import 'l10n/app_localizations.dart';
import 'screens/intro_screen.dart';
import 'config/app_routes.dart';
import 'config/app_theme.dart';
import 'controllers/nav_controller.dart';
import 'controllers/auth_controller.dart';

void main() {
  // Get.put(HoroscopeController());
  Get.put(AuthController());
  Get.put(NavController());
  runApp(const AstrologyApp());
}

class AstrologyApp extends StatelessWidget {
  const AstrologyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Astrology App',
      theme: AppTheme.lightTheme,
      // initialRoute: AppRoutes.home,
      getPages: AppRoutes.routes,
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('my', ''), // Burmese
      ],
      // locale: Get.deviceLocale, // Use device locale as default
      locale: const Locale('my', ''), // Default to Burmese
      fallbackLocale: const Locale('en', ''), // Fallback to English
      home: const IntroScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}