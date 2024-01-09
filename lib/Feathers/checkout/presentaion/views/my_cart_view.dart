import 'package:checkout_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.arrow_back
          ),
        ),
        title: const Text(
          'My Cart',
          textAlign: TextAlign.center,
          style: Styles.textStyle25,
        ),
      ),
      body: Container(),
    );
  }
}
