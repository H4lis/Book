import 'package:flutter/material.dart';

import '../shared/constant.dart';

class Heading4 extends StatelessWidget {
  final String title;

  Heading4({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text(
        "$title",
        style: regular_paragraf,
      ),
    );
  }
}
