import 'package:flutter/material.dart';
import 'package:pretty_notes/constants.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.label,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        width: double.maxFinite,
        decoration: const BoxDecoration(
            color: kPremaryColor,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Center(
            child: Text(
          label,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
