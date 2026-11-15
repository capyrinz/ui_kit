import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

/// Виджет таймера, отображающий время обратного отсчета.
/// 
/// Дата создания: 15-11-2026
/// Автор создания: [Твой номер]
class AppTimer extends StatelessWidget {
  final String time; // Строка вида "00:00"

  const AppTimer({
    super.key,
    this.time = "00:00",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            "Timer",
            style: AppTextStyles.captionRegular.copyWith(color: AppColors.white),
          ),
          const SizedBox(height: 8),
          Text(
            time,
            style: AppTextStyles.title1ExtraBold.copyWith(
              color: AppColors.white,
              fontSize: 40, // Делаем цифры крупными, как на макете
            ),
          ),
        ],
      ),
    );
  }
}