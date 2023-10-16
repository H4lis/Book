import 'package:flutter/material.dart';

import '../shared/constant.dart';

class PerListParagraf extends StatelessWidget {
  final int number;
  final String content;
  PerListParagraf({required this.number, required this.content});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
          child: Text(
            "$number",
            style: regular_paragraf,
            textAlign: TextAlign.justify,
          ),
        ),
        Expanded(
          child: Text(
            "${content}",
            textAlign: TextAlign.justify,
            style: regular_paragraf,
          ),
        )
      ],
    );
  }
}
