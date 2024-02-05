import 'package:flutter/material.dart';

import 'custom_button_bloc_consumer.dart';
import 'payment_methode_list_view.dart';

class PaymentMethodBottomSheet extends StatelessWidget {
  const PaymentMethodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodsListView(),
          SizedBox(
            height: 32,
          ),
          CustomButtonBlocConsumer(),
        ],
      ),
    );
  }
}


