import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isSelected,
    required this.color,
  });
  final bool isSelected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: CircleAvatar(
        radius: 38,
        backgroundColor: isSelected ? Theme.of(context).highlightColor : color,
        child: CircleAvatar(
          radius: 32,
          backgroundColor: color,
        ),
      ),
    );
  }
}
