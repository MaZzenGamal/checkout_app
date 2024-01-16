import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodeItem extends StatelessWidget {
  const PaymentMethodeItem({
    super.key,
    this.isActive = false,
    required this.image,
  });

  final bool isActive;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.all(2),
      duration: const Duration(milliseconds: 400),
      width: 100,
      height: 62,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: isActive
              ? Border.all(color: const Color(0xFF34A853))
              : Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
              color: isActive ? const Color(0xFF34A853) : Colors.white,
              blurRadius: 4,
              offset: const Offset(0, 0),
              spreadRadius: 0,
            )
          ]),
      child: Center(child: SvgPicture.asset(image)),
    );
  }
}
