import 'package:flutter/material.dart';

import '../shared/constant.dart';

class QuranWidget extends StatelessWidget {
  final String arab;
  const QuranWidget({
    required this.arab,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$arab",
      style: regulerQuran.copyWith(fontSize: 16, height: 3),
      textAlign: TextAlign.right,
    );
  }
}
