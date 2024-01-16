import 'package:checkout_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'custom_credit_card.dart';
import 'payment_methode_list_view.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethodsListView(),
        ),
        const SliverToBoxAdapter(
          child: CustomCreditCard(),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 43,right: 20,left: 20),
              child: CustomButton(text: 'Pay', onPressed: () {}),
            ),
          ),
        ),
      ],
    );
  }
}
