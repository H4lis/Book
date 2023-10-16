import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  CustomRadioButton({
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Radio<bool?>(
      value: isSelected,
      groupValue: true, // Gunakan groupValue dengan nilai yang sama untuk semua radio button dalam satu grup.
      onChanged: onChanged,
    );
  }
}