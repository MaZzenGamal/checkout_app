import 'package:checkout_app/Feathers/checkout/presentaion/views/widgets/total_price.dart';
import 'package:checkout_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../thank_you_view.dart';
import 'order_info_item.dart';
import 'payment_methode_list_view.dart';

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
          Expanded(child: Image.asset('assets/images/product.png')),
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
            onPressed: () {
              showModalBottomSheet(context: context, builder: (context){
                return const PaymentMethodBottomSheet();
              });
            },
            text: 'Complete Payment ',
          ),
          const SizedBox(
            height: 21,
          )
        ],
      ),
    );
  }
}


class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const PaymentMethodsListView(),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
              text: 'Continue',
              onPressed: () {
                // if (formKey.currentState!.validate()) {
                //   formKey.currentState!.save();
                //   Navigator.of(context).push(
                //     MaterialPageRoute(
                //       builder: (context) => const ThankYouView(),
                //     ),
                //   );
                // } else {
                //   autoValidateMode = AutovalidateMode.always;
                //   setState(() {});
                // }
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ThankYouView(),
                    ));
              }),
        ],
      ),
    );
  }
}
