import 'package:flutter/material.dart';

import '../shared/constant.dart';

class BorderBlack extends StatelessWidget {
  final String content;

  const BorderBlack({
  required this.content,Key? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: black, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "${content}",
        style: regular_paragraf,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
