import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

/// Перечисление состояний кнопки.
enum AppButtonState { enabled, disabled, loading }

/// Кастомный виджет кнопки, реализующий дизайн и состояния из макета.
/// 
/// Дата создания: 14-11-2026
/// Автор создания: [Твой номер]
class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final AppButtonState state;

  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.state = AppButtonState.enabled,
  });

  /// Основной метод сборки виджета
  @override
  Widget build(BuildContext context) {
    Color bgColor;
    Color txtColor = AppColors.white;

    switch (state) {
      case AppButtonState.enabled:
        bgColor = AppColors.primary; 
        break;
      case AppButtonState.disabled:
        bgColor = AppColors.primary.withValues(alpha: 0.5);
        break;
      case AppButtonState.loading:
        bgColor = AppColors.primary; 
        break;
    }

    return ElevatedButton(
      onPressed: state == AppButtonState.enabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        disabledBackgroundColor: bgColor,
        minimumSize: const Size(double.infinity, 56),
        shape: const StadiumBorder(),
        elevation: 0,
      ),
      child: state == AppButtonState.loading
          ? const SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
            )
          : Text(
              text,
              style: AppTextStyles.textMedium.copyWith(
                color: txtColor,
                fontSize: 18,
              ),
            ),
    );
  }
}