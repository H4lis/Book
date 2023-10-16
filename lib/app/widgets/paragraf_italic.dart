import 'package:flutter/material.dart';

import '../shared/constant.dart';

class ParagrafItalic extends StatelessWidget {
  final String content;

  ParagrafItalic({required this.content, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Text(
        "${content}",
        style: regular_paragraf.copyWith(fontStyle: FontStyle.italic),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
