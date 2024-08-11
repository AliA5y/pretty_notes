import 'package:flutter/material.dart';
import 'package:pretty_notes/constants.dart';
import 'package:pretty_notes/models/note_model.dart';
import 'package:pretty_notes/views/widgets/color_item.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note, this.onSelect});
  final NoteModel note;
  final void Function(int)? onSelect;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex = colors.indexOf(Color(widget.note.color));
  }

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
                widget.onSelect!(index);
                setState(() {});
              },
              child: ColorItem(
                  color: colors[index], isSelected: currentIndex == index));
        },
      ),
    );
  }
}
