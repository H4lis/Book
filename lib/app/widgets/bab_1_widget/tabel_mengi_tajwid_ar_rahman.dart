import 'package:flutter/material.dart';

import '../../data/bab_1_model/mengidentifikas_tajwid_arrahman.dart';
import '../../shared/constant.dart';

class TabelMengidentifikasiTajwidArRahman extends StatelessWidget {
  const TabelMengidentifikasiTajwidArRahman({
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
          mengidentifikasiTajwidArRahman.length,
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
                    "${mengidentifikasiTajwidArRahman[index].kalimat}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${mengidentifikasiTajwidArRahman[index].hukumBacaan}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${mengidentifikasiTajwidArRahman[index].sebab}",
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
