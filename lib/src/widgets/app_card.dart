import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class AppCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon; // ИСПОЛЬЗУЕМ ИКОНКУ ВМЕСТО КАРТИНКИ
  final VoidCallback? onTap;

  const AppCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: AppColors.primaryGradient,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTextStyles.title3Semibold.copyWith(color: AppColors.white)),
                  const SizedBox(height: 8),
                  Text(description, style: AppTextStyles.captionRegular.copyWith(color: AppColors.white.withValues(alpha: 0.9))),
                  const SizedBox(height: 16),
                  const Icon(Icons.arrow_forward, color: AppColors.white),
                ],
              ),
            ),
            const SizedBox(width: 8),
            // Иконка вместо картинки
            Icon(icon, size: 70, color: AppColors.white.withValues(alpha: 0.8)),
          ],
        ),
      ),
    );
  }
}