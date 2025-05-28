// custom_bottom_navigation_bar.dart

import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 7, bottom: 34),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.black.withOpacity(0.3),
            width: 0.3,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem('Trang chủ', Icons.home, 0),
          _buildNavItem('Luyện tập', Icons.fitness_center, 1),
          _buildNavItem('Xếp hạng', Icons.leaderboard, 2),
          _buildNavItem('Tài khoản', Icons.person, 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(String label, IconData icon, int index) {
    final isSelected = index == selectedIndex;

    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 24,
            color: isSelected ? const Color(0xFF5875B8) : const Color(0xFF999999),
          ),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? const Color(0xFF5875B8) : const Color(0xFF999999),
              fontSize: 10,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
