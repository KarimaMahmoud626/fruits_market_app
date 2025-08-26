import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key, @required this.position});

  final double? position;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      position: position!,
      dotsCount: 3,
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: kMainColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: kMainColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
