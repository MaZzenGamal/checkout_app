import 'package:checkout_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: 305,
        height: 73,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Row(
            children: [
              SvgPicture.asset('assets/images/creditLogo.svg'),
              const SizedBox(
                width: 23,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Credit Card\n',
                      style: Styles.textStyle18,
                    ),
                    TextSpan(
                      text: 'Mastercard **78 ',
                      style: Styles.textStyle16,)
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}