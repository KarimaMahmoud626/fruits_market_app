import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custom_text_field.dart';

class CustomInfoItem extends StatelessWidget {
  const CustomInfoItem({
    super.key,
    required this.text,
    this.keyboardType,
    this.maxLines,
  });

  final String text;
  final TextInputType? keyboardType;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0C0B0B),
          ),
          textAlign: TextAlign.left,
        ),
        CustomTextField(keyboardType: keyboardType, maxLines: maxLines),
      ],
    );
  }
}
