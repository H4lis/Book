import 'package:flutter/material.dart';

import '../shared/constant.dart';

class Heading2Orange extends StatelessWidget {
  final String title;

  const Heading2Orange({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Text(
        "$title",
        style: h1.copyWith(color: orange),
      ),
    );
  }
}
