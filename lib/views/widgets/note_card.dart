import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
          decoration: const BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: const Text(
                  'Note Title',
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: const Text(
                  'Note Text kjklfg lkdjfg lkdjfglkjsd glkdjglk dglksdjgklds gldskjg sdglkjdsklg dslkjglksd glkdsjglk sdglksdjg ',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white38),
                ),
                trailing: IconButton(
                    padding: const EdgeInsets.all(8),
                    onPressed: () {},
                    icon: const Icon(Icons.delete)),
              ),
              const SizedBox(height: 10),
              const Text(
                'May, 22, 2024',
                style: TextStyle(color: Colors.white38),
              ),
            ],
          )),
    );
  }
}
