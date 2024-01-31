import 'package:checkout_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

AppBar customAppBar({ final String? title, void Function()? onTapBack}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    systemOverlayStyle: const SystemUiOverlayStyle(
     statusBarIconBrightness: Brightness.dark,
    ),
    centerTitle: true,
    leading: Center(
        child: GestureDetector(
          onTap: onTapBack ,
          child: SvgPicture.asset(
            'assets/images/backArrow.svg',
          ),
        )),
    title:  Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: Styles.textStyle25,
    ),
  );
}