import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

/// Кастомная карточка (Card) для отображения информации, как на макете.
/// 
/// Дата создания: 15-11-2026
/// Автор создания: [Твой номер]
class AppCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onTap;

  const AppCard({
    super.key,
    required this.title,
    required this.description,
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
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            // Текстовая часть
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.title3Semibold.copyWith(color: AppColors.white),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: AppTextStyles.captionRegular.copyWith(
                      color: AppColors.white.withValues(alpha: 0.8),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            // Заглушка вместо иллюстрации (потом вставим картинку)
            const Icon(Icons.hourglass_empty, size: 64, color: AppColors.white),
          ],
        ),
      ),
    );
  }
}