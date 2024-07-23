import 'package:flutter/material.dart';
import 'package:pretty_notes/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.maxLength,
    required this.hint,
    this.initialText,
    this.onSaved,
    this.onChanged,
  });
  final int? maxLength;
  final String hint;
  final String? initialText;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'This field is required';
        } else {
          return null;
        }
      },
      initialValue: initialText,
      maxLines: maxLength ?? 1,
      decoration: InputDecoration(
          hintText: hint,
          border: buildBoarder(),
          enabledBorder: buildBoarder(),
          focusedBorder: buildBoarder(kPremaryColor)),
    );
  }

  OutlineInputBorder buildBoarder([Color? color]) {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
