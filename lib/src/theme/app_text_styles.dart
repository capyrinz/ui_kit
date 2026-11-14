import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Класс содержит стили текста (типографику) согласно макету.
/// 
/// Дата создания: 14-11-2026
/// Автор создания: [Твой номер]
class AppTextStyles {
  AppTextStyles._();

  // Подключаем наш новый шрифт
  static const String fontFamily = 'PublicSans'; 

  // Title 1
  static const TextStyle title1Semibold = TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: AppColors.black, fontFamily: fontFamily);
  static const TextStyle title1ExtraBold = TextStyle(fontSize: 32, fontWeight: FontWeight.w800, color: AppColors.black, fontFamily: fontFamily);

  // Title 2
  static const TextStyle title2Regular = TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: AppColors.black, fontFamily: fontFamily);
  static const TextStyle title2Semibold = TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.black, fontFamily: fontFamily);

  // Title 3
  static const TextStyle title3Regular = TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.black, fontFamily: fontFamily);
  static const TextStyle title3Medium = TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.black, fontFamily: fontFamily);
  static const TextStyle title3Semibold = TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.black, fontFamily: fontFamily);

  // Headline
  static const TextStyle headlineRegular = TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.black, fontFamily: fontFamily);
  static const TextStyle headlineMedium = TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.black, fontFamily: fontFamily);

  // Text
  static const TextStyle textRegular = TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black, fontFamily: fontFamily);
  static const TextStyle textMedium = TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.black, fontFamily: fontFamily);

  // Caption (Тот самый из твоего скриншота)
  static const TextStyle captionRegular = TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.black, fontFamily: fontFamily);
  static const TextStyle captionSemibold = TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.black, fontFamily: fontFamily);

  // Caption 2
  static const TextStyle caption2Regular = TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.description, fontFamily: fontFamily);
  static const TextStyle caption2Bold = TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColors.description, fontFamily: fontFamily);
}