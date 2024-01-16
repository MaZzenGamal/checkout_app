import 'package:checkout_app/Feathers/checkout/presentaion/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/payment_details_body.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar(title: 'Payment Details',/*onTapBack: Navigator.pop(context)*/ ),
      body: const PaymentDetailsBody(),
    );
  }
}
