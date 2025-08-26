import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/features/onBoarding/presentation/widgets/custom_page_view.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(),
        Positioned(
          bottom: SizeConfig.defaultSize! * 23,
          left: 0,
          right: 0,
          child: DotsIndicator(
            dotsCount: 3,
            decorator: DotsDecorator(
              color: Colors.transparent,
              activeColor: kMainColor,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: kMainColor),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        Positioned(
          top: SizeConfig.defaultSize! * 10,
          right: 32,
          child: Text(
            'Skip',
            style: TextStyle(
              fontSize: 14,
              color: const Color(0xff898989),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(text: 'Next'),
        ),
      ],
    );
  }
}
