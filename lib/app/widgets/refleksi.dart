import 'package:book/app/widgets/paragraf_widget.dart';
import 'package:flutter/material.dart';

import '../shared/constant.dart';


class Refleksi extends StatelessWidget {
  final String content;
  Refleksi({
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: bagroundDarkOrange,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ParagrafWidget(content: "$content"));
  }
}
