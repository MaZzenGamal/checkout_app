import 'package:checkout_app/Feathers/checkout/presentaion/views/widgets/total_price.dart';
import 'package:checkout_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'card_info_widget.dart';
import 'payment_info_item.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, right: 22, left: 22),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              style: Styles.textStyle25,
            ),
            const SizedBox(height: 2),
            Text(
              'Your transaction was successful',
              style: Styles.textStyle20,
            ),
            const SizedBox(height: 42),
            const PaymentItemInfo(title: 'Date', value: '01/24/2023'),
            const SizedBox(height: 20),
            const PaymentItemInfo(title: 'Time', value: '10:15 AM'),
            const SizedBox(height: 20),
            const PaymentItemInfo(title: 'To', value: 'Sam Louis'),
            const SizedBox(height: 30),
            const Divider(thickness: 2),
            const SizedBox(height: 16),
            const TotalPrice(title: 'Total', value: '\$50.97'),
            const CardInfoWidget(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/images/code.svg'),
                Container(
                  height: 58,
                  width: 113,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xFF34A853), width: 1.50),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    'PAID',
                    style: Styles.textStyle24
                        .copyWith(color: const Color(0xFF34A853)),
                  )),
                )
              ],
            ),
            const SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
}
