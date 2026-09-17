import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'screens/splash/splash_screen.dart';

class PrixMarketApp extends StatelessWidget {
  const PrixMarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PrixMarket Haiti',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
