import 'package:flutter/material.dart';

import '../shared/constant.dart';

class Heading1 extends StatelessWidget {
  final String numbering;
  final String title;

  const Heading1({
    required this.numbering,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 4),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 26,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: green),
                padding: const EdgeInsets.all(2),
                child: Text(
                  "   ${title}  ",
                  style: h1.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: greenLight,
              border: Border.all(width: 2, color: green),
            ),
            padding: const EdgeInsets.all(12),
            child: Text(
              "$numbering",
              style: h1.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
