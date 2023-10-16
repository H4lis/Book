import 'package:book/app/widgets/pembatas.dart';
import 'package:flutter/material.dart';

import '../modules/SideMenu/views/side_menu_view.dart';
import '../widgets/app_bar_widget.dart';

class DaftarIsi extends StatelessWidget {
  const DaftarIsi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenuView(),
      appBar: const AppBarWidget(),
      body: ListView(
        children: [
          Image.asset(
            "assets/images/1.png",
            width: double.infinity,
          ),
          Image.asset(
            "assets/images/2.png",
            width: double.infinity,
          ),
          Image.asset(
            "assets/images/3.png",
            width: double.infinity,
          ),
          Image.asset(
            "assets/images/4.png",
            width: double.infinity,
          ),
          Image.asset(
            "assets/images/5.png",
            width: double.infinity,
          ),
          Pembatas(),
          SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
