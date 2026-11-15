import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

/// Кастомный компонент выпадающего списка (Select) с вызовом BottomSheet.
/// 
/// Дата создания: 15-11-2026
/// Автор создания: [Твой номер]
class AppSelect extends StatelessWidget {
  final String hintText;
  final String? selectedValue;
  final List<String> items;
  final ValueChanged<String> onSelected;

  const AppSelect({
    super.key,
    required this.hintText,
    this.selectedValue,
    required this.items,
    required this.onSelected,
  });

  /// Метод для открытия BottomSheet
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Полоска-индикатор сверху (drag handle)
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: AppColors.inputLine,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                const SizedBox(height: 16),
                Text(hintText, style: AppTextStyles.title3Semibold),
                const SizedBox(height: 16),
                const Divider(color: AppColors.cardLine),
                // Список элементов
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return ListTile(
                        title: Text(item, style: AppTextStyles.textRegular),
                        trailing: selectedValue == item
                            ? const Icon(Icons.check, color: AppColors.primary)
                            : null,
                        onTap: () {
                          onSelected(item);
                          Navigator.pop(context); // Закрываем BottomSheet
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showBottomSheet(context),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.inputLine, width: 1.5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedValue ?? hintText,
              style: AppTextStyles.textRegular.copyWith(
                color: selectedValue == null ? AppColors.placeholder : AppColors.black,
              ),
            ),
            const Icon(Icons.keyboard_arrow_down, color: AppColors.primary),
          ],
        ),
      ),
    );
  }
}