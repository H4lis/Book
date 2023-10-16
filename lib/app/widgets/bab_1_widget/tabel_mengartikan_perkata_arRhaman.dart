import 'package:flutter/material.dart';

import '../../data/bab_1_model/mengartikan_perkata_ar_rahman.dart';
import '../../shared/constant.dart';

class TabelMengartikanPerkataArRahman extends StatelessWidget {
  const TabelMengartikanPerkataArRahman({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: purpleBagroundDark,
      child: Table(
        border: TableBorder.all(color: purple),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: List.generate(
          mengartikanKataArRahman.length,
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
                    "${mengartikanKataArRahman[index].kata}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${mengartikanKataArRahman[index].makna}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${mengartikanKataArRahman[index].kata2}",
                    style: index == 0 ? h2 : regulerQuran,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              TableCell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "${mengartikanKataArRahman[index].makna2}",
                    style: index == 0 ? h2 : regular_paragraf,
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
