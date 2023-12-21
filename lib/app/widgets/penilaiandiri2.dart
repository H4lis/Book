import 'package:flutter/material.dart';

import '../shared/constant.dart';

class PenilaianDiri2m {
  final String butirSikap;
  final String nilaiKarakter;
  final String tidak;

  PenilaianDiri2m(
      {required this.butirSikap,
      required this.nilaiKarakter,
      required this.tidak});
}

List<PenilaianDiri2m> tabelPenilaiandiri8 = [
  PenilaianDiri2m(
      butirSikap: "Pernyataan", nilaiKarakter: "Ya", tidak: 'Tidak'),
  PenilaianDiri2m(
      butirSikap: "Saya berdoa terlebih dahulu sebelum mengikuti pelajaran",
      nilaiKarakter: "",
      tidak: ''),
  PenilaianDiri2m(
      butirSikap: "Saya tidak menyebar hoaks di medsos sesuai perintah Allah",
      nilaiKarakter: "",
      tidak: ''),
  PenilaianDiri2m(
      butirSikap: "Saya tidak memposting ujaran kebencian di media sosial",
      nilaiKarakter: "",
      tidak: ''),
  PenilaianDiri2m(
      butirSikap: "Saya menepati janji dengan orang lain",
      nilaiKarakter: "",
      tidak: ''),
  PenilaianDiri2m(
      butirSikap:
          "Saya mampu bekerjasama dengan teman sekelas ketika diskusi di medsos berlangsung",
      nilaiKarakter: "",
      tidak: ''),
  PenilaianDiri2m(
      butirSikap:
          "Saya mengajukan pertanyaan terhadap persoalan yang memerlukan jawaban kepada guru tentang adab bermedos",
      nilaiKarakter: "",
      tidak: ''),
  PenilaianDiri2m(
      butirSikap:
          "Saya menjaga kerukunan dalam kehidupan bermasyarakat baik di dunia nyata maupun maya",
      nilaiKarakter: "",
      tidak: ''),
  PenilaianDiri2m(
      butirSikap:
          "Saya mempelajari materi adab bermedsos tanpa harus disuruh terlebih dahulu",
      nilaiKarakter: "",
      tidak: ''),
  PenilaianDiri2m(
      butirSikap:
          "Saya mempelajari materi adab bermedsos tanpa harus disuruh terlebih dahulu",
      nilaiKarakter: "",
      tidak: ''),
  PenilaianDiri2m(
      butirSikap:
          "Saya aktif menjalin relasi yang baik dengan orang lain di kehidupan sosial dan media sosial",
      nilaiKarakter: "",
      tidak: ''),
];

class PenilaianDiri2 extends StatelessWidget {
  final List<dynamic> idlist;
  const PenilaianDiri2({required this.idlist, Key? key}) : super(key: key);

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
          1: const FractionColumnWidth(1 / 2),
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
