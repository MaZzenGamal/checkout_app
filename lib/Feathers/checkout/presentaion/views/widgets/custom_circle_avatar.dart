import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 18,
      backgroundColor: Colors.white,
    );
  }
}