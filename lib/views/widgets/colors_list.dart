import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_notes/constants.dart';
import 'package:pretty_notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:pretty_notes/views/widgets/color_item.dart';

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
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).noteColor =
                    colors[index];
                setState(() {});
              },
              child: ColorItem(
                  color: colors[index], isSelected: currentIndex == index));
        },
      ),
    );
  }
}
