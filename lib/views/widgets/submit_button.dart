import 'package:flutter/material.dart';
import 'package:pretty_notes/constants.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.label,
    this.onTap,
    this.isLoading = false,
  });
  final String label;
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        width: double.maxFinite,
        decoration: const BoxDecoration(
            color: kPremaryColor,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Center(
            child: isLoading
                ? const SizedBox(
                    width: 25,
                    height: 25,
                    child: CircularProgressIndicator(
                      color: Colors.black,
                    ),
                  )
                : Text(
                    label,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.w500),
                  )),
      ),
    );
  }
}
