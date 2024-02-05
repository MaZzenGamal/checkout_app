import 'package:checkout_app/Feathers/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_app/Feathers/checkout/presentaion/manger/payment_cubit.dart';
import 'package:checkout_app/Feathers/checkout/presentaion/views/thank_you_view.dart';
import 'package:checkout_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              PaymentIntentInputModel paymentIntentInputModel =
                  PaymentIntentInputModel(
                amount: '100',
                currency: 'USD',
                customerId: 'cus_PVRgDp4Fejmp9J',
              );
              BlocProvider.of<PaymentCubit>(context).makePayment(
                  paymentIntentInputModel: paymentIntentInputModel);
            });
      },
    );
  }
}
