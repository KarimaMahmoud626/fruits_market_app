import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custom_text_field.dart';

class CompeleteInformationViewBody extends StatelessWidget {
  const CompeleteInformationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('data'),
        CustomTextField(),
        Text('data'),
        CustomTextField(),
        Text('data'),
        CustomTextField(),
      ],
    );
  }
}
