import 'package:flutter/material.dart';

import '../shared/constant.dart';

class Jawablah extends StatelessWidget {
  const Jawablah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18),
      child: Text(
        "Jawablah pertanyaan berikut dengan singkat dan benar!",
        style: regular_paragraf.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
