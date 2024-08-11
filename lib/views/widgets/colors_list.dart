import 'package:flutter/material.dart';
import 'package:pretty_notes/constants.dart';

class ColorsList extends StatefulWidget {
  const ColorsList({
    super.key,
  });

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: colors.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
                color: colors[index], isSelected: currentIndex == index));
      },
    );
  }
}

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
