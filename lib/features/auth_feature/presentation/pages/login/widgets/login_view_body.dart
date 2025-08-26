import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(20),
        Center(
          child: SizedBox(
            height: SizeConfig.defaultSize! * 25,
            width: SizeConfig.defaultSize! * 25,
            child: Image.asset(kLogoImage),
          ),
        ),
        Text(
          'Fruit Market',
          style: TextStyle(
            fontSize: 42,
            color: kMainColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
