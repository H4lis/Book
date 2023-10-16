import 'package:flutter/material.dart';

import '../shared/constant.dart';

class AktivitasWidget extends StatelessWidget {
  final String activityTitle;
  final String contentText;

  const AktivitasWidget({
    required this.activityTitle,
    required this.contentText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: bagroundGreen,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            padding: const EdgeInsets.all(10),
            child: Text(
              activityTitle, // Use the activityTitle parameter here
              style: regular_paragraf.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: bagroundGreenLight,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
            padding: const EdgeInsets.all(10),
            child: Text(
              "Aktivitas Peserta Didik:\n${contentText}", // Use the contentText parameter here
              style: regular_paragraf,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
