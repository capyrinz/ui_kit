import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class AppInput extends StatelessWidget {
  final String hintText;
  final String? errorText;
  final TextEditingController? controller;
  final bool obscureText;
  final String? Function(String?)? validator; // Добавили валидатор
  final Widget? suffixIcon; // Добавили иконку

  const AppInput({
    super.key,
    required this.hintText,
    this.errorText,
    this.controller,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    Color lineColor = errorText != null ? AppColors.error : AppColors.inputLine;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          validator: validator,
          style: AppTextStyles.textRegular,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppTextStyles.textRegular.copyWith(color: AppColors.placeholder),
            suffixIcon: suffixIcon,
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: lineColor, width: 1.5),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: lineColor, width: 1.5),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary, width: 2),
            ),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.error, width: 1.5),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
          ),
        ),
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