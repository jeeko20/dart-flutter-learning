import 'package:flutter/material.dart';
import '../../../models/commodity.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_typography.dart';

class CommodityCard extends StatelessWidget {
  final Commodity commodity;

  const CommodityCard({super.key, required this.commodity});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.primaryContainer.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.shopping_basket, color: AppColors.primaryContainer),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(commodity.name, style: AppTypography.labelLarge),
                  Text('${commodity.price} HTG / ${commodity.unit}', style: AppTypography.bodyLarge),
                ],
              ),
            ),
            Column(
              children: [
                Icon(
                  commodity.trend >= 0 ? Icons.arrow_upward : Icons.arrow_downward,
                  color: commodity.trend >= 0 ? AppColors.priceUp : AppColors.priceDown,
                ),
                Text(
                  '${(commodity.trend.abs() * 100).toStringAsFixed(0)}%',
                  style: TextStyle(
                    color: commodity.trend >= 0 ? AppColors.priceUp : AppColors.priceDown,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
