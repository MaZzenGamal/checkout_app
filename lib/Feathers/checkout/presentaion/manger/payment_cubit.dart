import 'package:checkout_app/Feathers/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_app/Feathers/checkout/data/repos/checkout_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitialState());
  final CheckoutRepo checkoutRepo;

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoadingState());
    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);

    data.fold(
      (l) => emit(PaymentFailureState(l.errMessage)),
      (r) => emit(PaymentSuccessState()),
    );
  }
}
