import 'package:flutter/material.dart';

import '../shared/constant.dart';


class Pembatas extends StatelessWidget {
  const Pembatas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.only(left: 70, right: 70, top: 20, bottom: 1),
      height: 2,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: purpleBagroundLight),
    );
  }
}
