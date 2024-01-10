import 'package:checkout_app/Feathers/checkout/presentaion/views/widgets/total_price.dart';
import 'package:checkout_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'order_info_item.dart';

class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Image.asset('assets/images/product.png'),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(title: 'Order Subtotal', value: '\$42.97'),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(title: 'Discount', value: '\$0'),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(title: 'Shipping', value: '\$8'),
          const SizedBox(
            height: 17,
          ),
          const Divider(
            endIndent: 15,
            indent: 15,
            thickness: 2,
          ),
          const SizedBox(
            height: 15,
          ),
          const TotalPrice(title: 'Total', value: '\$50.97'),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            onPressed: () {},
            text: 'Complete Payment ',
          )
        ],
      ),
    );
  }
}