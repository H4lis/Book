import 'package:book/app/bab/bab_1.dart';
import 'package:book/app/bab/pendahuluan.dart';
import 'package:book/app/fabtabs.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/constant.dart';
import '../controllers/side_menu_controller.dart';

class SideMenuView extends GetView<SideMenuController> {
  const SideMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/linear.png"),
                      fit: BoxFit.fitWidth),
                ),
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Text("PAI BS KLS XI\nKurikulum Merdeka",
                    textAlign: TextAlign.center,
                    style: bold.copyWith(fontSize: 20, color: Colors.white)),
              ),
            ],
          ),
          ListTile(
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FabTabs(selectedIndex: 7)))
            },
            horizontalTitleGap: 0,
            title: Text(
              'Datar Isi',
              style: h1.copyWith(color: black),
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          ListTile(
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FabTabs(selectedIndex: 2)))
            },
            horizontalTitleGap: 0,
            title: Text(
              'Pendahuluan',
              style: h1.copyWith(color: black),
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          const Divider(height: 1),
          ListTile(
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FabTabs(selectedIndex: 0)))
            },
            horizontalTitleGap: 0,
            title: Row(
              children: [
                Text(
                  'Bab 1  :  ',
                  style: h1.copyWith(color: black),
                ),
                Expanded(
                    child: Text(
                  "Membiasakan Berpikir Kritis dan Semangat Mencintai Iptek",
                  style: regular.copyWith(fontSize: 10),
                  maxLines: 2, // Batasi teks hingga dua baris
                  overflow: TextOverflow.ellipsis,
                ))
              ],
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          const Divider(height: 1),
          ListTile(
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FabTabs(selectedIndex: 3)))
            },
            horizontalTitleGap: 0,
            title: Row(
              children: [
                Text(
                  'Bab 2 :  ',
                  style: h1.copyWith(color: black),
                ),
                Expanded(
                    child: Text(
                  "Bukti Beriman: Memenuhi Janji, Mensyukuri Nikmat, Memelihara Lisan, Menutupi Aib Orang Lain",
                  style: regular.copyWith(fontSize: 10),
                  maxLines: 2, // Batasi teks hingga dua baris
                  overflow: TextOverflow.ellipsis,
                ))
              ],
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          const Divider(height: 1),
          ListTile(
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FabTabs(selectedIndex: 4)))
            },
            horizontalTitleGap: 0,
            title: Row(
              children: [
                Text(
                  'Bab 3 :  ',
                  style: h1.copyWith(color: black),
                ),
                Expanded(
                    child: Text(
                  "Menghindari Perkelahian Pelajar, Minuman Keras, dan Narkoba",
                  style: regular.copyWith(fontSize: 10),
                  maxLines: 2, // Batasi teks hingga dua baris
                  overflow: TextOverflow.ellipsis,
                ))
              ],
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          const Divider(height: 1),
          ListTile(
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FabTabs(selectedIndex: 5)))
            },
            horizontalTitleGap: 0,
            title: Row(
              children: [
                Text(
                  'Bab 4 :  ',
                  style: h1.copyWith(color: black),
                ),
                Expanded(
                    child: Text(
                  "Menebarkan Islam dengan Santun dan Damai Melalui Dakwah, Khutbah, dan Tablig",
                  style: regular.copyWith(fontSize: 10),
                  maxLines: 2, // Batasi teks hingga dua baris
                  overflow: TextOverflow.ellipsis,
                ))
              ],
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          const Divider(height: 1),
          ListTile(
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FabTabs(selectedIndex: 6)))
            },
            horizontalTitleGap: 0,
            title: Row(
              children: [
                Text(
                  'Bab 5 :  ',
                  style: h1.copyWith(color: black),
                ),
                Expanded(
                    child: Text(
                  "Meneladani Jejak Langkah Ulama Indonesia yang Mendunia",
                  style: regular.copyWith(fontSize: 10),
                  maxLines: 2, // Batasi teks hingga dua baris
                  overflow: TextOverflow.ellipsis,
                ))
              ],
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          const Divider(height: 1),
          ListTile(
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FabTabs(selectedIndex: 7)))
            },
            horizontalTitleGap: 0,
            title: Row(
              children: [
                Text(
                  'Bab 6 :  ',
                  style: h1.copyWith(color: black),
                ),
                Expanded(
                    child: Text(
                  "Menguatkan Kerukunan melalui Toleransi dan Memelihara Kehidupan Manusia",
                  style: regular.copyWith(fontSize: 10),
                  maxLines: 2, // Batasi teks hingga dua baris
                  overflow: TextOverflow.ellipsis,
                ))
              ],
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          const Divider(height: 1),
          ListTile(
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FabTabs(selectedIndex: 8)))
            },
            horizontalTitleGap: 0,
            title: Row(
              children: [
                Text(
                  'Bab 7 :  ',
                  style: h1.copyWith(color: black),
                ),
                Expanded(
                    child: Text(
                  "Menguatkan Iman dengan Menjaga Kehormatan, Ikhlas, Malu, dan Zuhud",
                  style: regular.copyWith(fontSize: 10),
                  maxLines: 2, // Batasi teks hingga dua baris
                  overflow: TextOverflow.ellipsis,
                ))
              ],
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          const Divider(height: 1),
          ListTile(
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FabTabs(selectedIndex: 9)))
            },
            horizontalTitleGap: 0,
            title: Row(
              children: [
                Text(
                  'Bab 8 :  ',
                  style: h1.copyWith(color: black),
                ),
                Expanded(
                    child: Text(
                  "Adab Menggunakan Media Sosial",
                  style: regular.copyWith(fontSize: 10),
                  maxLines: 2, // Batasi teks hingga dua baris
                  overflow: TextOverflow.ellipsis,
                ))
              ],
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          const Divider(height: 1),
          ListTile(
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FabTabs(selectedIndex: 10)))
            },
            horizontalTitleGap: 0,
            title: Row(
              children: [
                Text(
                  'Bab 9 :  ',
                  style: h1.copyWith(color: black),
                ),
                Expanded(
                    child: Text(
                  "Ketentuan Pernikahan dalam Islam",
                  style: regular.copyWith(fontSize: 10),
                  maxLines: 2, // Batasi teks hingga dua baris
                  overflow: TextOverflow.ellipsis,
                ))
              ],
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          const Divider(height: 1),
          ListTile(
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FabTabs(selectedIndex: 11)))
            },
            horizontalTitleGap: 0,
            title: Row(
              children: [
                Text(
                  'Bab 10 :  ',
                  style: h1.copyWith(color: black),
                ),
                Expanded(
                    child: Text(
                  "Peradaban Islam pada Masa Modern",
                  style: regular.copyWith(fontSize: 10),
                  maxLines: 2, // Batasi teks hingga dua baris
                  overflow: TextOverflow.ellipsis,
                ))
              ],
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          const Divider(height: 1),
        ],
      ),
    );
  }
}
