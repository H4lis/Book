import 'package:flutter/material.dart';

import '../shared/constant.dart';

class TabelHukumBacaanWidget extends StatelessWidget {
  final List<dynamic> idlist;
  const TabelHukumBacaanWidget({required this.idlist, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: purpleBagroundDark,
      child: Table(
        border: TableBorder.all(color: purple),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: {
          0: const FractionColumnWidth(1 / 8),
          2: const FractionColumnWidth(1 / 2.8),
          4: const FractionColumnWidth(1 / 3),
        },
        children: List.generate(
          idlist.length,
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
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    index == 0
                        ? "No"
                        : index == 1
                            ? ""
                            : "${index - 1}",
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
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "${idlist[index].lafadz}",
                    style: index == 0
                        ? h2
                        : regulerQuran.copyWith(fontSize: 16, height: 3),
                    textAlign:
                        index == 0 ? TextAlign.center : TextAlign.justify,
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "${idlist[index].hukumBacaan}",
                    style: index == 0 ? h2 : regular_paragraf,
                    textAlign: index == 0 ? TextAlign.center : TextAlign.start,
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.top,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    "${idlist[index].alasan}",
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
