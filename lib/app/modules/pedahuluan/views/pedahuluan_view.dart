
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/constant.dart';
import '../../../widgets/bab_1_widget/prakata.dart';
import '../../../widgets/pendahuluan_widget/kata_pengantar.dart';
import '../../../widgets/pendahuluan_widget/kata_sambutan.dart';
import '../../../widgets/pendahuluan_widget/pedoman_transliterasi.dart';
import '../../../widgets/pendahuluan_widget/petunjuk_penggunaan_buku.dart';
import '../controllers/pedahuluan_controller.dart';

class PedahuluanView extends GetView<PedahuluanController> {
  const PedahuluanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Row(
              children: [
                Builder(builder: (ctx) {
                  return Material(
                    borderRadius: BorderRadius.circular(4),
                    child: InkWell(
                      onTap: () {
                        Scaffold.of(ctx).openDrawer();
                      },
                      borderRadius: BorderRadius.circular(4),
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            "assets/icons/DaftarIsi.png",
                            width: 24,
                          )),
                    ),
                  );
                }),
                const SizedBox(
                  width: 24,
                ),
                Text(
                  "Book App",
                  style: bold.copyWith(color: purple, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            SizedBox(
              height: 10,
            ),
            const KataPengantar(),
            const KataSambutan(),
            Prakata(),
            const PetunjukPenggunaanBuku(),
            const PedomanTranliterasi(),

            // PedahuluanView(),
            const SizedBox(
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
