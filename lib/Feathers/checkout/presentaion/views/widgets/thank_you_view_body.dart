import 'package:checkout_app/Feathers/checkout/presentaion/views/widgets/thank_you_card.dart';
import 'package:checkout_app/core/widgets/dashed_line.dart';
import 'package:flutter/material.dart';

import 'custom_check_icon.dart';
import 'custom_circle_avatar.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 62),
          child: ThankYouCard(),
        ),
        Positioned(
          left: 2,
          bottom: MediaQuery.of(context).size.height * 0.3,
          child: const CustomCircleAvatar(),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.3 + 18,
          left: 0,
          right: 0,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 45),
            child: DashedLine(),
          ),
        ),
        Positioned(
          right: 2,
          bottom: MediaQuery.of(context).size.height * 0.3,
          child: const CustomCircleAvatar(),
        ),
        const Positioned(
          left: 0,
          right: 0,
          top: 15,
          child: CustomCheckIcon(),
        )
      ],
    ));
  }
}
