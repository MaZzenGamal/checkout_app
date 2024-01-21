import 'package:checkout_app/Feathers/checkout/presentaion/views/widgets/custom_app_bar.dart';
import 'package:checkout_app/Feathers/checkout/presentaion/views/widgets/thank_you_view_body.dart';
import 'package:flutter/material.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar(onTapBack: (){
        Navigator.of(context).pop();
      }),
      body: Transform.translate(
          offset: const Offset(0,-16),
          child: const ThankYouViewBody()),
    );
  }
}
