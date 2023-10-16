import 'package:flutter/material.dart';

import '../../data/bab_1_model/makna_kata_hadis_ipte.dart';
import '../../shared/constant.dart';

class TabelMaknaKataHadisIptek extends StatelessWidget {
  const TabelMaknaKataHadisIptek({super.key});

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
          maknaKataHadisIptek.length,
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
                    "${maknaKataHadisIptek[index].kata}",
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
                    "${maknaKataHadisIptek[index].arti}",
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
                    "${maknaKataHadisIptek[index].kata2}",
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
                    "${maknaKataHadisIptek[index].arti2}",
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
