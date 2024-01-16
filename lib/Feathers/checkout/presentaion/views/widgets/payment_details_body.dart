import 'package:checkout_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'custom_credit_card.dart';
import 'payment_methode_list_view.dart';
import 'thank_you_view.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: PaymentMethodsListView(),
          ),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autoValidateMode: autoValidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 43, right: 20, left: 20),
              child: CustomButton(
                  text: 'Pay',
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
            ),
          ),
        ),
      ],
    );
  }
}
