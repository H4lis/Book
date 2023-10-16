import 'package:book/app/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/bab_1_model/tabel_penilaian_sikap_d.dart';
import '../../shared/constant.dart';
import '../customChechBox.dart';
import '../heading_2.dart';

class TabelPanilaianSikap extends StatefulWidget {
  final List<dynamic> idlist;
  TabelPanilaianSikap({required this.idlist, Key? key}) : super(key: key);

  @override
  State<TabelPanilaianSikap> createState() => _TabelPanilaianSikapState();
}

class _TabelPanilaianSikapState extends State<TabelPanilaianSikap> {
final WrapperScreenController  checkBoxController = Get.put(WrapperScreenController());

  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
   
        Heading2(title: "1. Penilaian Sikap"),
        Text(
          "Penilaian Diri\nBerilah tanda centang (v) pada kolom berikut dan berikan alasannya!",
          style: h2.copyWith(fontWeight: FontWeight.w600),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          color: purpleBagroundDark,
          child: Table(
            border: TableBorder.all(color: purple),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {
              0: const FractionColumnWidth(1 / 8),
              1: const FractionColumnWidth(1 / 2.5),
              4: const FractionColumnWidth(1 / 3),
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
                        
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "S",
                                        style:
                                            index == 0 ? h2 : regular_paragraf,
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "R",
                                        style:
                                            index == 0 ? h2 : regular_paragraf,
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "TS",
                                        style:
                                            index == 0 ? h2 : regular_paragraf,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                             Setuju()
                            ,
                                Ragu(),
                               
                            TSetuju(),                         
                              ],                          
                            ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: index == 0
                          ? Text(
                              "${widget.idlist[index].alasan}",
                              style: index == 0 ? h2 : regular_paragraf,
                              textAlign: TextAlign.center,
                            )
                          : TextFormField(
                              cursorColor: purpleBagroundDark,
                              maxLines: null,
                              style: regular_paragraf,
                              textAlign: TextAlign.justify,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: purple),
                                ),
                              ),
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
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: "Catatan:",
                  style: regular_paragraf.copyWith(
                      fontWeight: FontWeight.w600, color: black)),
              TextSpan(
                  text: " S= Setuju, R= Ragu, TS= Tidak setuju",
                  style: regular_paragraf)
            ],
          ),
        ),
        Heading2(title: "2. Penilainan Pengetahuan"),
        SizedBox(
          height: 4,
        ),
        Text(
          "Berilah tanda silang (X) pada huruf A, B, C, D atau E pada pernyataan di bawah ini sebagai jawaban yang paling tepat!",
          style: semiBold.copyWith(fontSize: 10),
        ),
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
           ()=> Checkbox(
                value:isChecked.value, // Set the checkbox value as needed
                onChanged: (newValue) {
                  isChecked.value = newValue!;
              
              },
              ),
            ),
          
        ),
        Positioned(
          top: 34,
          left: 11,
          child: Text(
            "Ragu",
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
    return   Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Transform.scale(
                                      scale: 0.6,
                                
                                                child: Obx(
           ()=> Checkbox(
                value:isChecked.value, // Set the checkbox value as needed
                onChanged: (newValue) {
                  isChecked.value = newValue!;
              
              },
              ),
            ),
                                      
                                    ),
                                    Positioned(
                                      top: 34,
                                      left: 9,
                                      child: Text(
                                        "Setuju",
                                        style: regular_paragraf,
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
    return    Stack(
                                  alignment: Alignment.topCenter,
                                  
                                  children: [
                                  SizedBox
                                  (height: 90,),
                                    Transform.scale(
                                      scale: 0.6,
                                
                                              child: Obx(
           ()=> Checkbox(
                value:isChecked.value, // Set the checkbox value as needed
                onChanged: (newValue) {
                  isChecked.value = newValue!;
              
              },
              ),
            ),
                                      
                                    ),
                                    Positioned(
                                      top: 34,
                                      left: 9,
                                      child: 
                                          Text(
                                            "Tidak\nsetuju",
                                            style: regular_paragraf,
                                            textAlign: TextAlign.center,
                                          ),
                               
                                  
                                    ),
                            
                                           SizedBox(height: 20,)
                                  ],
                                
                                );
  }
}
