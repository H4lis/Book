import 'package:audioplayers/audioplayers.dart';
import 'package:book/app/data/bab_2_model/tadabbur_model.dart';
import 'package:book/app/widgets/app_bar_widget.dart';
import 'package:book/app/widgets/border_black.dart';
import 'package:book/app/widgets/heading_3.dart';
import 'package:book/app/widgets/paragraf_italic.dart';
import 'package:book/app/widgets/per_list_paragraf.dart';
import 'package:book/app/widgets/sub_bab.dart';
import 'package:book/app/widgets/tabel_penerapan_karakter.dart';
import 'package:book/app/widgets/voice_play_orange.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../controller.dart';
import '../data/bab_1_model/isi_kandungan_ayat.dart';
import '../data/bab_1_model/isi_kandungan_hadis.dart';
import '../data/bab_1_model/isi_kandungan_hadis_berpikir_kritis.dart';
import '../data/bab_1_model/list_pengayaan.dart';
import '../data/bab_1_model/rangkuman_bab1.dart';
import '../data/bab_1_model/tabel_penilaian_sikap_d.dart';
import '../data/bab_1_model/uraian_bab1.dart';
import '../data/kata_kunci.dart';
import '../data/pilihan_ganda.dart';
import '../data/tabel_penerapan_karakter.dart';
import '../modules/SideMenu/views/side_menu_view.dart';
import '../modules/profile/controllers/profile_controller.dart';
import '../shared/constant.dart';
import '../widgets/aktivitas_widget.dart';
import '../widgets/bab_1_widget/pilihanganda.dart';
import '../widgets/bab_1_widget/tabel_makna_kata.dart';
import '../widgets/bab_1_widget/tabel_makna_kata_hadis_iptek.dart';
import '../widgets/bab_1_widget/tabel_mengartikan_perkata_ali_imran.dart';
import '../widgets/bab_1_widget/tabel_mengartikan_perkata_arRhaman.dart';
import '../widgets/bab_1_widget/tabel_mengi_tajwid_ar_rahman.dart';
import '../widgets/bab_1_widget/tabel_mengidentifikasi_tajwid.dart';
import '../widgets/bab_1_widget/tabel_penilaian_sikap.dart';
import '../widgets/baground_orange_kata_kunci.dart';
import '../widgets/heading_1.dart';
import '../widgets/heading_2.dart';
import '../widgets/image_paragraf.dart';
import '../widgets/list_paragraf.dart';
import '../widgets/paragraf_widget.dart';
import '../widgets/pembatas.dart';
import '../widgets/quran_widget.dart';
import '../widgets/refleksi.dart';
import '../widgets/sampul_bab.dart';
import '../widgets/tadabbur.dart';
import '../widgets/terjemahan_widget.dart';
import '../widgets/voice_play.dart';

class Bab_1 extends StatelessWidget {
  Bab_1({
    super.key,
  });

  final ProfileController controller = Get.put(ProfileController());
  final controllerwrap = Get.put(WrapperScreenController());
  final player = AudioPlayer();
  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final WrapperScreenController checkBoxController =
        Get.put(WrapperScreenController());

