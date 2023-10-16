import 'package:flutter/material.dart';

import '../shared/constant.dart';

class ParagrafListAbjad extends StatelessWidget {
  final List<dynamic> idlist;

  const ParagrafListAbjad({required this.idlist, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Column(
      children: List.generate(idlist.length, (index) {
        var charCode = 'a'.codeUnitAt(0) + index;
        var abjad = String.fromCharCode(charCode);
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
              child: Text(
                "${abjad})",
                style: regular_paragraf,
                textAlign: TextAlign.justify,
              ),
            ),
            Expanded(
              child: Text(
                "${idlist[index].textContent}",
                textAlign: TextAlign.justify,
                style: regular_paragraf,
              ),
            )
          ],
        );
      }),
    );
  }
}
