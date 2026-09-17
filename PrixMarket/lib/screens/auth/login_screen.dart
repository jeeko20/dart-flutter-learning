import 'package:flutter/material.dart';
import 'package:prix_market/core/theme/app_colors.dart';
import 'package:prix_market/core/theme/app_typography.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? selectedRole;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            children: [
              // Sync Indicator
              _buildSyncIndicator(),
              const SizedBox(height: 24),

              // Logo & Title
              _buildHeader(),
              const SizedBox(height: 32),

              // Phone Input
              _buildPhoneInput(),
              const SizedBox(height: 24),

              // Roles
              _buildRoleSelector(),
              const SizedBox(height: 24),

              // CTA
              _buildPrimaryButton(),
              const SizedBox(height: 16),
              _buildGuestAccess(),

              // Footer Banner
              const SizedBox(height: 24),
              _buildMarketTicker(),

              // Trust Note
              const SizedBox(height: 24),
              _buildTrustNote(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSyncIndicator() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.primaryFixed,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            "Rezo Mache Senkronize",
            style: AppTypography.labelSmall.copyWith(color: AppColors.onPrimaryFixed),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: AppColors.surfaceContainerLowest,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(color: Colors.black.withValues(alpha:0.1), blurRadius: 10)],
          ),
          child: const Icon(Icons.shopping_bag_outlined, size: 40, color: AppColors.primary), // Placeholder logo
        ),
        const SizedBox(height: 16),
        Text("Byenvini sou PrixMarket 👋", style: AppTypography.headlineMedium.copyWith(color: AppColors.onSurface)),
        const SizedBox(height: 8),
        Text("Antre nimewo telefòn ou pou w resevwa kòd sekirite pa SMS", style: AppTypography.bodyMedium.copyWith(color: AppColors.onSurfaceVariant), textAlign: TextAlign.center),
      ],
    );
  }

  Widget _buildPhoneInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Nimewo Telefòn", style: AppTypography.labelMedium.copyWith(color: AppColors.onSurface)),
            Text("Gratis pa SMS", style: AppTypography.labelSmall.copyWith(color: AppColors.primary)),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: AppColors.surfaceContainerLow,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                decoration: const BoxDecoration(
                  color: AppColors.surfaceContainer,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
                ),
                child: Text("🇭🇹 +509", style: AppTypography.labelLarge),
              ),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.phone,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly, LengthLimitingTextInputFormatter(8)],
                  decoration: InputDecoration(
                    hintText: "37 12 34 56",
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    hintStyle: TextStyle(color: AppColors.outline),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRoleSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Ki wòl ou nan mache a? (Opsyonèl)", style: AppTypography.labelMedium),
        const SizedBox(height: 8),
        ...['Madan Sara / Revandè', 'Achtè / Fanmi', 'Transpòtè / Depo'].map((role) {
          final isSelected = selectedRole == role;
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: InkWell(
              onTap: () => setState(() => selectedRole = role),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.surfaceContainerHigh : AppColors.surfaceContainerLow,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Text(role == 'Madan Sara / Revandè' ? '👩🏾‍🌾' : role == 'Achtè / Fanmi' ? '🛒' : '🚛', style: const TextStyle(fontSize: 20)),
                    const SizedBox(width: 12),
                    Text(role, style: AppTypography.labelLarge),
                  ],
                ),
              ),
            ),
          );
        }),
      ],
    );
  }

  Widget _buildPrimaryButton() {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.onPrimary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        onPressed: () {},
        child: const Text("Resevwa Kòd SMS (OTP)"),
      ),
    );
  }

  Widget _buildGuestAccess() {
    return TextButton(
      onPressed: () {},
      child: Text("Kontinye kòm Envite", style: AppTypography.labelMedium.copyWith(color: AppColors.primary)),
    );
  }

  Widget _buildMarketTicker() {
      return Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(color: AppColors.surfaceContainerLow, borderRadius: BorderRadius.circular(12)),
          child: Row(
              children: [
                  const Icon(Icons.campaign, color: AppColors.secondary),
                  const SizedBox(width: 8),
                  Expanded(child: Text("Pwa Nwa (Mache Salomon): 550 HTG", style: AppTypography.bodySmall)),
              ]
          )
      );
  }

   Widget _buildTrustNote() {
      return Row(
          children: [
              const Icon(Icons.verified_user, color: AppColors.primary, size: 16),
              const SizedBox(width: 8),
              Expanded(child: Text("Done w yo pwoteje. Nou pa janm pataje nimewo w.", style: AppTypography.bodySmall,)),
          ]
      );
  }
}
