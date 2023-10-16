import 'package:book/app/shared/constant.dart';
import 'package:flutter/material.dart';


class ParagrafListCostum2 extends StatelessWidget {
  final String no;
  final String content;
  const ParagrafListCostum2({
    required this.no,
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
          child: Text(
            "${no})",
            style: regular_paragraf,
            textAlign: TextAlign.justify,
          ),
        ),
        Expanded(
          child: Text(
            "$content",
            textAlign: TextAlign.justify,
            style: regular_paragraf,
          ),
        )
      ],
    );
  }
}
