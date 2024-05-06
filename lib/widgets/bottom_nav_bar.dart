import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildIcon(0, Icons.android_rounded),
        _buildIcon(1, Icons.home_outlined),
        _buildIcon(2, Icons.person_2_outlined),
      ],
    );
  }

  Widget _buildIcon(int index, IconData iconData) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(index),
        child: Icon(
          iconData,
          size: 30,
          color: index == currentIndex ? Colors.white : Colors.white70,
        ),
      ),
    );
  }
}
