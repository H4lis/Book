import 'package:book/app/data/bab_4_model/tabel_persamaan_d.dart';
import 'package:book/app/shared/constant.dart';
import 'package:flutter/material.dart';

import '../data/bab_6_model/list_paragraf_6.dart';

class terjemahanPerkataWidget2 extends StatelessWidget {
  const terjemahanPerkataWidget2({
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
          0: FractionColumnWidth(1 / 9),
          3: FractionColumnWidth(1 / 9),
        },
        children: List.generate(
          terjemahanPerkata2.length,
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
                    index == 0 ? "No" : "${terjemahanPerkata2[index].no}",
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
                    "${terjemahanPerkata2[index].Lafadz}",
                    style: index == 0
                        ? h2
                        : regulerQuran.copyWith(fontSize: 16, height: 3),
                    textAlign: index == 0 ? TextAlign.center : TextAlign.right,
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${terjemahanPerkata2[index].Arti}",
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
                    index == 0 ? "No" : "${terjemahanPerkata2[index].no2}",
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
                    "${terjemahanPerkata2[index].Lafadz2}",
                    style: index == 0
                        ? h2
                        : regulerQuran.copyWith(fontSize: 16, height: 3),
                    textAlign: index == 0 ? TextAlign.center : TextAlign.right,
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${terjemahanPerkata2[index].Arti2}",
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
