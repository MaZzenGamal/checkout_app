import 'package:checkout_app/Feathers/checkout/presentaion/views/widgets/thank_you_card.dart';
import 'package:checkout_app/core/widgets/dashed_line.dart';
import 'package:flutter/material.dart';

import 'custom_check_icon.dart';
import 'custom_circle_avatar.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
          children: [
    const Padding(
      padding: EdgeInsets.only(right: 20,left: 20,bottom: 48,top: 24),
      child: ThankYouCard(),
    ),
    Positioned(
      left: 2,
      bottom: MediaQuery.of(context).size.height * 0.26,
      child: const CustomCircleAvatar(),
    ),
    Positioned(
      bottom: MediaQuery.of(context).size.height * 0.26 + 18,
      left: 0,
      right: 0,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 45),
        child: DashedLine(),
      ),
    ),
    Positioned(
      right: 2,
      bottom: MediaQuery.of(context).size.height * 0.26,
      child: const CustomCircleAvatar(),
    ),
    const Positioned(
      left: 0,
      right: 0,
      top: -25,
      child: CustomCheckIcon(),
    )
          ],
        );
  }
}
