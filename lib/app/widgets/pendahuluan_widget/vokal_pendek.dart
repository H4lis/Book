import 'package:flutter/material.dart';

import '../../data/bab_1_model/mengidentifikasi_tajwid.dart';
import '../../data/vokal_pendek.dart';
import '../../shared/constant.dart';

class VokalPendekW extends StatelessWidget {
  const VokalPendekW({
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
        columnWidths: {},
        children: List.generate(
          vokalPendek.length,
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
                    "${vokalPendek[index].tanda}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${vokalPendek[index].nama}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${vokalPendek[index].hurufLatin}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${vokalPendek[index].nama2}",
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
