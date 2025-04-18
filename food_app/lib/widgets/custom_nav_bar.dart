import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      color: Colors.red,
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Left side icons
            Row(
              children: [
                _buildNavItem('assets/icons/home.png', 0),
                _buildNavItem('assets/icons/user.png', 1),
              ],
            ),
            // Right side icons
            Row(
              children: [
                _buildNavItem(
                  'assets/icons/comment.png',
                  2,
                ),
                _buildNavItem('assets/icons/heart.png', 3),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String iconPath, int index) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Image.asset(
          iconPath,
          width: 26,
          height: 26,
          color:
              currentIndex == index
                  ? Colors.white
                  : Colors.black,
        ),
      ),
    );
  }
}
