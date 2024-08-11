import 'package:flutter/material.dart';

class ColorsList extends StatelessWidget {
  const ColorsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const ColorItem();
      },
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 38,
      backgroundColor: Colors.amber,
    );
  }
}
