import 'package:flutter/material.dart';

import '../../data/bab_1_model/mengidentifikasi_tajwid.dart';
import '../../data/penulisan_huruf.dart';
import '../../shared/constant.dart';

class PenulisanHuruf extends StatelessWidget {
  const PenulisanHuruf({
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
          4: FractionColumnWidth(1 / 3),
        },
        children: List.generate(
          penulisanHuruf.length,
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
                verticalAlignment: TableCellVerticalAlignment.middle,
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
                    "${penulisanHuruf[index].hurufArab}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${penulisanHuruf[index].nama}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${penulisanHuruf[index].hurufLatin}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${penulisanHuruf[index].nama2}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
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
