
import 'package:flutter/material.dart';

import '../modules/SideMenu/views/side_menu_view.dart';
import '../shared/constant.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/bab_1_widget/prakata.dart';
import '../widgets/pendahuluan_widget/kata_pengantar.dart';
import '../widgets/pendahuluan_widget/kata_sambutan.dart';
import '../widgets/pendahuluan_widget/pedoman_transliterasi.dart';
import '../widgets/pendahuluan_widget/petunjuk_penggunaan_buku.dart';

class Pendahuluann extends StatelessWidget {
  const Pendahuluann({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenuView(),
      appBar: const AppBarWidget(),
      body: ListView(
        children: [
          Image.asset("assets/images/sampul_buku.png"),
          Container(
            margin:
                const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 1),
            height: 2,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: purpleBagroundLight),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                KataPengantar(),               
                KataSambutan(),
                Prakata(),
                PetunjukPenggunaanBuku(),
                PedomanTranliterasi(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