    return Scaffold(
      drawer: const SideMenuView(),
      appBar: const AppBarWidget(),
      body: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: controller.streamUser(),
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snap.data != null && snap.data!.data() != null) {
            Map<String, dynamic> user = snap.data!.data()!;
            // Lanjutkan dengan penggunaan nilai 'user'
            YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'OarXrVcaIko', 
      flags: YoutubePlayerFlags(
        autoPlay: false
      )
    );


            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Assalamualaikum",
                      style: medium.copyWith(
                          fontSize: 18, color: const Color(0xff8789A3)),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "${user['namaLengkap']}",
                      style: semiBold.copyWith(fontSize: 24, color: purple),
                    ),
                    const SampulBab(
                        title: "Bab 1",
                        contentImage: "bab_1",
                        description:
                            "Membiasakan Berpikir Kritis dan Semangat Mencintai Iptek"),
                    const Heading1(
                        numbering: "A", title: "Tujuan Pembelajaran"),
                    Text(
                      "Setelah mempelajari materi ini, kalian dapat:",
                      style: regular_paragraf,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 16,
                          child: Text(
                            "1.",
                            style: regular_paragraf,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Membaca dengan tartil Q.S. Ali ‘Imrān/3: 190-191 dan QS. ar-Rahmān/55:33, serta Hadis tentang berpikir kritis dan semangat mencintai ilmu pengetahuan dan teknologi (iptek)",
                            textAlign: TextAlign.justify,
                            style: regular_paragraf,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 16,
                          child: Text(
                            "2.",
                            style: regular_paragraf,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Menghafalkan dengan fasih dan lancar Q.S. Ali ‘Imrān/3: 190-191 dan QS. ar-Rahmān/55: 33, serta Hadis tentang berpikir kritis dan semangat mencintai ilmu pengetahuan dan teknologi.",
                            textAlign: TextAlign.justify,
                            style: regular_paragraf,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 16,
                          child: Text(
                            "3.",
                            style: regular_paragraf,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Mempresentasikan tentang Q.S. Ali ‘Imrān/3: 190-191 dan Q.S. arrRahmān/55: 33, serta Hadis tentang berpikir kritis dan semangat mencintai ilmu pengetahuan dan teknologi, sehingga terbiasa membaca Al-Qur’an. ",
                            textAlign: TextAlign.justify,
                            style: regular_paragraf,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 16,
                          child: Text(
                            "4.",
                            style: regular_paragraf,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Meyakini bahwa berpikir kritis dan semangat mencintai ilmu pengetahuan dan teknologi adalah perintah agama.",
                            textAlign: TextAlign.justify,
                            style: regular_paragraf,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 16,
                          child: Text(
                            "5.",
                            style: regular_paragraf,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Membiasakan rasa ingin tahu, berpikir kritis, kreatif, dan adaptif terhadap perkembangan ilmu pengetahuan dan teknologi.",
                            textAlign: TextAlign.justify,
                            style: regular_paragraf,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 16,
                          child: Text(
                            "6.",
                            style: regular_paragraf,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Menganalisis Q.S. Ali ‘Imrān/3: 190-191 dan Q.S. ar-Rahmān/55: 33, serta Hadis tentang berpikir kritis dan semangat mencintai ilmu pengetahuan dan teknologi.",
                            textAlign: TextAlign.justify,
                            style: regular_paragraf,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 28,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: green),
                              padding: const EdgeInsets.all(2),
                              child: Text(
                                "   Kata Kunci  ",
                                style: h1.copyWith(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: greenLight,
                            border: Border.all(width: 2, color: green),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            "B",
                            style: h1.copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    BagroundOrangeKataKunci(idlist: kataKunciBab1),
                    const SizedBox(
                      height: 18,
                    ),
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 28,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: green),
                              padding: const EdgeInsets.all(2),
                              child: Text(
                                "   Infografis  ",
                                style: h1.copyWith(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: greenLight,
                            border: Border.all(width: 2, color: green),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            "C",
                            style: h1.copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Image.asset("assets/images/infografis.jpg"),
                        SizedBox(height: 10,),
                SizedBox(height: 10,),
                 YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,  
            onReady: () {
        
            },
          ),
                    const SizedBox(
                      height: 18,
                    ),
                    Heading1(numbering: "D", title: "Tadabbur"),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: bagroundGreen,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Aktifitas 1.2",
                        style: regular_paragraf.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: bagroundGreenLight,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Aktivitas Peserta Didik:\nAmati gambar atau ilustrasi berikut ini! Lalu berilah tanggapan kalian yang dikaitkan dengan materi ajar yang dipelajari, yakni: Menelaah Q.S. Ali ‘Imrān/3: 190-191 dan Q.S. ar-Rahmān/55: 33 tentang berpikir kritis dan semangat mencintai iptek!",
                        style: regular_paragraf,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Tadabbur(idlist: tadabburSatu),
                    const SizedBox(
                      height: 18,
                    ),
                    Heading1(numbering: "E", title: "Kisah Inspiratif"),

                    AktivitasWidget(
                        activityTitle: "Aktivitas 1.3",
                        contentText:
                            "Pahami dan renungkan artikel berikut ini, sebagai bagian dari pemahaman dari materi ajar yang akan dipelajari!"),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: bagroundDarkOrange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Bijak Terhadap Informasi",
                              style: h1.copyWith(color: orange),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Rasulullah Saw. bersabda:",
                            style: regular_paragraf,
                          ),
                          const QuranWidget(
                              arab:
                                  "عَنْ أَبِيِ هُرَيْرَةَقَلَ:قَالَ رَسُوْلُ اللّٰهِ صَلَّ اللهُ عَلَيْهِ وَسَلَّمَ:كَفَ بِالْمَرْءِكَذِبًاأَنْ يُحَدِّثَ بِكُلِّ مَا سَمِعَ     (رواه مسلم)"),
                          Terjemahan(
                              content:
                                  "Diriwayatkan dari Abu Hurairah ia berkata Rasulullah Saw. Bersabda: “Cukuplah seseorang disebut pendusta orang yang mengatakan (membicarakan) semua yang ia dengar”",
                              riwayat: "(HR. Muslim)."),
                          Text(
                            "\nPenjelasan: \n   Jika seseorang mendapatkan berita, lalu diungkapkan seluruh informasinya tanpa landasan syariah yang benar, maka Rasulullah Saw. menyebutnya sebagai pendusta. Hal ini, karena siapa saja yang mendengar berita, tanpa adanya seleksi, maka sama saja berdusta. \n   Hadis ini, memberi pelajaran penting, agar membiasakan menyaring informasi. Jika mempunyai berita dan ilmu, semestinya disampaikan kepada pihak lain, namun harus tetap mengikuti prinsip-prinsip yang sudah digariskan oleh Allah Swt.",
                            style: regular_paragraf,
                            textAlign: TextAlign.justify,
                          ),
                          ParagrafWidget(
                              content:
                                  "Dalam Q.S. az-Zumar/39: 18 Allah berfirman: "),
                          const QuranWidget(
                              arab:
                                  "الَّذِيْنَ يَسْتَمِعُوْنَ الْقَوْلَ فَيَتَّبِعُوْنَ اَحْسَنَهٗ ۗ اُولٰۤىِٕكَ الَّذِيْنَ هَدٰىهُمُ اللّٰهُ وَاُولٰۤىِٕكَ هُمْ اُولُوا الْاَلْبَابِ   (الزمر/٣٩: ١٨)                     "),
                          const VoicePlayOrange(
                              audioUrl:
                                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F01%20az-Zumar%2018.mp3?alt=media&token=57f8170d-e2c1-4826-8436-41e4f1ef777c"),
                          const Terjemahan(
                              content:
                                  "(yaitu) mereka yang mendengarkan perkataan, lalu mengikuti apa yang paling baik di antaranya. Mereka itulah orang-orang yang telah diberi petunjuk oleh Allah dan mereka itulah orang-orang yang mempunyai akal sehat",
                              riwayat: "(Q.S. az-Zumar/39: 18)"),
                          ParagrafWidget(
                              content:
                                  "   Ayat ini mengandung penjelaskan, yakni: (1) Ciri ulil albab, yaitu orang yang gemar mengumpulkan beragam informasi, tetapi berusaha memilah dan memilihnya yang terbaik dan paling membawa maslahat/6 Pendidikan Agama Islam dan Budi Pekerti untuk SMA/SMK Kelas XI kebaikan. (2) Berisi informasi tentang ketuhanan, ajaran akhlak-moral, prinsip hidup dari berbagai sumber. (3) Selalu melakukan tabayyun atau konfirmasi."),
                          ParagrafWidget(
                              content:
                                  "   Tabayyun itu sangat penting, karena segala sesuatu yang diucapkan, dengar, dan disampaikan, harus dipertanggungjawabkan di sisi Allah Swt. Hal ini sejalan dengan Q.S. al-Isrā’/17: 36"),
                          const QuranWidget(
                              arab:
                                  "وَلَا تَقْفُ مَا لَيْسَ لَكَ بِهٖ عِلْمٌ ۗاِنَّ السَّمْعَ وَالْبَصَرَ وَالْفُؤَادَ كُلُّ اُولٰۤىِٕكَ كَانَ عَنْهُ مَسْـُٔوْلًا ٣٦ "),
                          const VoicePlayOrange(
                              audioUrl:
                                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F01%20al-Isr%C4%81%E2%80%99%2036%20.mp3?alt=media&token=8aa3ef78-e756-47cd-8307-5288b5b79833"),
                          const Terjemahan(
                              content:
                                  " Dan janganlah kamu mengikuti sesuatu yang tidak kamu ketahui. Karena pendengaran, penglihatan dan hati nurani, semua itu akan diminta pertanggungjawabannya",
                              riwayat: "(Q.S. al-Isrā’/17: 36)"),
                          ParagrafWidget(
                              content:
                                  "   Bukan hanya itu, tabayyun juga dapat menjauhkan dari prasangka buruk, fitnah dan ghibah. Sebagai makhluk sosial, manusia banyak melakukan interaksi. Menjadi sangat indah, jika interkasi tersebut, yang diserap hanya informasi secara baik. Ini penting sekali, karena saat ini arus informasi yang masuk semakin deras. Jangan ditelan bulatbulat seluruh informasi yang diterima, tetapi harus ada proses seleksi, karena informasi menjadi sarana paling efektif memengaruhi pola pikir seseorang."),
                          ParagrafWidget(
                              content:
                                  '   Pola pikir inilah yang membentuk tingkah laku. Jika informasi yang diserapnya tidak baik, maka besar kemungkinan perilaku yang muncul akan buruk. Sebaliknya, bila informasi yang diserapnya sarat dengan kebaikan, maka sikap dan perilaku orang tersebut akan baik. Sebab itu, patut sekali bila di tengah derasnya informasi, kita memohon kepada Allah Swt. agar diberi kemampuan untuk tetap konsisten dalam kebaikan, agar keimanan terjaga dari segala distorsi.'),
                          ParagrafItalic(
                              content:
                                  "Disadur dari sumber: Republika Online/Bunga Rampai Taushiyah 3"),
                        ],
                      ),
                    ),
                    const Heading1(numbering: "F", title: "Wawasan Keislaman"),
                    const AktivitasWidget(
                        activityTitle: "Aktivitas 1.4",
                        contentText:
                            "Bentuk kelas kalian menjadi 3 kelompok. Lalu, setiap kelompok mendapatkan sub-materi dari materi ajar yang akan dipelajari: (1) membaca secara tartil (sesuai ilmu tajwid dan makharijul huruf) Q.S. Ali ‘Imrān/3: 190-191 dan Hadis yang terkait; (2) menganalisis isi kandungan Q.S. Ali Imrān/3: 190-191 dan Hadis yangterkait; (3) Menghafalkan dengan fasih dan lancar Q.S. Ali Imrān/3: 190-191. Hasilnya dipresentasikan oleh masing-masing kelompok!"),
                    const SizedBox(
                      height: 18,
                    ),
                    const Heading2(
                        title:
                            "1.   Telaah Q.S. Ali Imrān/3: 190-191 tentang Berpikir Kritis"),
                    Heading3(title: "a. Tilawah Q.S. Ali ‘Imrān/3: 190-191 "),
                    const AktivitasWidget(
                        activityTitle: "Aktifitas 1.5",
                        contentText:
                            "Mari membaca dengan fasih dan benar Q.S. Ali ‘Imrān/3: 190-191 berikut ini. Sesuaikan bacannya dengan menggunakan Ilmu Tajwid dan Makharijul huruf!"),
                    const QuranWidget(
                        arab:
                            "اِنَّ فِيْ خَلْقِ السَّمٰوٰتِ وَالْاَرْضِ وَاخْتِلَافِ الَّيْلِ وَالنَّهَارِ لَاٰيٰتٍ لِّاُولِى الْاَلْبَابِۙ ١٩٠ الَّذِيْنَ يَذْكُرُوْنَ اللّٰهَ قِيَامًا وَّقُعُوْدًا وَّعَلٰى جُنُوْبِهِمْ وَيَتَفَكَّرُوْنَ فِيْ خَلْقِ السَّمٰوٰتِ وَالْاَرْضِۚ رَبَّنَا مَا خَلَقْتَ هٰذَا بَاطِلًاۚ سُبْحٰنَكَ فَقِنَا عَذَابَ النَّارِ ١٩١   (اٰل عمران/٣: ا٩ا ـ١٩٠)"),
                    const VoicePlay(
                        audioUrl:
                            "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F01%20Ali-Imr%C4%81n3%20190-191%20.mp3?alt=media&token=4c44728e-bd0d-4e0d-bf44-0435c8492cd6"),
                    Heading3(title: "b. Mengidentifikasi Tajwid"),
                    const AktivitasWidget(
                        activityTitle: "Aktivitas 1.6",
                        contentText:
                            "Mari perhatikan dengan cermat teks Q.S. Ali ‘Imrān/3: 190-191. Buatlah kajian dari aspek ilmu tajwidnya. Berikut ini ada beberapa contoh, selanjutnya kembangkan untuk kalimat atau lafal yang lain dari ayat tersebut!"),
                    const TabelMengidentifikasiTajwid(),
                    Heading3(title: "c. Mengartikan Perkata"),
                    const AktivitasWidget(
                        activityTitle: "Aktivitas 1.7",
                        contentText:
                            "Coba cermati teks Q.S. Ali ‘Imrān/3: 190-191. kata per kata. Maknai dari kata atau lafal dari ayat tersebut yang belum ada artinya!"),
                    const TabelMengartikanPerkataAliImran(),
                    Heading3(title: "d. Menerjemahkan Ayat"),
                    ParagrafItalic(
                        content:
                            "Sesungguhnya dalam penciptaan langit dan bumi, dan pergantian malam dan siang terdapat tanda-tanda (kebesaran Allah) bagi orang yang berakal (Q.S. Ali ‘Imrān/3: 190)."),

                    ParagrafItalic(
                        content:
                            "(yaitu) orang-orang yang mengingat Allah sambil berdiri, duduk atau dalam keadaan berbaring, dan mereka memikirkan tentang penciptaan langit dan bumi (seraya berkata), “Ya Tuhan kami, tidaklah Engkau menciptakan semua ini sia-sia; Mahasuci Engkau, lindungilah kami dari azab neraka. (Q.S. Ali ‘Imrān/3: 191).   "),

                    Heading3(title: "e. Asbabun Nuzul"),
                    ParagrafWidget(
                        content:
                            "Diriwayatkan dari Aisyah Ra. bahwa Rasulullah Saw. bersabda: “Ya Aisyah, saya malam ini ingin beribadah kepada Allah.” Dijawab oleh Aisyah, “Sungguh saya senang berada di sampingmu, saya tidak keberatan. Maka bangunlah Rasulullah, mengambil air wudhu, lalu shalat yang lama sekali. Beliau menangis sampai membasahi pakaiannya, disebabkan sangat dalamnya merenungkan isi kandungan Al-Qur’an yang dibaca. Hal itu dilakukan berkali-kali, sampai menjelang adzan shubuh, dan saat Bilal hadir, masih melihat kondisi Nabi yang menangis. Lalu Bilal bertanya, “Ya Rasulullah,kenapa Anda masih menangis. Bukankah Allah Swt. sudah mengampuni semua dosa engkau, baik terdahulu maupun yang akan datang,” lalu dijawab oleh Nabi: “Tidak pantaskah saya ini menjadi hamba Allah yang bersyukur, apalagi di malam ini Allah menurunkan ayat yang alangkah ruginya, jika dibaca ayat ini, namun tidak dihayati makna dan isi kandungannya.” Ayat-ayat tersebut adalah termasuk Q.S. Ali ‘Imrān/3: 190-191."),
                    Heading3(title: "f. Isi dan Kandungan Ayat"),
                    ParagrafWidget(
                      content:
                          "Memahami ayat Al-Qur’an, tidak cukup hanya berdasar terjemah saja, tetapi harus berlandaskan kepada buku tafsir yang mu’tabar (otoritatif).Berikut ini, kandungan isi Q.S. Ali Imrān/3: 190-191:",
                    ),
                    ParagrafList(idlist: isiKandunganAyat),
                    const Heading2(
                        title:
                            "2. Telaah Hadis dan Penjelasan Lain tentang Berpikir Kritis"),
                    Heading3(title: "a. Teks Hadis: "),
                    const QuranWidget(
                        arab:
                            "عَنْ أَبِي ذَرٍّرَضِيَ اللّٰهُ عَنْهُ،قَالَ:قَالَ رَسُوْلُ اللّٰهِ صَلَّ اللّٰهُ عَلَيْهِ وَسَلَّمَ:تَفَكَّرُوْافِي خَلْقِ اللّٰهِ وَلَاتَفَكَّرُوْافِي ذَاتِ اللّٰهِ فَتَهْلِكُوْا     (رواه ابواثيخ)"),
                    Heading3(title: "b. Makna Kata:"),
                    const MaknaKataWidget(),
                    Heading3(title: "c. Terjemah Hadis"),
                    const Terjemahan(
                        content:
                            "Dari Abi Dzar r.a. Nabi Saw. bersabda: “Pikirkanlah mengenai segala sesuatu (yang diciptakan Allah), tetapi janganlah kalian memikirkan tentang Dzat Allah, karena kalian akan rusak”",
                        riwayat: "(H.R. Abu Syeikh)"),
                    Heading3(title: "d. Isi Kandungan Hadis"),
                    ParagrafList(idlist: isiKandunganHadis),
                    Heading3(
                        title:
                            "e. Penjelasan Lebih Luas tentang Berpikir Kritis"),
                    Text(
                      "Berpikir menjadi ciri khas manusia. Disebabkan kemampuan berpikir, manusia menjadi makhluk yang dimuliakan Allah Swt. sebagaimana Q.S. al-Isrā’/17: 70 sebagai berikut:",
                      style: regular_paragraf,
                    ),
                    const QuranWidget(
                        arab:
                            "وَلَقَدْ كَرَّمْنَا بَنِيْٓ اٰدَمَ وَحَمَلْنٰهُمْ فِى الْبَرِّ وَالْبَحْرِ وَرَزَقْنٰهُمْ مِّنَ الطَّيِّبٰتِ وَفَضَّلْنٰهُمْ عَلٰى كَثِيْرٍ مِّمَّنْ خَلَقْنَا تَفْضِيْلًا   (الاسرآء/ ١٧: ٧٠)"),
                    const VoicePlay(
                        audioUrl:
                            "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F01%20al-Isra%2070.mp3?alt=media&token=4fe7acb6-3eea-4129-b13c-2d1159f6a9fa"),
                    const Terjemahan(
                        content:
                            "Dan sungguh, Kami telah memuliakan anak cucu Adam, dan Kami angkut mereka di darat dan di laut, dan Kami beri mereka rezeki dari yang baik-baik dan Kami lebihkan mereka di atas banyak makhluk yang Kami ciptakan dengan kelebihan yang sempurna.",
                        riwayat: "(Q.S. al-Isrā’/17: 70)"),
                    ParagrafWidget(
                        content:
                            "   Peran sebagai khalifah, diamanahkan kepada manusia, karena faktor berpikir juga. Karena, kemampuan berpikirlah,akan diserap, didapat dan ditemukan ilmu pengetahuan dan teknologi. Al-Qur’an Surat Al-Baqarah/2: 30 menggambarkan dialog antara Malaikat, Adam, dan Allah Swt. tentang terpilihnya manusia menjadi khalifah di muka bumi, dikarenakan unggulnya ilmu yang dimiliki Adam."),
                    ImageParagraf(
                        screenWidth: screenWidth,
                        gambar: "gambar16",
                        textGambar: "Gambar 1.6",
                        description:
                            "Belajar Kelompok sangat Membantu pemahaman materi ajar"),
                    ParagrafWidget(
                      content:
                          "   Menarik untuk merenungkan dialog tersebut bahwa segala seuatu itu sebelum diputuskan, harus ada dialog dan musyawarah terlebih dahulu. Lalu diputuskan mana argumen dan pemikiran yang paling matang dan unggul untuk dipakai sebagai sebuah keputusan. Itu artinya Islam sangat menekankan adanya berpikir kritis, silakan menyodorkan argumen yang sahih, dan proses dialog yang bijak, sehingga hasilnya membawa kebaikan untuk semua",
                    ),
                    ParagrafWidget(
                        content:
                            "   Berpikir terambil dari bahasa Arab, yakni الفكر, berarti kekuatan yang menembus suatu obyek, sehingga menghasilkan pengetahuan. Jika pengetahuan itu didukung bukti-bukti kuat, dinamakan علم/‘ilm (Q.S. at Takātsur/102: 3-5). Jika buktinya belum meyakinkan, namun kebenarannya lebih dominan, disebut ّظن) dhann/dugaan)/Q.S. al-Hujurāt/49: 12. Selanjutnya, jika kemungkinan benar dan salahnya seimbang disebut ّشك(syakk/keraguan). Sementara jika tidak didukung bukti, atau bukti tersebut lemah, sehingga kemungkinan salahnya lebih besar disebut وهم) wahm)."),
                    // const VoicePlay(),
                    const Terjemahan(
                        content:
                            "Dan sungguh, Kami telah memuliakan anak cucu Adam, dan Kami angkut mereka di darat dan di laut, dan Kami beri mereka rezeki dari yang baik-baik dan Kami lebihkan mereka di atas banyak makhluk yang Kami ciptakan dengan kelebihan yang sempurna.",
                        riwayat: " (Q.S. al-Isrā’/17: 70)"),
                    ParagrafWidget(
                        content:
                            "   Banyak ditemukan ayat Al-Qur’an yang berbicara tentang pengetahuan yang bersumber pada akal pikiran atau rasio. Perintah untuk menggunakan akal dengan berbagai macam bentuk kalimat dan ungkapan merupakan suatu indikasi yang jelas untuk hal ini. Tetapi, tidak sedikit paparan ayat-ayat yang mengungkap tentang pengetahuan yang bersumber pada intuisi (hati atau perasaan) terdalam"),
                    ParagrafWidget(
                        content:
                            "   Menata ulang cara berpikir, mendayagunakan akal, dan menimbang-nimbang sebuah problematika untuk mencari solusi dan menemukan kebenaran, menjadi hal yang niscaya. Itulah sebabnya, Islam menekankan agar akal pikiran harus dijaga betul, jangan sampai diperlemah, baik berasal dari faktor internal maupun eksternal, misalnya tidak mendayagunakan, karena faktor kemalasan; minim ikhtiar, apalagi mengkonsumsi minuman keras, narkoba atau zat adiktif lainnya."),
                    const Heading2(
                        title:
                            "3. Telaah Q.S. ar-Rahmān/55: 33 tentang Mencintai Iptek"),
                    const AktivitasWidget(
                        activityTitle: "Aktivitas 1.8",
                        contentText:
                            "Aktivitas Peserta Didik: /nPahami dan renungkan artikel berikut ini, sebagai bagian dari pemahaman dari materi ajar yang akan dipelajari!"),
                    Text(
                      "Ilmu dan Amal",
                      style: regular_paragraf.copyWith(
                          fontWeight: FontWeight.bold),
                    ),
                    ParagrafWidget(
                      content:
                          "Harus dipahami, bahwa ilmu itu yang pertama, setelah itu baru amal. Dokter harus berilmu dulu, sebelum praktik mengobati pasien. Ilmu yang benar melahirkan keselamatan. Ilmu yang salah, menjadi penyebab kegagalan, kehinaan, bahkan kehancuran. Berdasarkan Q.S. al-Hajj/22: 54 Allah Swt. menjelaskan, ‘’Ilmu itu harus dipandu oleh iman, agar jika terjadi keraguan dan kebimbangan, segera kembali kepada sistem keimanan. Sebab, kebenaran itu jelas dan nampak nyata, sebaliknya keburukan juga nyata dan semestinya dihindari",
                    ),
                    ParagrafWidget(
                        content:
                            "   Itu artinya, ilmu seiring dan sejalan dengan iman, dan dari iman, muncul ketundukan hati dan kepasrahan. Hal ini, sejalan dengan Q.S. Muhammad/47: 19 yang menjelaskan dengan nada perintah, ‘’fa’lam” yang berarti ketahulilah bahwa sesungguhnya tidak ada Tuhan, melainkan Allah, dan mintalah ampun bagi dosamu dan bagi orang-orang mukmin. Perhatikan kata ‘’fa’lam’’ didahulukan atas perintah beriman dan beramal."),
                    ParagrafWidget(
                      content:
                          "   Imam al-Bukhari dalam Hadisnya meletakkan bab yang berjudul ‘’Bābul ‘ilmi qablal qauli wal amal’’ (Bab ilmu sebelum perkataan dan perbuatan). Para ulama melihat ilmu sebagai syarat sahnya perkataan dan perbuatan. Banyak sekali orang ikhlas, tetapi karena kurangnya ilmu, mereka sering menganggap yang salah jadi benar, dan yang benar jadi salah, atau yang sunnah jadi bid’ah dan yang bid’ah jadi sunnah. ",
                    ),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(
                          style: regular_paragraf,
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  "   Anehnya, mereka tidak merasa salah, seperti kandungan Q.S. al-Kahfi/18: 103-104 ",
                            ),
                            TextSpan(
                                text:
                                    "“Katakanlah: Apakah akan Kami beritahukan kepadamu tentang orang-orang yang paling merugi dalam perbuatannya? Yaitu, orang-orang yang telah sia-sia perbuatannya dalam kehidupan dunia ini, sedangkan mereka menyangka bahwa mereka berbuat sebaik-baiknya.”",
                                style: TextStyle(fontStyle: FontStyle.italic)),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),

                    ParagrafWidget(
                        content:
                            "   Kita juga diingatkan oleh Q.S. Fāthir/35: 8 bahwa setan mudah memengaruhi orang-orang yang tidak berilmu, sehingga ia menganggap perbuatannya--sekalipun salah--menjadi benar, “Maka apakah orang yang ditipu itu menganggap baik pekerjaannya yang buruk, sehingga ia meyakini bahwa pekerjaannya itu baik?”."),
                    SizedBox(
                      height: 4,
                    ),

                    RichText(
                      text: TextSpan(
                        style: regular_paragraf,
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  "   Sebuah doa yang selalu kita panjatkan, "),
                          TextSpan(
                              text:
                                  "“Ya Allah tunjukkan kami bahwa yang benar itu benar, dan berilah kami kekuatan untuk mengikutinya, dan tunjukkan (juga) bahwa yang batil itu memang batil, dan berilah kami kekuatan untuk menjauhinya”. ",
                              style: TextStyle(fontStyle: FontStyle.italic))
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),

                    ParagrafWidget(
                        content:
                            "   Berdasarkan untaian doa tersebut, kita dibimbing untuk mendapatkan ilmu, lalu memohon kekuatan untuk mengamalkannya. Imam Al-Ghazali dalam bukunya Minhājul ‘Abidīn menyebutkan beberapa tangga yang harus ditempuh menuju Allah Swt., dan tangga pertama adalah ilmu. Khalifah Umar bin Abdul Aziz mengatakan bahwa perbuatan tanpa dibekali ilmu, hakikatnya merusak, bukan memperbaiki."),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "Diadaptasi dari sumber: Republika Online/Bunga Rampai 3",
                        style: regular_paragraf.copyWith(
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    Heading3(title: "a. Tilawah Q.S. ar-Rahmān/55: 33 "),
                    const AktivitasWidget(
                        activityTitle: "Aktivitas 1.9",
                        contentText:
                            "Mari membaca dengan fasih dan benar Q.S. ar-Rahmān/55: 33 berikut ini. Sesuaikan bacannya dengan menggunakan Ilmu Tajwid dan Makharijul huruf!"),
                    // const VoicePlay(),
                    const QuranWidget(
                        arab:
                            "يٰمَعْشَرَ الْجِنِّ وَالْاِنْسِ اِنِ اسْتَطَعْتُمْ اَنْ تَنْفُذُوْا مِنْ اَقْطَارِ السَّمٰوٰتِ وَالْاَرْضِ فَانْفُذُوْاۗ لَا تَنْفُذُوْنَ اِلَّا بِسُلْطٰنٍۚ   (الرحمن/٥٥ :٣٣)"),
                    const VoicePlay(
                        audioUrl:
                            "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F01%20ar-Rahman%2033.mp3?alt=media&token=1c0875e8-bc86-446d-bcb2-0c39269125f3"),
                    Heading3(title: "b. Mengidentifikasi Tajwid"),
                    const AktivitasWidget(
                      activityTitle: "Aktivitas 1.10",
                      contentText:
                          "Mari perhatikan dengan cermat teks Q.S. ar-Rahmān/55: 33. Buatlah kajian dari aspek ilmu tajwidnya. Berikut ini ada beberapa contoh, selanjutnya kembangkan untuk kalimat atau lafal yang lain dari ayat tersebut!",
                    ),
                    const TabelMengidentifikasiTajwidArRahman(),
                    Heading3(title: "c. Mengartikan Perkata"),
                    const AktivitasWidget(
                        activityTitle: "Aktivitas 1.11",
                        contentText:
                            "Coba cermati teks Q.S. ar-Rahmān/55: 33 kata per kata. Maknai dari kata atau lafal dari ayat tersebut yang belum ada artinya!"),
                    const TabelMengartikanPerkataArRahman(),
                    Heading3(title: "d. Menerjemahkan Ayat "),
                    const Terjemahan(
                        content:
                            "Wahai golongan jin dan manusia! Jika kalian sanggup menembus (melintasi) penjuru langit dan bumi, maka tembuslah. Kalian tidak akan mampu menembusnya, kecuali dengan kekuatan (dari Allah)",
                        riwayat: "(Q.S. ar-Rahmān/55: 33)."),
                    Heading3(title: "e. Asbabun Nuzul"),
                    ParagrafWidget(
                      content:
                          "Tidak ada sebab khusus tentang turunnya ayat ini, tetapi secara umum, seperti yang dipaparkan M. Quraish Shihab (Pakar Tafsir Indonesia) dalam karyanya berjudul Tafsir Al Mishbah, Surat ini diturunkan, karena tanggapan negatif kaum musyrik Makkah saat mereka diperintah untuk sujud kepada Allah yang ar-Rahmān.",
                    ),
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  '   Hal ini sejalan dengan Q.S. al-Furqān/25: 60 yang artinya adalah: ',
                              style: regular_paragraf),
                          TextSpan(
                            text:
                                '${"Dan apabila dikatakan kepada mereka: “Sujudlah kepada ar-Rahman,“ mereka menjawab: “Siapakah ar-Rahman itu?” "}',
                            style: regular_paragraf.copyWith(
                                fontStyle: FontStyle.italic),
                          ),
                          TextSpan(
                              text:
                                  ' Jika riwayat ini diterima, maka semakin jelas dan tepat jika Surat ini dinamai dengan nama yang populer tersebut. ',
                              style: regular_paragraf),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Heading3(title: "f. Isi dan Kandungan Ayat"),
                    ParagrafWidget(
                        content:
                            "Berikut ini, kandungan isi Q.S. ar-Rahmān/55: 33:"),
                    PerListParagraf(
                        number: 1,
                        content:
                            "Allah Swt. mengancam kepada jin dan manusia, bahwa kelak di akhirat mereka tidak bisa mengelak akan pertanggung jawaban dari semua nikmat yang sudah diberikan. Meskipun mereka berusaha lari ke segala penjuru langit dan bumi, Sementara langit dan bumi serta alam semesta ini dimiliki dan berada dalam kekuasaan Allah Swt. Jika tidak percaya, silakan menembus dan melintasi ke semua penjuru alam raya ini, pasti mereka tidak mampu melakukan."),
                    PerListParagraf(
                        number: 2,
                        content:
                            "Jika saat ini muncul kelompok manusia yang mampu melintasi beberapa planet di angkasa dengan kekuatan dan ilmu yang didapat, itu hanya seberapa, tidak sebanding dengan luasnya alam semesta, dan harus diingat agar menjadi kesadaran bersama, bahwa kecanggihan ilmu pengetahuan dan teknologi (iptek) harus semakin menumbuhkan kesadaran keimanan kepada Allah Swt. Itu artinya, semakin luas dan dalamnya ilmu yang dimiliki, hidupnya harus semakin dekat epada-Nya, bahwa semuanya merupakan nikmat yang pasti akan diminta pertanggung jawaban. "),
                    ImageParagraf(
                        screenWidth: screenWidth,
                        gambar: "Gambar1.7",
                        textGambar: "Gambar 1.7",
                        description:
                            "Hanya ilmu yang tinggi yang mampu menjelajahi ruang angkasa"),
                    PerListParagraf(
                        number: 3,
                        content:
                            "Didahulukan penyebutan jin baru manusia, karena jin lebih memiliki kemampuan menembus luar angkasa, begitu juga perannya di bumi, meski lebih terbatas (Q.S. Jin/72: 9). Sebaliknya, saat Allah Swt. memberi tantangan untuk membuat semisal Al-Qur’an (Q.S al-Isrā’: 88), penyebutan manusia lebih didahulukan dibanding jin. Hal ini disebabkan kemampuan manusia lebih tinggi dibanding jin, apalagi yang paling ingkar menolak Al-Qur’an adalah jenis manusia."),
                    PerListParagraf(
                        number: 4,
                        content:
                            "Sebagian ulama menjadikan ayat ini sebagai isyarat ilmiah bahwa kekuatan dan penguasaan ilmu menjadi hal yang mutlak dimiliki, jika ingin menjadi umat, golongan atau kelompok yang sukses merengkuh dunia, apalagi akhirat, dan Islam sangat menekankan tentang ilmu, baik ilmu dunia maupun ilmu akhirat. Seperi yang kita dapati sekarang ini, bahwa peradaban maju, pasti berbasis kepada ilmu, termasuk negara-negara maju, disebabkan kemampuan dan kemajuan di bidang ipteknya."),
                    PerListParagraf(
                        number: 5,
                        content:
                            "Harus dipahami bahwa majunya sebuah negara (sebut saja Singapura, Korea, Jepang, termasuk beberapa negara Eropa dan Amerika) disebabkan besarnya investasi pada kualitas manusia (sering disebut SDM), termasuk keberhasilan menjelajahi ruang angkasa. Itu semua membutuhkan dana yang tidak sedikit, termasuk kerjasama di pelbagai disiplin ilmu, bahkan antar negara, misalnya ilmu astronomi, teknik, matematika, seni, geologi dan lain-lain."),
                    const Heading2(
                        title:
                            "4. Telaah Hadis dan Penjelasan lain tentang Berpikir Kritis"),
                    Heading3(title: "a. Teks Hadis"),
                    const QuranWidget(
                        arab:
                            "سَمِعْتُ عَبْدَ اللّٰهِ بْنَ عَمْرِوبْنِ الْعَاصِ،يَقُولُ:سَمِعْتُ رَسُوْلَ اللّٰهِ صَلَّ اللّٰهُ عَلَيْهِ وَسَلَّمَ،يَقُولُ:إِنَّ اللّٰهَ لَايَقْبِضُ الْعِلْمَ انْتِزَاعًايَنْتَزِعُهُ مِنَ النَّاسِ وَلَكِنْ يَقْبِضُ الْعِلْمَ بِقَبْضِ الْعُلَمَ ءِحَتَّى إِذَالَمْ يَتْرُكْْ عَالِمًا اتَّخَذ انَّا سُ رُءُوسًاجُهَّا لًافَسُئِلُوافَأَفْتَوْابِغَيْرِعِالْمٍ فَضَلُّوْاوَأَضَلُّوْا(رواه مسلم)"),

                    Heading3(title: "b. Makna Kata Hadis"),
                    const TabelMaknaKataHadisIptek(),
                    Heading3(title: "c. Terjemah Hadis"),
                    const Terjemahan(
                        content:
                            "Diriwayatkan dari Abdullah bin Umar bin ‘Ash r.a. : “Aku mendengar Rasulullah Saw. bersabda: “Sesungguhnya, Allah tidak mencabut ilmu dengan melenyapkannya dari dada manusia, tetapi dengan mewafatkan ulama, sehingga setelah tidak ada seorang pun ulama, mereka manusia mengangkat orang-orang bodoh menjadi pemimpin. Mereka ditanya, tetapi mereka (pemimpin-pemimpin yang bodoh itu) memberikan petunjuk tanpa ilmu, kemudian tersesatlah mereka, dan menyesatkan orang lain pula.”",
                        riwayat: "(HR. Muslim)."),
                    Heading3(title: "d. Isi Kandungan Hadis"),
                    ParagrafList(idlist: isiKandunganHadisBerpikirKritis),
                    Heading3(title: "e. Penjelasan lebih luas tentang iptek"),
                    ParagrafWidget(
                        content:
                            "Memiliki semangat dan mencintai ilmu, seperti tema utama bahan ajar ini, ada baiknya kita hubungkan uraiannya dengan isi kandungan Q.S. al-‘Alaq/96: 1-5 yang terkenal dengan istilah Surat Iqra’, sebuah kata yang merupakan perintah Allah Swt. kepada manusia untuk membaca (mempelajari, meneliti, atau mengeksplorasi) yang obyeknya tidak disebutkan, namun jelas obyeknya tentang apa saja yang diciptakan oleh Allah Swt. baik ayat-ayat yang tersurat (qauliyah) maupun ayat-ayat yang tersirat, yakni alam semesta (kauniyah)."),
                    ParagrafWidget(
                        content:
                            "   Membaca, meneliti dan menuntut ilmu itu harus berlandaskan nama Allah Swt., sehingga terjadi keserasian hubungan antara pencinta ilmu dan Pemberi Ilmu, yakni Allah Swt. Artinya ridha-Nya yang didapatkan, dan dengan bertambahnya ilmu semakin mendekatkan dirinya (taqarrub) hanya kepada-Nya. Jika ini yang dilakukan, hasilnya tentu membawa kebaikan untuk semua dan terhindar dari ilmu yang membawa kerusakan dan kehancuran bagi manusia dan alam semesta."),
                    ParagrafWidget(
                        content:
                            "   Allah Swt. melalui Surat Iqra’ mengungkapkan bagaimana proses tahapan penciptaan manusia, yakni sebagai makhluk mulia yang melekat di dalam dirinya, dan diberi kesanggupan menguasai segala sesuatu yang ada di alam raya ini, serta menundukkannya untuk keperluan hidupnya melalui ilmu dimiliki."),
                    ParagrafWidget(
                        content:
                            "   Berkali-kali Allah Swt. memerintahkan kembali kepada manusia, khususnya umat Islam agar selalu membaca, karena bacaan tidak dapat melekat pada diri seseorang, kecuali dengan mengulang-ngulangi dan membiasakannya, maka seakan-akan perintah mengulangi bacaan itu berarti mengulang-ulangi bacaan yang dibaca dengan demikian isi bacaan itu menjadi satu dengan jiwa seseorang."),
                    ParagrafWidget(
                        content:
                            "   Melalui rangkaian ayat ini, Allah Swt. menerangkan bahwa membaca itu berkaitan dengan qalam (pena) sebagai alat untuk menulis, sehingga tulisan itu menjadi penghubung antar manusia walaupun mereka berjauhan tempat, sebagaimana mereka berhubungan dengan perantaraan lisan. Qalam sebagai benda padat yang tidak dapat bergerak dijadikan alat informasi dan komunikasi, sehingga dapat pula dijadikan sebagai sarana belajar dan mengajar."),
                    ImageParagraf(
                        screenWidth: screenWidth,
                        gambar: "Gambar1.8",
                        textGambar: "Gambar1.8",
                        description: "Buku merupakan jendela dunia"),

                    ParagrafWidget(
                        content:
                            "   Allah Swt. menyatakan bahwa manusia diajari untuk berkomunikasi dengan perantara qalam. Lalu pandai membaca yang memunculkan bermacammacam ilmu pengetahuan yang bermanfaat baginya yang menyebabkan dia lebih utama dibanding makhluk lain, sedangkan manusia pada permulaan hidupnya tidak mengetahui apa-apa. "),
                    ParagrafWidget(
                        content:
                            "   Melalui ayat-ayat ini, terbukti tingginya nilai membaca, menulis dan berilmu pengetahuan. Jika tidak karena qalam, niscaya banyak ilmu pengetahuan yang tidak terpelihara, penelitian yang tidak tercatat, dan banyak ajaran agama hilang, serta pengetahuan orang terdahulu tidak dapat dikenal oleh orang-orang sekarang."),
                    ParagrafWidget(
                        content:
                            "   Begitu pula tanpa qalam, tidak dapat diketahui sejarah orang-orang yang berbuat baik atau yang berbuat buruk, tidak ada pula ilmu pengetahuan yang menjadi pelita bagi orang-orang yang datang kemudian. Selain itu, melalui ayat-ayat ini menjadi bukti bahwa manusia yang berasal dari unsur yang mati dan awalnya belum berbentuk secara lengkap, akhirnya dijadikan Allah Swt. menjadi manusia yang sangat berguna dengan mengajarinya pandai membaca, menulis, dan berkomunikasi, serta mengetahui segala macam ilmu yang belum pernah diketahui dan dikenalnya. "),
                    const AktivitasWidget(
                        activityTitle: "Aktivitas 1.12",
                        contentText:
                            "Silakan baca berulang-ulang Q.S. Ali ‘Imrān/3: 190-191 dan Q.S. al-Rahmān/55: 33 menurut ilmu tajwid dan makharijul huruf sampai kalian hafal. Gunakan HP kalian atau media komunikasi lain untuk proses menghafal dengan mendengarkan berkali-kali dari tilawah sang qari’/qariah, lalu cocokkan dengan hafalan kalian.\n\nDemonstrasikan hasil hafalan kalian kepada teman kalian atau pihak lain (tutor/mentor) yang sudah mahir.\n\nPerhatikan aspek-aspek yang dinilai, antara lain: kesesuaian dengan ilmu tajwid, ketepatan makharijul huruf, dan kelancarannya."),
                    const Heading1(
                        numbering: "G", title: " Penerapan Karakter"),
                    ParagrafWidget(
                        content:
                            "Setelah menelaah materi Q.S. Ali ‘Imrān/3: 190-191 dan Q.S. al-Rahmān/55: 33, serta Hadis tentang berpikir kritis, ilmu pengetahuan dan teknologi, diharapkan peserta didik dapat membiasakan karakter dalam kehidupan sehari-hari, sebagai berikut."),
                    TabelPenerapanKarakterWidget(
                        idlist: tabelPenerapanKarakter),
                    const Heading1(numbering: "H", title: "Refleksi"),
                    Refleksi(
                        content:
                            "Memiliki semangat untuk mencintai ilmu pengetahuan dan teknologi, mutlak dimiliki generasi muslim. Jika mengacu kepada Q.S. al-‘Alaq/96: 1-5 yang terkenal dengan sebutan Surat Iqra’, kita diajak dan dibimbing untuk untuk membaca, mempelajari, meneliti, atau mengeksplorasi obyeknya tidak disebutkan. Coba pikirkan, kenapa tidak disebutkan obyeknya. Cari jawabannya melalui buku-buku tafsir yang ada (minimal 3 buku tafsir). Setiap jawaban harus disertai rujukan yang jelas (Nama dan cover buku tafsirnya, dan jawabannya di halaman berapa?)"),
                    const RangkumanBab1(),
                    const Heading1(numbering: "J", title: "Penilaian"),

                    TabelPanilaianSikap(idlist: tabelPenSikap1),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 4),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: black),
                          color: const Color(0xFFF3F3F4),
                          borderRadius: BorderRadius.circular(2)),
                      height: 280, // Atur// Atur tinggi sesuai kebutuhan
                      child: PilihanGandaSoal(daftarSoal: pilihanGanda),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Jawablah pertanyaan berikut dengan singkat dan benar!",
                      style: semiBold.copyWith(fontSize: 10),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    ParagrafList(idlist: soalUraianBab1),
                    const Heading2(title: "3. Penilaian Keterampilan"),
                    Heading3(title: "a. Penilaian Proyek"),
                    const AktivitasWidget(
                        activityTitle: "Aktivitas 1.13",
                        contentText:
                            "Ini kerja pribadi, bukan kelompok. Perintahnya adalah buatlah kaligrafi dari Q.S. Ali ‘Imran/3: 190, dan 191, atau Q.S. ar-Rahman/55: 33. Silakan dipilih ayatnya, setiap peserta didik hanya milih 1 (satu) ayat saja dari 3 (tiga) pilihan yang ada. Dibuat di kertas ukuran A4, pekan depan dikumpulkan."),
                    Heading3(title: "b. Penilaian Praktik"),
                    const BorderBlack(
                        content:
                            "Kelompok: \nKelas dibagi 5 kelompok, sesuai dengan Penilaian Proyek yang sudah dilaksanakan. Lalu setiap kelompok menilai kaligrafi yang dibuat oleh masing-masing peserta didik. Penilaian harus berdasarkan kesepakatan seluruh anggota di kelompok tersebut, berdasarkan kriteria yang dijelaskan oleh GPAI. Buat rekap nilainya dengan benar. Hasilnya diserahkan kepada GPAI.\n\nIndividual:\nSetiap kelas ada 1 peserta didik (sebagai Juara 1) yang memperagakan pembuatan dasar-dasar pembuatan kaligrafi. Sementara itu, GPAI bersama peserta didik lainnya memberikan tanggapan dan penilaian."),
                    Heading3(title: "c. Penilaian Portofolio"),
                    const BorderBlack(
                        content:
                            "Tuliskanlah semua aktivitas keagamaan kalian, baik di sekolah, rumah, maupun masyarakat pada buku Penilaian Pendidikan Agama Islam dan Budi Pekerti!"),
                    const Heading1(numbering: "K", title: "Pengayaan"),
                    ParagrafWidget(content: "Perhatikan Tugas berikut ini!"),
                    ParagrafList(idlist: pengayaanBab1),
                    const Pembatas(),
                  ],
                ),
              ],
            );
          } else {
            return const CircularProgressIndicator();
            // Handle jika ada nilai null
          }

          ////
        },
      ),
    );
  }
}
