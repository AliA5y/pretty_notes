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
          border: buildBoarder(context: context),
          enabledBorder: buildBoarder(context: context),
          focusedBorder: buildBoarder(color: kPremaryColor, context: context)),
    );
  }

  OutlineInputBorder buildBoarder(
      {Color? color, required BuildContext context}) {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(
          width: 2.0,
          color: color ?? Theme.of(context).highlightColor,
        ));
  }
}
