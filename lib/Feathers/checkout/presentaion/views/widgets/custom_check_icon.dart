import 'package:checkout_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: const Color(0xFFD9D9D9),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.green,
        child: SvgPicture.asset(done),
      ),
    );
  }
}