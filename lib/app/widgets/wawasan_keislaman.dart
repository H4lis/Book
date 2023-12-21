import 'package:flutter/material.dart';

import '../shared/constant.dart';

class wawasanKeislamanM {
  final String butirSikap;
  final String nilaiKarakter;
  final String tidak;

  wawasanKeislamanM(
      {required this.butirSikap,
      required this.nilaiKarakter,
      required this.tidak});
}

List<wawasanKeislamanM> wawasanKeisaland = [
  wawasanKeislamanM(
      butirSikap: "Pernyataan", nilaiKarakter: "Ya", tidak: 'Tidak'),
  wawasanKeislamanM(
      butirSikap: "Klasik",
      nilaiKarakter: "650-1250 M",
      tidak:
          'Periode ini dibagi menjadi dua masa, yaitu: \n1) masa kemajuan Islam I (antara tahun 650-1000M);\n2) masa disintegrasi (antara tahun 1000-1250M).'),
  wawasanKeislamanM(
      butirSikap: "Pertengahan",
      nilaiKarakter: "1250-1500 M",
      tidak:
          'Periode ini dibagi menjadi dua, yaitu:\n1) Masa Kemunduran I (antara tahun 1250-1500M) dan \n2) Masa Tiga Kerajaan Besar (antara tahun 1500-1800M). Kerajaan besar tersebut adalah Usmani di Turki, Safawi, di Persia, dan Mughal di India.'),
  wawasanKeislamanM(
      butirSikap: "Modern",
      nilaiKarakter: "1800 M - sekarang",
      tidak: 'Periode ini adalah masa kebangkitan Islam'),
];

class wawasanKeislaman extends StatelessWidget {
  final List<dynamic> idlist;
  const wawasanKeislaman({required this.idlist, Key? key}) : super(key: key);

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
              color: index == 0
                  ? purpleBagroundDark
                  : index % 2 == 0
                      ? purpleBagroundLight
                      : purpleBaground,
            ),
            children: [
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    index == 0 ? "No" : "${index}",
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
                    style: index == 0 ? h2 : regular_paragraf,
                    textAlign:
                        index == 0 ? TextAlign.center : TextAlign.justify,
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "${idlist[index].nilaiKarakter}",
                    style: index == 0 ? h2 : regular_paragraf,
                    textAlign: index == 0 ? TextAlign.center : TextAlign.start,
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "${idlist[index].tidak}",
                    style: index == 0 ? h2 : regular_paragraf,
                    textAlign: index == 0 ? TextAlign.center : TextAlign.start,
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
