import 'package:flutter/material.dart';
import 'package:pretty_notes/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
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
