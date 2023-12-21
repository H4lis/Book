import 'package:flutter/material.dart';

import '../shared/constant.dart';

class kondisiIslam {
  final String butirSikap;

  kondisiIslam({
    required this.butirSikap,
  });
}

List<kondisiIslam> kondisiIslamm = [
  kondisiIslam(
    butirSikap:
        "Pemurnian ajaran Islam dan unsur-unsur asing yang dipandang sebagai penyebab kemunduran Islam. ",
  ),
  kondisiIslam(
    butirSikap:
        "Menimba gagasan-gagasan pembaruan dan ilmu pengetahuan dari Barat. Hal ini dengan pengiriman para pelajar muslim oleh penguasa Turki, Mesir, dan India ke negara-negara Eropa untuk menimba ilmu pengetahuan dilanjutkan dengan gerakan penerjemahan karya-karya Barat ke dalam bahasa Arab.",
  ),
  kondisiIslam(
    butirSikap:
        "Kondisi negara-negara Arab, seperti Mesir, Turki di bawah jajahan negara-negara Eropa, khususnya Perancis.",
  ),
];

class Kondisiislamd extends StatelessWidget {
  final List<dynamic> idlist;
  const Kondisiislamd({required this.idlist, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: purpleBagroundDark,
      child: Table(
        border: TableBorder.all(color: purple),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: {
          0: const FractionColumnWidth(1 / 8),
          3: const FractionColumnWidth(1 / 2),
        },
        children: List.generate(
          idlist.length,
          (index) => TableRow(
            decoration: BoxDecoration(
              color: index % 2 == 0 ? purpleBagroundLight : purpleBaground,
            ),
            children: [
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "${index + 1}",
                    style: index == 0
                        ? h2.copyWith(
                            color: black,
                          )
                        : regular_paragraf,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "${idlist[index].butirSikap}",
                    style: regular_paragraf,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
