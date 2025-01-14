import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          20,
              (index) => Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFB7B7B7),
                    borderRadius: BorderRadius.circular(20)),
                height: 2,
              ),
            ),
          )),
    );
  }
}