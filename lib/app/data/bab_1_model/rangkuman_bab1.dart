import 'package:book/app/data/bab_1_model/list_rangkuman_satu.dart';
import 'package:book/app/shared/constant.dart';
import 'package:book/app/widgets/heading_1.dart';
import 'package:book/app/widgets/list_paragraf.dart';
import 'package:book/app/widgets/paragraf_list_abjad.dart';
import 'package:flutter/material.dart';

import 'list_rangkuman_dua.dart';

class RangkumanBab1 extends StatelessWidget {
  const RangkumanBab1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Heading1(numbering: "I", title: "Rangkuman"),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: purpleBagroundLight,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                        child: Text(
                          "1",
                          style: regular_paragraf,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Isi kandungan Q.S. Ali ‘Imrān/3: 190-191 dan hadis terkait, di antaranya:",
                          textAlign: TextAlign.justify,
                          style: regular_paragraf,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ParagrafListAbjad(idlist: rangkumanSatu),
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                        child: Text(
                          "2",
                          style: regular_paragraf,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "Isi kandungan Q.S. Ali ‘Imrān/3: 190-191 dan hadis terkait, di antaranya:",
                          textAlign: TextAlign.justify,
                          style: regular_paragraf,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ParagrafListAbjad(idlist: rangkumanDua),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
