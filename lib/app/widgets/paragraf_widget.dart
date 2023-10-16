import 'package:flutter/material.dart';

import '../shared/constant.dart';

class ParagrafWidget extends StatelessWidget {
  final String content;

  ParagrafWidget({required this.content, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Text(
        "${content}",
        style: regular_paragraf,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
