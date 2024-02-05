import 'package:checkout_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  });

  final String text;
  final void Function() onPressed;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 73,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF34A853),
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: isLoading
              ? const CircularProgressIndicator()
              : Text(
                  text,
                  style: Styles.textStyle22,
                ),
        ));
  }
}
