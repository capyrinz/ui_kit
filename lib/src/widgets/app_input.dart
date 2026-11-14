import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

/// Кастомный виджет поля ввода (Input), реализующий дизайн и состояния из макета.
/// 
/// Дата создания: 14-11-2026
/// Автор создания: [Твой номер]
class AppInput extends StatelessWidget {
  final String hintText;
  final String? errorText;
  final TextEditingController? controller;
  final bool obscureText;

  const AppInput({
    super.key,
    required this.hintText,
    this.errorText,
    this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    // Если есть текст ошибки, мы меняем цвет линии на красный
    Color lineColor = errorText != null ? AppColors.error : AppColors.inputLine;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          style: AppTextStyles.textRegular,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppTextStyles.textRegular.copyWith(color: AppColors.placeholder),
            // Убираем стандартные рамки
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: lineColor, width: 1.5),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: lineColor, width: 1.5),
            ),
            focusedBorder: UnderlineInputBorder(
              // При фокусе линия становится главного цвета
              borderSide: BorderSide(color: AppColors.primary, width: 2),
            ),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.error, width: 1.5),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
          ),
        ),
        // Отображение текста ошибки, если она есть
        if (errorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              errorText!,
              style: AppTextStyles.caption2Regular.copyWith(color: AppColors.error),
            ),
          ),
      ],
    );
  }
}