import 'package:book/app/bab/bab_2.dart';
import 'package:book/app/bab/bab_3.dart';
import 'package:book/app/bab/bab_4.dart';
import 'package:book/app/bab/bab_5.dart';
import 'package:book/app/bab/daftar_isi.dart';
import 'package:book/app/bab/pendahuluan.dart';
import 'package:flutter/material.dart';

import 'bab/bab_1.dart';
import 'bab/bab_10.dart';
import 'bab/bab_6.dart';
import 'bab/bab_7.dart';
import 'bab/bab_8.dart';
import 'bab/bab_9.dart';
import 'modules/profile/views/profile_view.dart';

class FabTabs extends StatefulWidget {
  int selectedIndex = 0;
  FabTabs({required this.selectedIndex});

  @override
  State<FabTabs> createState() => _FabTabsState();
}

class _FabTabsState extends State<FabTabs> {
  int currentIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
      currentIndex = widget.selectedIndex;
    });
  }

  @override
  void initState() {
    onItemTapped(widget.selectedIndex);
    super.initState();
  }

  final List<Widget> pages = [
    Bab_1(),
    ProfileView(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = currentIndex == 0
        ? Bab_1()
        : currentIndex == 1
            ? ProfileView()
            : currentIndex == 2
                ? const Pendahuluann()
                : currentIndex == 3
                    ? const Bab2()
                    : currentIndex == 4
                        ? const Bab3()
                        : currentIndex == 5
                            ? const Bab4()
                            : currentIndex == 6
                                ? Bab5()
                                : currentIndex == 7
                                    ? const Bab6()
                                    : currentIndex == 8
                                        ? const Bab7()
                                        : currentIndex == 9
                                            ? const Bab8()
                                            : currentIndex == 10
                                                ? const Bab9()
                                                : currentIndex == 11
                                                    ? const Bab10()
                                                    : const DaftarIsi();
    return SafeArea(
      child: Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      currentScreen = Bab_1();
                      currentIndex = 0;
                    });
                  },
                  child: Image.asset(
                    currentIndex != 1
                        ? 'assets/icons/Book_on.png'
                        : 'assets/icons/Book.png',
                    width: 28,
                    height: 28,
                  ),
                ),
                MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      currentScreen = ProfileView();
                      currentIndex = 1;
                    });
                  },
                  child: Image.asset(
                    currentIndex != 1
                        ? 'assets/icons/Profile.png'
                        : 'assets/icons/Profile_on.png',
                    width: 28,
                    height: 28,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
