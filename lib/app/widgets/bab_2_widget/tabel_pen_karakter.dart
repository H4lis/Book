import 'package:flutter/material.dart';
import '../../data/tabel_penerapan_karakter.dart';
import '../../shared/constant.dart';

class TabelPenKarakter2 extends StatelessWidget {
  const TabelPenKarakter2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: purpleBagroundDark,
      child: Table(
        border: TableBorder.all(color: purple),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: {
          0: FractionColumnWidth(1 / 8),
          2: FractionColumnWidth(1 / 2.8),
          4: FractionColumnWidth(1 / 3),
        },
        children: List.generate(
          tabelPenerapanKarakter.length,
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
                  padding: EdgeInsets.all(8),
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
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${tabelPenerapanKarakter[index].butirSikap}",
                    style: index == 0 ? h2 : regular_paragraf,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${tabelPenerapanKarakter[index].nilaiKarakter}",
                    style: index == 0 ? h2 : regular_paragraf,
                    textAlign: TextAlign.start,
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
