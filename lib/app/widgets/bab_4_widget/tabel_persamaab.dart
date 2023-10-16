import 'package:flutter/material.dart';

import '../../data/bab_4..model/tabel_persamaan_d.dart';
import '../../shared/constant.dart';

class TabelPersamaan extends StatelessWidget {
  const TabelPersamaan({
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
        },
        children: List.generate(
          tabelPersamaanD.length,
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
                    "${tabelPersamaanD[index].persamaan}",
                    style: index == 0 ? h2 : regular_paragraf,
                    textAlign: index == 0 ? TextAlign.center : TextAlign.start,
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${tabelPersamaanD[index].perbedaan}",
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
