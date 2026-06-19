import 'package:flutter/material.dart';
import 'package:vaccine_card_app/presentation/common/widgets/helpers.dart';
import 'package:vaccine_card_app/presentation/common/widgets/my_label.dart';

class MyLabelRow extends StatelessWidget {
  const MyLabelRow({
    required this.label,
    required this.value,
    this.secondary = false,
    this.textAlign,
    super.key,
  });
  final String label;
  final String value;
  final bool secondary;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        MyLabel(
          label,
          color: secondary ? Colors.grey : null,
          size: secondary ? 12 : null,
          textAlign: textAlign,
        ),
        Text(value, textAlign: textAlign),
        sep,
      ],
    );
  }
}
