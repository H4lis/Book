import 'package:book/app/widgets/paragraf_italic.dart';
import 'package:book/app/widgets/paragraf_widget.dart';
import 'package:book/app/widgets/pendahuluan_widget/vokal_panjang.dart';
import 'package:book/app/widgets/pendahuluan_widget/vokal_pendek.dart';
import 'package:book/app/widgets/quran_widget.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../shared/constant.dart';
import '../pembatas.dart';
import '../pendahuluan/penulisam_huruf.dart';
import '../video_player_widget.dart';

class PedomanTranliterasi extends StatefulWidget {
  const PedomanTranliterasi({
    super.key,
  });

  @override
  State<PedomanTranliterasi> createState() => _PedomanTranliterasiState();
}

class _PedomanTranliterasiState extends State<PedomanTranliterasi> {
  late FlickManager flickManager;
  late FlickManager flickManager2;
  late FlickManager flickManager3;

  @override
  void initState() {
    super.initState();

    // Menginisialisasi VideoPlayerController.
    final VideoPlayerController _videoController =
        VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/video%2Fvokal_pendek.mp4?alt=media&token=68b76f70-bc89-4341-bb9b-67bdf76fd3fb&_gl=1*1sy76yd*_ga*MTg5MDkxMTc5Ny4xNjk6Ly9wb2xuZy50YS4xNzU0MDM4NDMzLjYzLjQ0LjY4NzkzOS42LjA.',
    );
    final VideoPlayerController _videoController2 =
        VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/video%2Fvokal_panjang.mp4?alt=media&token=2c1a133e-1bf8-4192-8753-1cf862721c22&_gl=1*aw7oxl*_ga*MTg5MDkxMTc5Ny4xNjk2ODUwMjgy*_ga_CW55HF8NVT*MTY5NzM4MzU3OS42LjEuMTY5NzM4Mzc0OS42MC4wLjA.',
    );
    final VideoPlayerController _videoController3 =
        VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/video%2Fdiftong.mp4?alt=media&token=f3cb20a1-8d40-4345-8dc2-379f07236190&_gl=1*1ormu9z*_ga*MTg5MDkxMTc5Ny4xNjk2ODUwMjgy*_ga_CW55HF8NVT*MTY5NzM4NTk4NS43LjEuMTY5NzM4NzAzNC41OC4wLjA.',
    );

    // Menginisialisasi video controller.
    _videoController.initialize().then((_) {
      _videoController.setLooping(false);
      _videoController.pause();
    });
    _videoController2.initialize().then((_) {
      _videoController2.setLooping(false);
      _videoController2.pause();
    });
    _videoController3.initialize().then((_) {
      _videoController3.setLooping(false);
      _videoController3.pause();
    });

    flickManager = FlickManager(
      videoPlayerController: _videoController,
    );
    flickManager2 = FlickManager(
      videoPlayerController: _videoController2,
    );
    flickManager3 = FlickManager(
      videoPlayerController: _videoController3,
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    flickManager2.dispose();
    flickManager3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            "Pedoman Transliterasi",
            style: semiBold_title,
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          "Buku Pendidikan Agama Islam dan Budi Pekerti Kelas XI ini tidak lepas dari penulisan transliterasi. Adapun pedoman transliterasinya berdasarkan atas Keputusan Bersama Menteri Agama dan Menteri Pendidikan dan Kebudayaan Republik Indonesia No. 158 Tahun 1987 dan No. 0543 b/u/1987 sebagai berikut",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "1. Penulisan Huruf (Konsonan)",
          style: h1.copyWith(color: purple),
        ),
        const SizedBox(
          height: 4,
        ),
        PenulisanHuruf(),
        const SizedBox(
          height: 16,
        ),
        Text(
          "2. Vokal Pendek",
          style: h1.copyWith(color: purple),
        ),
        Container(
          color: purpleBagroundDark,
          child: Table(
            border: TableBorder.all(color: purple),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {},
            children: [
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Tanda",
                        style: h2.copyWith(color: black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Nama",
                        style: h2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Huruf Latin",
                        style: h2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Nama",
                        style: h2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: purpleBaground),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                        padding: EdgeInsets.all(8),
                        child: Image.asset("assets/icons/ve.jpg")),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Fathah",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          "A",
                          style: regulerQuran,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "A",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: purpleBaground),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                        padding: EdgeInsets.all(8),
                        child: Image.asset("assets/icons/ve.jpg")),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Kasrah",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          "I",
                          style: regulerQuran,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "I",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: purpleBaground),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Container(
                          padding: EdgeInsets.all(8),
                          child: Image.asset("assets/icons/ve3.jpg")),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Ḍammah",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          "U",
                          style: regulerQuran,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "U",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          "Contoh :",
          style: regular_paragraf,
        ),
        Row(
          children: [
            QuranWidget(arab: "مَلِكِ"),
            ParagrafItalic(content: " : maliki "),
            Spacer(),
            QuranWidget(arab: "لِرَبِّكَ"),
            ParagrafItalic(content: " : lirabbika"),
            Spacer(),
            QuranWidget(arab: "مِنْ شَرِّ"),
            ParagrafItalic(content: "min syarri"),
          ],
        ),
         VideoPlayerWidget(flickManager: flickManager),
       
        const SizedBox(
          height: 16,
        ),
        Text(
          "3. Vokal Panjang",
          style: h1.copyWith(color: purple),
        ),
        Container(
          color: purpleBagroundDark,
          child: Table(
            border: TableBorder.all(color: purple),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {},
            children: [
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Tanda",
                        style: h2.copyWith(color: black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Nama",
                        style: h2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Huruf dan tanda",
                        style: h2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Nama",
                        style: h2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: purpleBaground),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                        padding: EdgeInsets.all(8),
                        child: Image.asset("assets/icons/vp1.jpg")),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Fathah dan alif",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          "a",
                          style: regulerQuran,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "a dan garis di atas",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: purpleBaground),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                        padding: EdgeInsets.all(8),
                        child: Image.asset("assets/icons/vp2.jpg")),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Kasrah dan ya",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          "I",
                          style: regulerQuran,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "i dan garis di atas",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: purpleBaground),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Container(
                          padding: EdgeInsets.all(8),
                          child: Image.asset("assets/icons/vp3.jpg")),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Ḍammah dan wau",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          "u",
                          style: regulerQuran,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "u dan garis di atas",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          "Contoh :",
          style: regular_paragraf,
        ),
        Row(
          children: [
            QuranWidget(arab: "وَسْوَاسِ"),
            ParagrafItalic(content: " : waswāsi"),
            Spacer(),
            QuranWidget(arab: "نَسْتَعِيْنُ"),
            ParagrafItalic(content: " : nasta’īnu "),
            Spacer(),
            QuranWidget(arab: "صُدُوْرِ"),
            ParagrafItalic(content: " : sudūri")
          ],
        ),
         VideoPlayerWidget(flickManager: flickManager2),
        const SizedBox(
          height: 16,
        ),

        Text(
          "4. Diftong",
          style: h1.copyWith(color: purple),
        ),
        Container(
          color: purpleBagroundDark,
          child: Table(
            border: TableBorder.all(color: purple),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {},
            children: [
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Tanda",
                        style: h2.copyWith(color: black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Nama",
                        style: h2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Huruf Latin",
                        style: h2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Nama",
                        style: h2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: purpleBagroundLight),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Container(
                          padding: EdgeInsets.all(8),
                          child: Image.asset("assets/icons/diftong1.jpg")),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Fathah dan ya",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          "ai",
                          style: regulerQuran,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "a dan i",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(color: purpleBagroundLight),
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Container(
                          padding: EdgeInsets.all(2),
                          child: Image.asset("assets/icons/diftong2.jpg")),
                    ),
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Fathah dan wau",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text(
                          "au",
                          style: regulerQuran,
                        ),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "a dan u",
                        style: regulerQuran,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(
          height: 4,
        ),
        Text(
          "Contoh :",
          style: regular_paragraf,
        ),
        Row(
          children: [
            QuranWidget(arab: "عَلَيْهِم"),
            ParagrafItalic(content: " : 'alaihim"),
            Spacer(),
            QuranWidget(arab: "يَوْمِ الدِّيْن"),
            ParagrafItalic(content: " : yaumiddīn")
          ],
        ),
         VideoPlayerWidget(flickManager: flickManager3),
        const Pembatas(),
      ],
    );
  }
}
