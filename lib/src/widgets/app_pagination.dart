import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

/// Кастомный компонент пагинации (точечные индикаторы), как на макете.
/// 
/// Дата создания: 15-11-2026
/// Автор создания: [Твой номер]
class AppPagination extends StatelessWidget {
  final int currentIndex;
  final int count;

  const AppPagination({
    super.key,
    required this.currentIndex,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 6,
          // Активная палочка длиннее
          width: currentIndex == index ? 24 : 6,
          decoration: BoxDecoration(
            color: currentIndex == index ? AppColors.primary : AppColors.inputLine,
            borderRadius: BorderRadius.circular(3),
          ),
        );
      }),
    );
  }
}