import 'package:book/app/assingnment/p_sikap_1.dart';
import 'package:book/app/assingnment/p_sikap_2.dart';
import 'package:book/app/controller.dart';
import 'package:book/app/widgets/heading_3.dart';
import 'package:book/app/widgets/paragraf_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/bab_1_model/tabel_penilaian_sikap_d.dart';
import '../../shared/constant.dart';
import '../customChechBox.dart';
import '../heading_2.dart';

class TabelPanilaianSikapAtas extends StatefulWidget {
  final List<dynamic> idlist;
  TabelPanilaianSikapAtas({required this.idlist, Key? key}) : super(key: key);

  @override
  State<TabelPanilaianSikapAtas> createState() => _TabelPanilaianSikapState();
}

class _TabelPanilaianSikapState extends State<TabelPanilaianSikapAtas> {
  final WrapperScreenController checkBoxController =
      Get.put(WrapperScreenController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          color: purpleBagroundDark,
          child: Table(
            border: TableBorder.all(color: purple),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {
              0: const FractionColumnWidth(1 / 8),
              1: const FractionColumnWidth(1 / 2),
            },
            children: List.generate(
              widget.idlist.length,
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
                    verticalAlignment: index == 0
                        ? TableCellVerticalAlignment.middle
                        : TableCellVerticalAlignment.top,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        index == 0 ? "No" : "${index}",
                        style: index == 0
                            ? h2.copyWith(
                                color: black,
                              )
                            : regular_paragraf,
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text("${widget.idlist[index].pernyataan}",
                          style: index == 0 ? h2 : regular_paragraf,
                          textAlign: index == 0
                              ? TextAlign.center
                              : TextAlign.justify),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: index == 0
                          ? Column(
                              children: [
                                Text(
                                  "${widget.idlist[index].jawaban}",
                                  style: index == 0 ? h2 : regular_paragraf,
                                  textAlign: TextAlign.center,
                                ),
                                if (index == 0) const SizedBox(height: 5),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [Setuju(), Ragu(), TSetuju(), Empat()],
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Heading3(title: "Keterangan"),
        ParagrafWidget(
            content:
                "1 = tidak pernah 2 = kadang-kadang 3 = sering 4 = selalu"),
      ],
    );
  }
}

class Ragu extends StatelessWidget {
  const Ragu({super.key});

  @override
  Widget build(BuildContext context) {
    var isChecked = false.obs;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Transform.scale(
          scale: 0.6,
          child: Obx(
            () => Checkbox(
              value: isChecked.value, // Set the checkbox value as needed
              onChanged: (newValue) {
                isChecked.value = newValue!;
              },
            ),
          ),
        ),
        Positioned(
          top: 17,
          left: 1,
          child: Text(
            "2",
            style: regular_paragraf,
          ),
        ),
      ],
    );
  }
}

class Setuju extends StatelessWidget {
  const Setuju({super.key});

  @override
  Widget build(BuildContext context) {
    var isChecked = false.obs;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          top: 17,
          left: 1,
          child: Text(
            "1",
            style: regular_paragraf,
          ),
        ),
        Transform.scale(
          scale: 0.6,
          child: Obx(
            () => Checkbox(
              value: isChecked.value, // Set the checkbox value as needed
              onChanged: (newValue) {
                isChecked.value = newValue!;
              },
            ),
          ),
        ),
      ],
    );
  }
}

class TSetuju extends StatelessWidget {
  const TSetuju({super.key});

  @override
  Widget build(BuildContext context) {
    var isChecked = false.obs;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Transform.scale(
          scale: 0.6,
          child: Obx(
            () => Checkbox(
              value: isChecked.value, // Set the checkbox value as needed
              onChanged: (newValue) {
                isChecked.value = newValue!;
              },
            ),
          ),
        ),
        Positioned(
          top: 17,
          left: 1,
          child: Text(
            "3",
            style: regular_paragraf,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class Empat extends StatelessWidget {
  const Empat({super.key});

  @override
  Widget build(BuildContext context) {
    var isChecked = false.obs;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Transform.scale(
          scale: 0.6,
          child: Obx(
            () => Checkbox(
              value: isChecked.value, // Set the checkbox value as needed
              onChanged: (newValue) {
                isChecked.value = newValue!;
              },
            ),
          ),
        ),
        Positioned(
          top: 17,
          left: 1,
          child: Text(
            "4",
            style: regular_paragraf,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
