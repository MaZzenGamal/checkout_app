import 'package:checkout_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/my_cart_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Center(
            child: SvgPicture.asset(
          'assets/images/backArrow.svg',
        )),
        title: const Text(
          'My Cart',
          textAlign: TextAlign.center,
          style: Styles.textStyle25,
        ),
      ),
      body: const MyCartBody(),
    );
  }
}
