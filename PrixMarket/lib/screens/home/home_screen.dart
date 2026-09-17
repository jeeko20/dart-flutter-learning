import 'package:flutter/material.dart';
import 'package:prix_market/core/theme/app_colors.dart';
import 'package:prix_market/core/theme/app_typography.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        backgroundColor: AppColors.surface,
        elevation: 0,
        title: Text("PrixMarket", style: AppTypography.headlineLarge.copyWith(color: AppColors.primary)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_outlined, color: AppColors.onSurface)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchBar(),
            const SizedBox(height: 16),
            _buildCategories(),
            const SizedBox(height: 24),
            _buildCommodityCards(),
             const SizedBox(height: 24),
            _buildAIForecastCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.outline,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Akèy"),
          BottomNavigationBarItem(icon: Icon(Icons.storefront), label: "Mache"),
          BottomNavigationBarItem(icon: Icon(Icons.report_problem), label: "Rapòte"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Kominote"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Pwofil"),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(color: AppColors.surfaceContainer, borderRadius: BorderRadius.circular(12)),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Chèche yon denre...",
          icon: Icon(Icons.search, color: AppColors.outline),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildCategories() {
    return SizedBox(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: ['Tout', 'Legim', 'Fwi', 'Sereyal', 'Viv', 'Epis'].map((cat) {
          return Container(
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: cat == 'Tout' ? AppColors.primary : AppColors.surfaceContainerLow,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(cat, style: AppTypography.labelLarge.copyWith(color: cat == 'Tout' ? AppColors.onPrimary : AppColors.onSurfaceVariant)),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildCommodityCards() {
    return Column(
      children: [
        _buildCard("Diri (Riz)", "Mache Salomon", "250 HTG/mamit", "-2%"),
        _buildCard("Pwa Nwa", "Mache Pont-Sondé", "180 HTG/mamit", "+5%"),
      ],
    );
  }

  Widget _buildCard(String name, String market, String price, String trend) {
    bool isDown = trend.startsWith('-');
    return Card(
      color: AppColors.surfaceContainerLowest,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: const Icon(Icons.eco, color: AppColors.primary),
        title: Text(name, style: AppTypography.labelLarge),
        subtitle: Text(market, style: AppTypography.bodySmall),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(price, style: AppTypography.priceDisplay),
            Text(trend, style: TextStyle(color: isDown ? AppColors.priceDown : AppColors.priceUp, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

    Widget _buildAIForecastCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.amber.withValues(alpha:0.1), borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.amber)),
      child: Row(
        children: [
          const Icon(Icons.auto_awesome, color: Colors.amber),
          const SizedBox(width: 12),
          Expanded(child: Text("Pri pwa nwa ka desann 5% semèn pwochèn", style: AppTypography.bodyMedium)),
        ]
      )
    );
  }
}
