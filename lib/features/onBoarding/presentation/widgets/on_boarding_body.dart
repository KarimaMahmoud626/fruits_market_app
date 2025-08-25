import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: SizeConfig.defaultSize! * 10,
          right: 32,
          child: Text(
            'Skip',
            style: TextStyle(fontSize: 14, color: const Color(0xff898989)),
            textAlign: TextAlign.left,
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(),
        ),
      ],
    );
  }
}
