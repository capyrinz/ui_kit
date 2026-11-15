import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class AppBottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const AppBottomBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        children: [
          // Разделяем на 5 равных частей для идеальной центровки
          Expanded(child: _buildIcon(Icons.bar_chart, 'Statistics', 0)),
          Expanded(child: _buildIcon(Icons.location_on_outlined, 'Discover', 1)),
          
          // Центральная кнопка
          Expanded(
            child: GestureDetector(
              onTap: () => onTap(2),
              child: Center(
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.white, width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withValues(alpha: 0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Icon(Icons.calendar_today, color: AppColors.white, size: 28),
                ),
              ),
            ),
          ),

          Expanded(child: _buildIcon(Icons.chat_bubble_outline, 'Chat', 3)),
          Expanded(child: _buildIcon(Icons.person_outline, 'Profile', 4)),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, String label, int index) {
    final isSelected = currentIndex == index;
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: isSelected ? AppColors.white : AppColors.white.withValues(alpha: 0.5)),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? AppColors.white : AppColors.white.withValues(alpha: 0.5),
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}