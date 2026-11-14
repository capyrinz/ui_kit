import 'package:material_ui/material_ui.dart';

/// Класс содержит цветовую палитру приложения согласно макету Figma.
/// 
/// Дата создания: 14-11-2026
/// Автор создания: [Твой номер]

class AppColors {
  AppColors._(); 
  static const Color accent = Color(0xFF2074F2);        // Синий (из типографики)
  static const Color accentInactive = Color(0xFFC5D2FF); // Светло-синий
  static const Color black = Color(0xFF2D2C2C);
  static const Color white = Color(0xFFF7F7F7);
  static const Color error = Color(0xFFFF4646);         // Красный
  static const Color success = Color(0xFF00B412);       // Зеленый

  // Цвета для инпутов и текста
  static const Color inputBg = Color(0xFFF7F7FA);
  static const Color inputLine = Color(0xFFE6E6E6);
  static const Color inputIcon = Color(0xFFBFC7D1);
  static const Color placeholder = Color(0xFF98989A);
  static const Color description = Color(0xFF8787A1);
  static const Color cardLine = Color(0xFFF2F2F2);

  static const Color primary = Color(0xFFF22E63); 
}