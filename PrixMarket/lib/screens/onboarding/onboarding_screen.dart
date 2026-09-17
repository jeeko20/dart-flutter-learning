import 'package:flutter/material.dart';
import 'package:prix_market/core/theme/app_colors.dart';
import 'package:prix_market/core/theme/app_typography.dart';
import 'package:prix_market/screens/auth/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(color: AppColors.surfaceContainerHigh, borderRadius: BorderRadius.circular(20)),
                    child: Text("HT 🇭🇹 / FR 🇫🇷", style: AppTypography.labelSmall),
                  ),
                  TextButton(onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen())), child: const Text("Pase")),
                ],
              ),
            ),

            // Carousel
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (i) => setState(() => _currentPage = i),
                children: [
                  _buildPage("Tcheke pri yo", "Suivi des prix en temps réel"),
                  _buildPage("Konpare mache yo", "Comparer les marchés"),
                  _buildPage("IA konseye w", "Conseils IA pour achats"),
                ],
              ),
            ),

            // Indicator & CTA
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                   Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (i) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 8, height: 8,
                        decoration: BoxDecoration(color: _currentPage == i ? AppColors.primary : AppColors.outlineVariant, shape: BoxShape.circle),
                      )),
                   ),
                   const SizedBox(height: 24),
                   SizedBox(
                      height: 48, width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, foregroundColor: AppColors.onPrimary, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                        onPressed: () => _currentPage == 2 ? Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen())) : _controller.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut),
                        child: Text(_currentPage == 2 ? "Kòmanse" : "Swivan"),
                      ),
                   )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage(String title, String desc) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.show_chart, size: 100, color: AppColors.primary),
        const SizedBox(height: 32),
        Text(title, style: AppTypography.displayLarge),
        const SizedBox(height: 16),
        Text(desc, style: AppTypography.bodyMedium),
      ],
    );
  }
}
