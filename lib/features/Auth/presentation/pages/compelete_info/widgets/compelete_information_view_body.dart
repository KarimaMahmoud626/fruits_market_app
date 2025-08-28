import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/core/widgets/space_widget.dart';
import 'package:fruits_market/features/Auth/presentation/pages/compelete_info/widgets/compelete_info_item.dart';

class CompeleteInformationViewBody extends StatelessWidget {
  const CompeleteInformationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          VerticalSpace(10),
          CompeleteInfoItem(text: 'Enter Your Name'),
          VerticalSpace(2),
          CompeleteInfoItem(text: 'Enter Your Phone Number'),
          VerticalSpace(2),
          CompeleteInfoItem(text: 'Enter Your Address', maxLines: 5),
          VerticalSpace(5),
          CustomGeneralButton(text: 'Login'),
        ],
      ),
    );
  }
}
