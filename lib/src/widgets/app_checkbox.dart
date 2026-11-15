import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

/// Кастомный виджет чекбокса, реализующий дизайн из макета.
/// 
/// Дата создания: 15-11-2026
/// Автор создания: [Твой номер]
class AppCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const AppCheckbox({
    super.key,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // При нажатии передаем инвертированное значение наверх
        if (onChanged != null) onChanged!(!value);
      },
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: value ? AppColors.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: value ? AppColors.primary : AppColors.inputLine,
            width: 2,
          ),
        ),
        child: value
            ? const Icon(
                Icons.check,
                size: 18,
                color: AppColors.white,
              )
            : null,
      ),
    );
  }
}