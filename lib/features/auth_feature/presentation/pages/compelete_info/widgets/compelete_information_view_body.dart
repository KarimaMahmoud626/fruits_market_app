import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/core/widgets/custom_text_field.dart';

class CompeleteInformationViewBody extends StatelessWidget {
  const CompeleteInformationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter your name',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          CustomTextField(),
          Text(
            'Enter your phone number',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          CustomTextField(),
          Text(
            'Enter your address',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          CustomTextField(),
          CustomGeneralButton(text: 'Login'),
        ],
      ),
    );
  }
}
