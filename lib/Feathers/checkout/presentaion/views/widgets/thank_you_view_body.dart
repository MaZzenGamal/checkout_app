import 'package:checkout_app/core/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 62),
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        Positioned(
          left: 2,
          bottom: MediaQuery.of(context).size.height * 0.3,
          child: const CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
          ),
        ),
         Positioned(
           bottom: MediaQuery.of(context).size.height * 0.323,
           left: 0,
           right: 0,
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 45),
             child: Row(
              children:
                List.generate(20, (index) => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFB7B7B7),
                        borderRadius: BorderRadius.circular(20)
                      ),

                      height: 2,
                    ),
                  ),
                ))
              ,
                     ),
           ),
         ),
        Positioned(
          right: 2,
          bottom: MediaQuery.of(context).size.height * 0.3,
          child: const CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 15,
          child:  CircleAvatar(
            radius: 50,
            backgroundColor: const Color(0xFFD9D9D9),
            child:CircleAvatar(
              radius: 40,
              backgroundColor: Colors.green,
              child: SvgPicture.asset(done),
            ) ,
          ),
        )
      ],
    ));
  }
}
