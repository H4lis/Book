import 'package:flutter/material.dart';

import '../shared/constant.dart';

class Terjemahan extends StatelessWidget {
  final String content;
  final String riwayat;
  const Terjemahan({
    required this.content,
    required this.riwayat,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: RichText(
        text: TextSpan(
          style: DefaultTextStyle.of(context).style,
          children: <TextSpan>[
            TextSpan(text: 'Artinya: ', style: regular_paragraf),
            TextSpan(
              text: '${content}',
              style: regular_paragraf.copyWith(fontStyle: FontStyle.italic),
            ),
            TextSpan(text: ' ${riwayat}', style: regular_paragraf),
          ],
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
