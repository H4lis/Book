import 'package:flutter/material.dart';

import '../../data/vokal_pendek.dart';
import '../../shared/constant.dart';

class VokalPanjangW extends StatelessWidget {
  const VokalPanjangW({
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
          vokalPanjang.length,
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
                    "${vokalPanjang[index].tanda}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${vokalPanjang[index].nama}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${vokalPanjang[index].hurufLatin}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${vokalPanjang[index].nama2}",
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
