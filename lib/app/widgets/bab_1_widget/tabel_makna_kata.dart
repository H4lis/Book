import 'package:flutter/material.dart';

import '../../data/bab_1_model/makna_kata.dart';
import '../../shared/constant.dart';

class MaknaKataWidget extends StatelessWidget {
  const MaknaKataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: purpleBagroundDark,
      child: Table(
        border: TableBorder.all(color: purple),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: {
          // 0: FractionColumnWidth(1 / 8),
        },
        children: List.generate(
          maknaKata.length,
          (index) => TableRow(
            decoration: BoxDecoration(
              // color: index == 0 ? purpleBagroundDark : purpleBagroundLight,
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
                    "${maknaKata[index].kataKalimat}",
                    style: index == 0
                        ? h2.copyWith(
                            color: black,
                          )
                        : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${maknaKata[index].arti}",
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
