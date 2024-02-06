import 'dart:developer';

import 'package:checkout_app/Feathers/checkout/data/models/amount_model/Amount_model.dart';
import 'package:checkout_app/Feathers/checkout/data/models/amount_model/Details.dart';
import 'package:checkout_app/Feathers/checkout/data/models/item_list_model/Item_list_model.dart';
import 'package:checkout_app/Feathers/checkout/data/models/item_list_model/Items.dart';
import 'package:checkout_app/Feathers/checkout/presentaion/manger/payment_cubit.dart';
import 'package:checkout_app/Feathers/checkout/presentaion/views/thank_you_view.dart';
import 'package:checkout_app/core/utils/api_keys.dart';
import 'package:checkout_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccessState) {
          Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) {
            return const ThankYouView();
          }));
        }
        if (state is PaymentFailureState) {
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(content: Text(state.error));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          print(state.error);
        }
      },
      builder: (context, state) {
        return CustomButton(
            isLoading: state is PaymentLoadingState ? true : false,
            text: 'Continue',
            onPressed: () {
              // PaymentIntentInputModel paymentIntentInputModel =
              //     PaymentIntentInputModel(
              //   amount: '100',
              //   currency: 'USD',
              //   customerId: 'cus_PVRgDp4Fejmp9J',
              // );
              // BlocProvider.of<PaymentCubit>(context).makePayment(
              //     paymentIntentInputModel: paymentIntentInputModel);
              var transactionsData = getTransactionsData();
              executePaypalPayment(context, transactionsData);
            });
      },
    );
  }

  void executePaypalPayment(BuildContext context, ({AmountModel amount, ItemListModel itemList}) transactionsData) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: ApiKeys.clientId,
        secretKey: ApiKeys.paypalSecretKey,
        transactions: [
          {
            "amount": transactionsData.amount.toJson(),
            "description": "The payment transaction description.",
            "item_list": transactionsData.itemList.toJson()
          }
        ],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          log("onSuccess: $params");
          Navigator.pop(context);
        },
        onError: (error) {
          log("onError: $error");
          Navigator.pop(context);
        },
        onCancel: () {
          print('cancelled:');
          Navigator.pop(context);
        },
      ),
    ));
  }

  ({AmountModel amount, ItemListModel itemList}) getTransactionsData() {
    var amount = AmountModel(
        total: '100',
        currency: 'USD',
        details: Details(
          shipping: '0',
          shippingDiscount: 0,
          subtotal: '100',
        ));

    List<OrderItemModel> orders = [
      OrderItemModel(
        name: 'Apple',
        quantity: 4,
        price: '10',
        currency: 'USD',
      ),
      OrderItemModel(
        name: 'Pineapple',
        quantity: 5,
        price: '12',
        currency: 'USD',
      ),
    ];
    var itemList = ItemListModel(orders: orders);
    return (amount: amount, itemList: itemList);
  }
}
