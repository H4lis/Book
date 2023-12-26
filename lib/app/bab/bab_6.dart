import 'package:book/app/data/bab_1_model/paragralistcostum2.dart';
import 'package:book/app/widgets/app_bar_widget.dart';
import 'package:book/app/widgets/heading_2.dart';
import 'package:book/app/widgets/heading_3.dart';
import 'package:book/app/widgets/paragraf_list_abjad.dart';
import 'package:book/app/widgets/paragraf_list_costum.dart';
import 'package:book/app/widgets/tabel_hukum_bacaan.dart';
import 'package:book/app/widgets/terjemahan_perkata2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../assingnment/p_pengetahuan_6.dart';
import '../assingnment/p_sikap_5.dart';
import '../assingnment/p_sikap_6.dart';
import '../data/bab_1_model/tabel_penilaian_sikap_d.dart';
import '../data/bab_2_model/tadabbur_model.dart';
import '../data/bab_5_model/list_paragraf_5.dart';
import '../data/bab_6_model/list_paragraf_6.dart';
import '../data/kata_kunci.dart';
import '../data/pilihan_ganda.dart';
import '../data/tabel_penerapan_karakter.dart';
import '../modules/SideMenu/views/side_menu_view.dart';
import '../shared/constant.dart';
import '../widgets/aktivitas_widget.dart';
import '../widgets/bab_1_widget/pilihanganda.dart';
import '../widgets/bab_1_widget/tabel_penilaian_sikap_atas.dart';
import '../widgets/bulled_list.dart';
import '../widgets/heading_1.dart';
import '../widgets/image_paragraf.dart';
import '../widgets/jawablah.dart';
import '../widgets/list_paragraf.dart';
import '../widgets/paragraf_italic.dart';
import '../widgets/paragraf_widget.dart';
import '../widgets/pembatas.dart';
import '../widgets/refleksi.dart';
import '../widgets/sampul_bab.dart';
import '../widgets/sub_bab.dart';
import '../widgets/tabel_penerapan_karakter.dart';
import '../widgets/tadabbur.dart';
import '../widgets/terjemahan_prakata.dart';
import '../widgets/terjemahan_widget.dart';
import '../widgets/quran_widget.dart';
import '../widgets/voice_play.dart';

class Bab6 extends StatelessWidget {
  Bab6({super.key});
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'Y7nyGdbIVz8',
      flags: YoutubePlayerFlags(autoPlay: false));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenuView(),
      appBar: const AppBarWidget(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          const SampulBab(
              title: "Bab 6",
              contentImage: "bab_6",
              description:
                  "Menguatkan Kerukunan melalui Toleransi dan Memelihara Kehidupan Manusia"),
          const ATujuan(),
          ParagrafWidget(
              content: "Dalam bab ini, tujuan pembelajarannya adalah:"),
          ParagrafList(idlist: tujPem6),
          BKata(),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: bagroundDarkOrange,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 3,
                          width: 3,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: black),
                        ),
                        Text(
                          "  ${kataKunciBab6[0].textContent}",
                          style: regular_paragraf,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: 3,
                          width: 3,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: black),
                        ),
                        Text(
                          "  ${kataKunciBab6[1].textContent}",
                          style: regular_paragraf,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              height: 3,
                              width: 3,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: black),
                            ),
                          ],
                        ),
                        Text(
                          "  ${kataKunciBab6[2].textContent}",
                          style: regular_paragraf,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 3,
                          width: 3,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: black),
                        ),
                        Text(
                          "  ${kataKunciBab6[3].textContent}",
                          style: regular_paragraf,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: 3,
                          width: 3,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: black),
                        ),
                        Text(
                          "  ${kataKunciBab6[4].textContent}",
                          style: regular_paragraf,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              height: 3,
                              width: 3,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: black),
                            ),
                          ],
                        ),
                        Text(
                          "  ${kataKunciBab6[5].textContent}",
                          style: regular_paragraf,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              height: 3,
                              width: 3,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: black),
                            ),
                          ],
                        ),
                        Text(
                          "  ${kataKunciBab6[6].textContent}",
                          style: regular_paragraf,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: 3,
                          width: 3,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: black),
                        ),
                        Text(
                          "  ${kataKunciBab6[7].textContent}",
                          style: regular_paragraf,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 3,
                          width: 3,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent),
                        ),
                        Text(
                          "  ${kataKunciBab6[8].textContent}",
                          style: regular_paragraf,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          CInfo(),
          Image.asset(
            "assets/images/infografis6.png",
          ),
          SizedBox(
            height: 20,
          ),
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            onReady: () {},
          ),
          const Heading1(numbering: "D", title: "Tadabbur"),
          Tadabbur(idlist: tadabbur6),
          const AktivitasWidget(
              activityTitle: "Aktivitas 6.1",
              contentText:
                  "Dari gambar 6.1 dan 6.2 di atas, bagaimana hubungannya dengan toleransi? Dari gambar 6.3 dan 6.4 di atas, bagaimana hubungannya dengan memelihara kehidupan manusia?"),
          const Heading1(numbering: "E", title: "Kisah Inspiratif"),
          ParagrafWidget(content: "Perhatikan bacaan di bawah ini!"),
          Container(
            margin: EdgeInsets.only(top: 4),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bagroundDarkOrange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Toleransi dalam Lintasan Sejarah Muslim",
                    style: h1.copyWith(
                      color: orange,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                ParagrafWidget(
                    content:
                        "   Masyarakat di Madinah pada zaman Nabi Muhammad Saw. adalah multietnis dan multiagama. Masyarakat ini kemudian disatukan dalam sebuah wadah negara dan konstitusi yang dikenal dengan piagam Madinah. Piagam Madinah memberikan kebebasan beragama sesuai dengan ajaran masing-masing. Rasulullah Saw. berusaha menegakkan keadilan kepada semua komunitas etnis dan agama yang ada, sehingga tercipta suasana kedamaian dan ketenteraman. Selain itu, di dalamnya berisi aturan-aturan berkenaan dengan orang-orang Muhajirin, Anshar, dan Yahudi yang bersedia hidup berdampingan dengan kaum muslim. Penghargaan terhadap keberadaan komunitas etnis dan pemeluk agama yang ada di Madinah, merupakan salah satu indikator adanya masyarakat yang harmonis, penuh pengertian, damai, dan sejahtera."),
                ParagrafWidget(
                  content:
                      "   Pada masa khalifah Abu Bakar al-Shidiq dan Umar bin Khathab, usaha menegakkannya terus dilakukan. Bahkan kedua sahabat besar ini yang sebelum muslim merupakan orang yang terpandang dan terhormat dari sosial dan ekonomi. Dalam satu riwayat disebutkan, ketika Abu Bakar al-Shidiq menjadi khalifah, ia menjadi miskin. Untuk menutupi kehidupannya, ia berusaha bekerja sendiri dengan berjualan di salah satu pasar yang ada di kota Madinah. Harta dan kekayaannya digunakan untuk melakukan gerakan keagamaan agar masyarakat terhindar dari kemiskinan dan ketidakadilan.",
                ),
                ParagrafWidget(
                    content:
                        "   Melihat kenyataan ini Umar bin Khathab menegur dan meminta Abu Bakar al-Shidiq mengambil sebagian kecil dari harta yang tersimpan di Bait al-Mal, karena ia juga sebenarnya mempunyai hak di situ. Tetapi Abu Bakar al-Shidiq tidak mau, bahkan berkata: “Dia akan sangat tersiksa apabila melihat umat dan masyarakat yang berada di bawah kepemimpinannya sengsara. Ia tidak mau memikul beban dosa yang begitu besar nanti.”"),
                ParagrafWidget(
                    content:
                        "   Kenyataan sejarah tersebut dapat dipahami bahwa keadilan dan pengakuan terhadap hak-hak orang lain, merupakan salah satu bentuk dakwah yang sebenarnya menuju masyarakat madani. Islam mengajarkan nilai-nilai keadilan (‘adalah), amanah, dan toleransi (tasamuh). Nilai-nilai inilah yang semestinya dikembangkan oleh penganut agama yang baik dalam kehidupan bermasyarakat, berbangsa,dan bernegara."),
                ParagrafItalic(
                  content:
                      "Sumber: disarikan dari Buku Deradikalisasi Pemahahaman al-Qur’an dan Hadis yang ditulis oleh Prof. Dr. H. Nasarudin Umar, MA (2014: 360-364)",
                ),
              ],
            ),
          ),
          AktivitasWidget(
              activityTitle: "Aktivitas 6.2",
              contentText:
                  "Dari bacaan di atas, buatlah tiga kata kunci dan jelaskan maksudnya!"),
          const Heading1(numbering: "F", title: "Wawasan Keislaman"),
          ParagrafWidget(
              content:
                  "Ada yang tahu pengertian toleransi? Mengapa manusia perlu sikap toleran dan memelihara kehidupan manusia? Untuk mendalami materi tersebut, silahkan kalian pelajari materi ini dengan baik sampai selesai ya. Pada pembahasan materi ini, fokusnya adalah Q.S. Yūnus /10 : 40-41 serta Hadis tentang toleransi dan Q.S. al-Māidah/5: 32 serta Hadis tentang memelihara kehidupan manusia."),
          Heading2(title: "1. Mengkaji Q.S. Yūnus/10: 40-41 tentang toleransi"),
          ParagrafWidget(
              content:
                  "Dalam mengkaji Q.S. Yūnus/10: 40-41 ada enam tahapan yang kalian akan lakukan, yaitu: pertama, membaca. Kedua, mengidentifikasi tajwid. Ketiga, mengartikan perkata. Keempat, menerjemahkan ayat. Kelima, menganalisis isi. Keenam, penerapan Q.S. Yūnus/10: 40-41. Mari bersama membahas satu persatu."),
          Heading3(title: "a. Membaca Q.S. Yūnus/10 : 40-41 dengan tartil"),
          ParagrafWidget(
              content:
                  "Perhatikan teks lengkap Q.S. Yūnus/10 : 40-41 di bawah ini!"),
          QuranWidget(
              arab:
                  "وَمِنۡهُم مَّن يُؤۡمِنُ بِهِۦ وَمِنۡهُم مَّن لَّا يُؤۡمِنُ بِهِۦۚ وَرَبُّكَ أَعۡلَمُ بِٱلۡمُفۡسِدِينَ  ٤٠  وَإِن كَذَّبُوكَ فَقُل لِّي عَمَلِي وَلَكُمۡ عَمَلُكُمۡۖ أَنتُم بَرِيٓ‍ُٔونَ مِمَّآ أَعۡمَلُ وَأَنَا۠ بَرِيٓءٞ مِّمَّا تَعۡمَلُونَ   (يونس/٠ا: ا٤ ـ٤٠)  "),
          VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F05%20surah-yunus%2040-41.mp3?alt=media&token=01d628b7-912d-45a9-90d3-fc91e247e618"),
          AktivitasWidget(
              activityTitle: "Aktivitas 6.3",
              contentText:
                  "Bacalah Q.S. Yūnus/10 : 40-41 dengan tartil. Cara membacanya adalah dengan berpasangan bersama teman kalian satu meja! Apabila jumlah siswa ganjil, maka kelompok terakhir jumlahnya tiga. Satu siswa membaca, sedangkan temannya menyimak. Apabila ada bacaan yang kurang tepat, temannya mengingatkan. Setelah selesai, bergantian membaca dan menyimak."),
          Heading3(
              title: "b. Mengidentifikasi Tajwid dalam Q.S. Yūnus /10 : 40-41"),
          ParagrafWidget(
              content:
                  "Setelah membaca dengan tartil, mari mengidentifikasi tajwid dalam Q.S. Yūnus /10 : 40-41. Identifikasi tajwid ini merupakan penerapan materi tajwid yang pernah kalian pelajari pada kelas sebelumnya. Perhatikan petunjuk mengerjakannya yang ada kotak di bawah ini!"),
          AktivitasWidget(
              activityTitle: "Aktivitas 6.4",
              contentText:
                  "Isilah titik-titik pada tabel dibawah ini, yaitu pada kolom hukum bacaan dan alasan sebagaimana seperti di contoh."),
          TabelHukumBacaanWidget(idlist: hukumBacaan),
          Heading3(title: "c. Mengartikan Perkata Q.S. Yūnus /10 : 40-41"),
          ParagrafWidget(
              content:
                  "Sebelum menerjemahkan Q.S. Yūnus/10: 40-41 secara utuh, lebih baik kalian memahami arti perkatanya terlebih dahulu. Dengan memahami terjemahan perkata, kalian akan belajar Bahasa Arab sekaligus. Adapun arti perkata dalam Q.S. Yūnus /10 : 40-41 adalah:"),
          TerjemahanPerkataWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: bagroundGreen,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Ingat",
                    style: regular_paragraf.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: bagroundGreenLight,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Alhamdulilah dari tabel di atas, kalian secara tidak langsung belajar mengenal 22 mufradāt (kosa kata) baru dalam bahasa Arab sekaligus memahami bahasa al-Qur’an. Sebenarnya jumlahnya lebih dari itu, tapi karena ada sekitar 8 mufradāt yang diulang, sehingga tidak ditulis dalam tabel di atas. Apabila hafal kosa kata di atas, insyā' Allah kalian akan mudah menerjemahkan Q.S. Yūnus/10:40-41.",
                    style: regular_paragraf,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Heading3(title: "d. Menerjemahkan Q.S. Yūnus/10:40-41"),
          ParagrafWidget(
              content:
                  "Di bawah ini adalah terjemahan lengkap Q.S. Yūnus/10:40:"),
          ParagrafItalic(
              content:
                  "“Dan di antara mereka ada orang-orang yang beriman kepadanya (al-Qur’an), dan di antaranya ada (pula) orang-orang yang tidak beriman kepadanya. Sedangkan Tuhanmu lebih mengetahui tentang orang-orang yang berbuat kerusakan.”"),
          ParagrafWidget(
              content: "Sedangkan terjemahan lengkap Q.S. Yūnus/10:41 adalah:"),
          ParagrafItalic(
              content:
                  "“Dan jika mereka (tetap) mendustakanmu (Muhammad), maka katakanlah, “Bagiku pekerjaanku dan bagimu pekerjaanmu. Kamu tidak bertanggung jawab terhadap apa yang aku kerjakan dan aku pun tidak bertanggung jawab terhadap apa yang kamu kerjakan.” "),
          AktivitasWidget(
              activityTitle: "Aktivitas 6.5",
              contentText:
                  "Silahkan kalian menerjemahkan Q.S. Yūnus /10 : 40-41. Caranya mengartikan per kata dalam ayat 40 terlebih dahulu, setelah itu menerjemahkan satu ayat penuh. Kemudian lanjutkan untuk menerjemahkan ayat 41 dengan cara seperti ayat sebelumnya. "),
          Heading3(
              title:
                  "e. Penjelasan Isi Q.S. Yūnus /10 : 40-41 serta hadis terkait tentang toleransi"),
          ParagrafWidget(content: "1) Penjelasan Tafsir"),
          ParagrafWidget(
              content:
                  "Menurut Jalāluddin Muhammad bin Ahmad al-Mahali dan Jalāluddin ‘Abdurrahman bin Abu Bakar al-Suyuthi dalam Kitab Tafsir al-Jalalain, bahwa Q.S. Yūnus/10: 40 menjelaskan tentang penduduk Makkah pada masa Nabi Muhammad Saw. terbagi menjadi dua kelompok, yaitu: Pertama, orang-orang yang beriman kepada al-Qur’an; Kedua, orang-orang yang tidak beriman selamanya. "),
          ParagrafWidget(
              content:
                  "   Kemudian maksud kata وَمِنْهُمْ dan diantara mereka), menurut pakar tafsir, Prof. Dr. H. M. Quraish Shihab menjelaskan di antara kaum musyrikin, ada orang yang percaya kepadanya, tetapi menolak kebenaran al-Qur’an karena keras kepala dan demi mempertahankan kedudukan sosial mereka. Selain itu diantara mereka ada juga memang benar-benar lahir dan batin tidak percaya kepadanya serta enggan memerhatikannya karena hati mereka telah terkunci. Tuhanmu Pemelihara dan Pembimbingmu, wahai Muhammad, lebih mengetahui tentang para perusak yang telah mendarah daging dalam jiwanya yang sedikitpun tidak menerima kebenaran tuntunan ilahi."),
          ParagrafWidget(
              content:
                  "   Sedangkan maksud dari وَرَبُّكَ اَعْلَمُ بِالْمُفْسِدِيْنَ (sedangkan Tuhanmu lebih mengetahui orang-orang yang membuat kerusakan). Menurut Ibnu ‘Asyur kalimat ini merupakan peringatan sekaligus ancaman bagi kelompok yang tidak beriman. Sementara itu, Ibnu Katsir berpendapat bahwa Allah Swt. lebih mengetahui siapa yang akan mendapat hidayah dan siapa yang memilih kesesatan. Sedangkan menurut al-Maraghi menjelaskan bahwa Allah Swt. paling mengetahui kerusakan yang mereka perbuat dengan perbuatan syirik, dzalim dan melampaui batas. Allah Swt. akan memberikan balasan kepada mereka di dunia dan akhirat, serta menolong Nabi dan umatnya yang beriman."),
          ParagrafWidget(
              content:
                  "   Dalam menyikapi kelompok kedua tersebut (orang yang tetap dalam kekufuran) Allah Swt. memerintahkan Nabi menyampaikan kepada mereka bahwa Nabi telah menyampaikan ajaran-Nya melalui kabar gembira dan peringatan Nabi tidak dapat memaksa mereka untuk beriman, dan apapun balasan dari perbuatan mereka akan ditanggung oleh mereka sendiri. Menurut al-Sya’rawi ayat ini menunjukkan kepada kita bahwa sesungguhnya keimanan adalah perbuatan hati, bukan perbuatan yang dzahir, maka kita tidak bisa mengetahui apa yang ada di hati seseorang. Oleh karena itu di akhir ayat 40, Allah Swt. menegaskan Dialah yang lebih mengetahui perbuatan orang-orang yang berbuat kerusakan dengan tidak beriman dan mendustakan ajaran Nabi Muhammad Saw. "),
          ParagrafWidget(
              content:
                  "   Ayat ini juga diturunkan untuk menghibur Nabi dari sikap orang yang tidak mau beriman kepada ajaran-Nya. Allah Swt. mengetahui bahwa Nabi telah melaksanakan tugas menyampaikan ajaran Islam dengan baik kepada umatnya. Oleh karena itu, pada ayat 41 Allah Swt. menegaskan bahwa Nabi dan umat yang beriman tidak akan dimintai pertanggungjawaban atas kedurhakaan umat yang tidak mau beriman. Kelak di akhirat Allah Swt. akan memberikan balasan kepada orang yang tidak beriman, karena setiap manusia akan mempertanggungjawabkan perbuatannya."),
          AktivitasWidget(
              activityTitle: "Aktivitas 6.6 ",
              contentText:
                  "Carilah penjelasan Q.S. Yūnus /10 : 40-41 dari Kitab tafsir karya ulama’ dari Indonesia selain yang sudah dijelaskan di atas. "),
          ParagrafWidget(
              content:
                  "2) Q.S. Yūnus /10 : 40-41 dan Hubungannya dengan Toleransi Dari penjelasan tafsir di atas, Q.S. Yūnus/10: 40-14 erat kaitannya  dengan toleransi. Sebelum membahas kaitan antara keduanya, alangkah baiknya, kalian mengetahui maksud toleransi, mengapa toleransi penting bagi umat manusia? "),
          Heading3(title: "Pengertian toleransi"),
          ParagrafWidget(
              content:
                  "Dalam Kamus Besar Bahasa Indonesia, toleransi artinya sifat toleran; batas ukur untuk penambahan atau pengurangan yang masih diperbolehkan. Sifat toleran di sini maksudnya bersifat atau bersikap menenggang (menghargai, membiarkan, membolehkan) pendirian (pendapat, pandangan, kepercayaan, kebiasaan, kelakuan, dan sebagainya) yang berbeda atau bertentangan dengan pendirian sendiri. Sedangkan dalam Bahasa Inggris disebut dengan kata tolerance yang berarti toleransi, kesabaran, dan kelapangan dada."),
          ParagrafWidget(
              content:
                  "   Sedangkan toleransi dalam bahasa Arab sebagaimana dalam Mu‘jam Maqayis al-Lughah disebut dengan istilah tasamuh. Kata tasamuh adalah bentukan dari kata samaha, yang secara bahasa berarti lembut dan mudah. Sedangkan menurut Dr. KH. Ahsin Sakho Muhammad, tasamuh berarti berkisar antara kemurahan hati, mudah memaafkan, lapang dada, kesabaran, ketahanan emosional, menenggang rasa, menghargai, dan sebagainya. Selain tasamuh, toleransi dalam Bahasa arab disebut dengan kata alsamhah. Menurut Ibnu Manzhur dalam Lisan al-‘Arab, samhah berarti tidak menyusahkan dan tidak memberatkan. Berdasarkan hal tersebut samhah sama dengan moderat, yakni berada di pertengahan, tidak condong pada salah satu sisi. Kemoderatannya ditunjukkan dengan ajaran Islam yang mudah, tidak menyusahkan dan memberatkan umatnya."),
          ParagrafWidget(
              content:
                  "   Dari pengertian tersebut kata kunci dari toleransi adalah menghargai orang lain yang berbeda baik pendapat, kepercayaan, kebiasaan, dan sebagainya dengan pendirian sendiri. Orang yang toleran adalah orang yang memiliki kesabaran, kelapangan dada, dan daya tahan."),
          ParagrafWidget(
              content:
                  "   Sedangkan dasar toleransi dalam Islam, sebagaimana hadis Nabi Muhammad Saw. berikut."),
          QuranWidget(
              arab:
                  "عَنِ ابْنِ عَبَّاسٍ قَالَ : قِيْلَ لِرَسُوْلِ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : أَيُّ الْأَدْيَانِ أَحَبُّ إِلَ اللهِ قَالَ : اَلْحَنِيْفِيَّةُ السَّمْحَةُ (رواه احمد)"),
          Terjemahan(
            content:
                "“Dari Ibnu ‘Abbas, ia mengatakan seseorang bertanya kepada Nabi, ajaran agama Islam apakah yang paling dicintai Allah? Rasulullah menjawab: ajaran yang al-hanifiyyah dan al-samhah.”",
            riwayat: "(H.R. Ahmad)",
          ),
          ParagrafWidget(
              content:
                  "   Dari Hadis tersebut, para ulama menjelaskan bahwa dari sekian banyak ajaran agama Islam, yang paling dicintai Allah adalah ajaran al-hanifiyyah dan al-samhah. Maksud al-hanifiyyah adalah ajaran kebaikan yang jauh dari keburukan atau kebatilan. Sedangkan al-samhah (toleran) adalah perilaku yang memudahkan, tidak mengandung ajaran yang memaksa atau memberatkan umatnya. Al-Samhah dibangun di atas prinsip kemudahan, berdasarkan firman Allah Swt.: “Dan Dia tidak menjadikan kesukaran bagi kalian dalam agama ini…” (Q.S. al-Hajj: 78)."),
          Heading3(title: "Contoh-Contoh Sikap Toleransi"),
          ParagrafWidget(
              content:
                  "Untuk memantabkan pemahaman bahwa Islam mengajarkan tentang toleransi, silahkan kalian perhatikan contoh sikap toleransi yang dilakukan Nabi Muhammad Saw. dan ulama’ di Indonesia. Secara umum, dalam contoh ini dibagi menjadi dua, yaitu toleransi internal (sesama umat Islam) dan eksternal (antarumat beragama) yang dijelaskan sebagai berikut. "),
          ParagrafWidget(content: "a) Toleransi internal umat Islam"),
          ParagrafWidget(
              content:
                  "Contoh toleransi untuk sesama umat Islam, sebagaimana dalam hadis Nabi Muhammad Saw."),
          QuranWidget(
              arab:
                  "عَنْ أَبِي مَسْعُوْدٍ الأَنْصَارِيِّ قَالَ: قَالَ رَجُلٌ يَا رَسُوْلَ اللهِ لاَ أَكَادُ أُدْرِكُ الصَّلَاةَ مِمَّا يُطَوِّلُ بِنَا فُلَانٌ فَمَا رَأَيْتُ النَّبِيَّ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ فِي مَوْعِظَةٍ أَشَدَّ غَضَبًا مِنْ يَوْمِئِذٍ فَقَالَ: أَيُّهَا النَّاسُ إِنَّكُمْ مُنَفِّرُوْنَ فَمَنْ صَلَّى بِالنَّاسِ فَلْيُخَفِّفْ فَإِنَّ فِيْهِمُ الْمَرِيْضَ وَالضَّعِيْفَ وَذَا الحَاجَةِ (رواه البخاري)"),
          Terjemahan(
              content:
                  "“Diceritakan dari Abi Mas’ud al-Anshari, bahwa seorang sahabat bertanya: “Wahai Rasulullah, aku hampir tidak sanggup shalat yang dipimpin seseorang dengan bacaannya yang panjang.” Maka aku belum pernah melihat Nabi Saw memberi peringatan dengan lebih marah dari yang disampaikannya hari itu seraya bersabda: “Wahai manusia, kalian membuat orang lari menjauh. Maka barangsiapa shalat mengimami orang-orang ringankanlah (tidak melamakan) shalatnya. Karena di antara mereka ada orang sakit, orang lemah dan orang yang punya keperluan.”",
              riwayat: " (H.R. Al-Bukhāri)."),
          ParagrafWidget(
              content:
                  "   Hadis tersebut menurut Ahmad bin ‘Ali bin Hajar al-‘Asqalani bercerita tentang sahabat yang menjadi imam dan memanjangkan shalatnya (menurut sebagian ulama adalah Mu’adz bin Jabal), sehingga salah satu sahabat (menurut sebagian ulama adalah Hazm bin Ubay bin Ka’ab) melaporkan kejadian tersebut kepada Nabi Muhammad Saw. Hazm menceritakan bahwa karena panjangnya shalat Mu’adz, ia enggan mengikuti jama’ah, dan terkadang mengikuti shalat jama’ah tidak dari awal."),
          ParagrafWidget(
              content:
                  "   Mendengar aduan Hazm, Nabi sangat marah. Kemarahan Nabi disebabkan sebelumnya sudah ada kejadian yang serupa. Menurut sebagian ulama Nabi menampakkan kemarahannya agar para sahabat memperhatikan penjelasan Nabi sehingga kejadian tersebut tidak terulang lagi. Nabi menjelaskan bahwa yang dilakukan Mu’adz dan sahabat lain yang memanjangkan shalat ketika menjadi imam dapat menimbulkan fitnah, menjauhkan orang-orang dari agama. Kemudian Nabi memberikan panduan bagi sahabat yang akan menjadi imam, bahwa hendaknya para imam meringankan shalatnya (tidak memanjangkan shalat), karena kondisi para makmum berbeda-beda, ada yang lemah, seperti orang yang telah tua, sedang sakit, mempunyai kondisi fisik yang berbeda dari orang pada umumnya, ataupun orang yang sedang mempunyai hajat/kebutuhan lain. "),
          ParagrafWidget(
              content:
                  "   Marahnya Nabi Saw bukan karena haramnya memanjangkan shalat, tetapi karena melihat kondisi makmum yang berbeda-beda. sesungguhnya Nabi menghendaki kasih sayang dan kemudahan bagi kaumnya. Ini adalah ketentuan seseorang ketika menjadi imam. Berbeda ketika seseorang melaksanakan shalat secara munfarid (tidak berjama’ah), maka Nabi menyampaikan dalam hadis lain seseorang dipersilakan memanjangkan shalat sesuai yang dia inginkan."),
          ParagrafWidget(
              content:
                  "   Contoh sikap toleransi lain adalah yang dilakukan ulama Indonesia KH. Hasyim Asy’ari dan KH. Abdullah Faqih Maskumambang. KH. Hasyim Asy’ari menggunakan bedug di masjid Pesantren Tebuireng. Hal ini bertentangan dengan pendapat KH. Abdullah Faqih Maskumambang Gresik yang tidak menggunakan bedug di masjid pondoknya, namun menggunakan kentongan. Saat Kiai Hasyim berkunjung ke Kiai Maskumambang, Kiai Faqih yang berbeda pendapat dengan Kiai Hasyim justru memerintahkan kepada pengurus mushalla dan masjid di sekitar Maskumambang untuk sementara mengganti kentongan yang ada dengan bedug. Begitu pula dengan sebaliknya saat kiai tersebut berkunjung ke Tebuireng."),
          ParagrafWidget(content: "b) Toleransi antarumat beragama"),
          ParagrafWidget(
              content:
                  "Adapun tuntunan agama tentang toleransi antarumat beragama dapat ditemukan Q.S. al-Mumtahanah ayat 8 berikut ini:"),
          ParagrafItalic(
              content:
                  "“Allah tidak melarang kamu berbuat baik dan berlaku adil terhadap orang-orang yang tidak memerangimu dalam urusan agama dan tidak mengusir kamu dari kampung halamanmu. Sesungguhnya Allah mencintai orang-orang yang berlaku adil.” (Q.S. al-Mumtahanah/60: 8)."),
          ParagrafWidget(
              content:
                  "   Dalam ayat tersebut, Allah Swt. menegaskan tidak melarang berbuat baik dan berlaku adil kepada orang-orang yang berbeda agama yang tidak memerangi dan tidak mengusir dari tempat tinggal. Melalui ayat ini, Allah Swt. ingin menghilangkan keraguan umat muslim dalam kaitannya hubungan mereka dengan orang kafir yang tidak memerangi dalam hal agama dan mengusir umat muslim dari tempat tinggal mereka. "),
          ParagrafWidget(
              content:
                  "   Dengan demikian, dalam hubungan sosial seorang muslim juga dapat menjalin hubungan baik dengan orang nonmuslim. Dalam ayat ini mengajarkan agar umat muslim dapat berbuat baik dan memberikan keadilan kepada mereka. Inilah tuntunan yang diajarkan al-Qur’an dalam kaitannya membangun toleransi, saling menghargai antarumat beragama dalam kehidupan sosial kemasyarakatan."),
          ParagrafWidget(
              content:
                  "   Contoh sikap toleransi yang dilakukan Nabi Muhammad Saw. kepada nonmuslim tertuang dalam Hadis, yaitu."),
          QuranWidget(
              arab:
                  "عَنْ أَبِي هُرَيْرَةَ رَضِيَ اللهُ عَنْهُ،  قَالَ : جَاءَالطَّفَيْلُ بْنُ عَمْرٍوإِلَى النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ فَقَالَ: إِنَّ دَوْسًا  قَدْ هَلَكَتْ عَصَتْ وَأَبَتْ فَادْعُ اللهَ عَلَيْهِمْ ، فَقَالَ : اللّٰهُمَّ اهْدِ دَوْسًا وَأَتِ بِهِمْ   (رواه البخاري)  "),
          Terjemahan(
              content:
                  "Dari Abu Hurairah r.a., bahwa al-Thufail bin ‘Amr menemui Nabi Muhammad Saw. dan menceritakan bahwa Daus (salah satu kabilah Yaman) telah durhaka dan menolak ajaran dakwahnya, dan meminta agar Nabi mendoakan mereka binasa. Lalu Nabi berdoa, “Ya Allah berilah petunjuk kepada kabilah Daus dan datangkanlah mereka bersama orang muslim (masuk Islam).”",
              riwayat: " (H.R. Al-Bukhāri) "),
          ParagrafWidget(
              content:
                  "   Dalam hadis lain dijelaskan para sahabat menyangka Nabi Muhammad Saw. akan mendoakan kebinasaan untuk kabilah Daus. Kenyataannya justru sebaliknya, Nabi tidak mendoakan mereka binasa, tetapi mendoakan agar mereka mendapat hidayah dan masuk Islam."),
          ParagrafWidget(content: "Kemudian dalam hadis yang lain disebutkan:"),
          QuranWidget(
              arab:
                  "عَنْ جَابِرِ بْنِ عَبْدِ اللَّهِ رَضِيَ اللهُ عَنْهُمَا قَالَ: مَرَّ بِنَا جَنَازَةٌ فَقَامَ لَهَا النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ وَقُمْنَا بِهِ فَقُلْنَا: يَا رَسُولَ اللّٰهِ إِنَّهَا جَنَازَةُ يَهُوْدِيَ قَالَ: إِذَا رَأَيْتُمُ الْجَنَازَةَ فَقُومُوا (رواه البخاري)"),
          Terjemahan(
              content:
                  "“Diriwayatkan dari Jabir bin ‘Abdillah r.a., dia berkata, “Suatu ketika lewat di hadapan kami orang-orang yang membawa jenazah seorang Yahudi. Nabi Saw. lalu berdiri dan kamipun segera mengikutinya. Setelah itu kami berkata, “Wahai Rasulullah, sesungguhnya yang lewat tadi adalah jenazah seorang Yahudi.” Rasulullah kemudian menjawab: Jika kamu sekalian melihat orang yang sedang lewat membawa jenazah, maka berdirilah.” ",
              riwayat: " (H.R. Al-Bukhāri)."),
          ParagrafWidget(
              content:
                  "   Dalam hadis lain disebutkan Nabi menjawab أَلَيْسَتْ نَفْسًا bukankah dia juga manusia). Al-Zabidi memberi penjelasan bahwa menghormati jenazah dengan cara berdiri saat iring-iringan yang membawa jenazah, merupakan hal yang dianjurkan sekalipun jenazah tersebut nonmuslim. Dengan kata lain, penghormatan Nabi dan para sahabat pada waktu itu sebenarnya didasarkan pada pertimbangan kemanusiaan."),
          ParagrafWidget(
              content:
                  "   Kemudian untuk contoh toleransi dengan agama lain, kalian bisa belajar dari Sunan Kudus. Himbauan Sunan Kudus untuk tidak menyembelih sapi sebagai lauk di kedai-kedai makanan. Hal ini sebagai bentuk toleransi terhadap pemeluk agama lain. Himbauan tersebut sama sekali tidak mengorbankan keyakinan agama Islam, tetapi bentuk penghargaan sosial terhadap pemeluk agama lain."),
          ParagrafWidget(
              content:
                  "   Dari penjelasan di atas, diketahui bahwa toleransi dengan umat agama lain iperbolehkan selama berkaitan dengan hubungan sosial kemasyarakatan, sedangkan toleransi dalam hal akidah atau ibadah tidak boleh dilakukan. Hal ini didasarkan pada Q.S. al-Kāfirūn/109: 1-6 "),
          ParagrafItalic(
              content:
                  "   “Katakanlah (Muhammad),  “Wahai orang-orang kafir! aku tidak akan menyembah apa yang kamu sembah; dan kamu bukan penyembah apa yang aku sembah; dan aku tidak pernah menjadi penyembah apa yang kamu sembah; dan kamu tidak pernah (pula) menjadi penyembah apa yang aku sembah; Untukmu agamamu, dan untukku agamaku.”"),
          AktivitasWidget(
              activityTitle: "Aktivitas 6.7",
              contentText:
                  "Carilah contoh-contoh praktik baik toleransi yang dilakukan ulama’ di Indonesia selain yang sudah ada di dalam buku ini baik dengan sesama muslim dan umat antaragama"),
          Heading3(title: "Pesan dalam Q.S. Yūnus /10: 40-41"),
          ParagrafWidget(
              content:
                  "Pesan yang terkandung dalam Q.S. Yūnus/10:40-41, Apabila dikaitkan dengan kehidupan saat ini, khususnya dalam menciptakan toleransi, adalah:"),
          BulledList(idlist: yunus),
          ParagrafWidget(
              content:
                  "   Dari penjelasan Q.S. Yūnus/10: 40-41 dan hadis terkait sebelumnya, menjadi dasar bagi kalian, calon pemimpin bangsa masa depan mempunyai dan membiasakan sikap toleransi baik sesama umat Islam maupun dengan antaragama lain dalam kehidupan sehari-hari. Sikap toleransi ini penting dimiliki dan menjadi budaya pelajar SMA/SMK, karena negara Indonesia, masyarakatnya beranekaragam suku, bahasa, budaya, dan agama."),
          ParagrafWidget(
              content:
                  "   Menurut data Puslitbang Bimbingan Masyarakat Agama dan Layanan Keagamaan Tahun 2019, toleransi merupakan salah satu indikator paling penting untuk menciptakan kerukunan umat beragama, yaitu sebuah kondisi kehidupan umat beragama yang berinteraksi secara harmonis, toleran, damai, saling menghargai, dan menghormati perbedaan agama dan kebebasan menjalankan ibadat masing masing."),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  child: ParagrafWidget(
                      content:
                          "Karenanya, toleransi menjadi salah satu karakter yang dikembangkan dalam Penguatan Pendidikan Karakter, Profil Pelajar Pancasila, dan Moderasi Beragama untuk dimiliki pelajar SMA dan SMK di Indonesia. Melalui sikap toleransi akan terwujud perdamaian, kerukunan, dan kesatuan Bangsa Indonesia. Tidak hanya bermanfaat di Indonesia, tetapi juga untuk perdamaian seluruh dunia.")),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/quote61.png",
                width: 110,
              )
            ],
          ),
          Heading2(
              title:
                  "2. Mengkaji Q.S. al-Māidah/5 : 32, serta Hadis tentang memelihara kehidupan manusia"),
          Heading3(title: "a. Membaca Q.S. al-Māidah/5:32 dengan tartil"),
          QuranWidget(
              arab:
                  "مِنۡ أَجۡلِ ذَٰلِكَ كَتَبۡنَا عَلَىٰ بَنِيٓ إِسۡرَآءِيلَ أَنَّهُۥ مَن قَتَلَ نَفۡسَۢا بِغَيۡرِ نَفۡسٍ أَوۡ فَسَادٖ فِي ٱلۡأَرۡضِ فَكَأَنَّمَا قَتَلَ ٱلنَّاسَ جَمِيعٗا وَمَنۡ أَحۡيَاهَا فَكَأَنَّمَآ أَحۡيَا ٱلنَّاسَ جَمِيعٗاۚ وَلَقَدۡ جَآءَتۡهُمۡ رُسُلُنَا بِٱلۡبَيِّنَٰتِ ثُمَّ إِنَّ كَثِيرٗا مِّنۡهُم بَعۡدَ ذَٰلِكَ فِي ٱلۡأَرۡضِ لَمُسۡرِفُونَ  ٣٢  ( المآئدة / ٥ : ٣٢) "),
          AktivitasWidget(
              activityTitle: "Aktifitas 6.8",
              contentText:
                  "Bacalah Q.S. Al-Māidah/5: 32 dengan tartil. Cara membacanya adalah dengan berpasangan bersama teman kalian! Apabila jumlah siswa ganjil, maka kelompok terakhir jumlahnya tiga. Satu siswa membaca, sedangkan temannya menyimak. Apabila ada bacaan yang kurang tepat, temannya mengingatkan. Setelah selesai, bergantian membaca dan menyimak."),
          Heading3(
              title: "b. Mengidentifikasi Tajwid dalam QS. al-Māidah/5 : 32"),
          AktivitasWidget(
              activityTitle: "Aktivitas 6.9",
              contentText:
                  "Setelah selesai membaca, silahkan kalian mengidentifikasi tajwid dalam Q.S. al-Māidah/5 : 32 dengan cara mengisikan titik-titik pada tabel dibawah ini seperti di contoh.\nIdentifikasi tajwid ini merupakan penerapan materi tajwid yang pernah kalian pelajari pada kelas sebelumnya."),
          TabelHukumBacaanWidget(idlist: hukumBacaan2),
          SizedBox(
            height: 8,
          ),
          Heading3(title: "c. Mengartikan Perkata Q.S. al-Māidah/5 : 32"),
          terjemahanPerkataWidget2(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: bagroundGreen,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Ingat",
                    style: regular_paragraf.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: bagroundGreenLight,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Alhamdulilah dari tabel di atas, kalian secara tidak langsung belajar memahami 28 mufradāt (kosa kata) baru bahasa Arab sekaligus memahami bahasa al-Qur’an. Apabila hafal kosa kata di atas, insyā' Allah kalian akan dapat mudah menerjemahkan Q.S. al-Māidah/5 : 32 dengan sendirinya. ",
                    style: regular_paragraf,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          Heading3(title: "d. Menerjemahkan Q.S. al-Māidah/5 : 32"),
          ParagrafWidget(
              content:
                  "Di bawah ini adalah terjemahan lengkap Q.S. al-Māidah/5 : 32"),
          ParagrafItalic(
              content:
                  "“Oleh karena itu Kami tetapkan (suatu hukum) bagi Bani Israil, bahwa barangsiapa membunuh seseorang, bukan karena orang itu membunuh orang lain, atau bukan karena berbuat kerusakan di bumi, maka seakan-akan dia telah membunuh semua manusia. Barangsiapa memelihara kehidupan seorang manusia, maka seakan-akan dia telah memelihara kehidupan semua manusia. Sesungguhnya para rasul Kami telah datang kepada mereka dengan (membawa) keterangan-keterangan yang jelas. Tetapi kemudian banyak di antara mereka setelah itu melampaui batas di bumi.” "),
          AktivitasWidget(
              activityTitle: "Aktivitas 6.10",
              contentText:
                  "Silahkan kalian menerjemahkan Q.S. Yūnus /10 : 40-41. Caranya mengartikan per kata dalam ayat 40 terlebih dahulu, setelah itu menerjemahkan satu ayat penuh. Kemudian lanjutkan untuk menerjemahkan ayat 41 dengan cara seperti sebelumnya."),
          Heading3(
              title:
                  "e. Menganalisis Kandungan Q.S. al-Māidah/5: 32 dan hadis tentang Memelihara Kehidupan Manusia"),
          ParagrafWidget(content: "1) Tafsir Q.S. al-Māidah/5: 32"),
          ParagrafWidget(
              content:
                  "Dalam Tafsir al-Mishbāh, ayat ini dijelaskan setelah menguraikan kisah pembunuhan secara aniaya yang pertama serta dampak-dampaknya yang sangat buruk. Maksud kisah ini, Ibnu Katsir menjelaskan bahwa anak Nabi Adam telah melakukan pembunuhan terhadap saudaranya sendiri secara dzalim dan melampaui batas. Kemudian Quraish Shihab dalam lanjutan tafsirnya setelah terbukti melalui kisah ini betapa tergesa-gesa manusia, ayat 32 menegaskan bahwa: oleh karena kejahatan yang terjadi dan dampak-dampaknya yang sangat buruk dan perilaku Bani Israil, maka Kami Yang Maha Agung menetapkan suatu hukum menyangkut suatu persoalan yang besar dan hukum itu Kami sampaikan kepada Bani Israil bahwa: Barangsiapa yang membunuh satu jiwa salah seorang putra putri Adam, bukan karena orang itu membunuh jiwa orang yang lain yang memang wajar sesuai hukum untuk dibunuh, atau bukan karena membuat kerusakan di muka bumi, yang menurut hukum boleh dibunuh, seperti dalam peperangan ataumembela diri dari pembunuhan, maka seakan-akan dia telah membunuh manusia seluruhnya."),
          ParagrafWidget(
              content:
                  "   Barangsiapa yang memelihara kehidupan seorang manusia, misalnya dengan memaafkan pembunuh keluarganya atau menyelamatkan nyawa seseorang dari bencana, atau membela seseorang yang dapat terbunuh secara aniaya, maka seakan-akan dia telah memelihara kehidupan manusia semuanya. Sesungguhnya telah datang kepada mereka para rasul dengan membawa keterangan-keterangan yang jelas, yang membuktikan kebenaran para rasul dan kebenaran petunjuk-petunjuk. Tetapi, kemudian sesungguhnya banyak di antara mereka sesudah itu sungguh-sungguh telah membudaya pada dirinya sikap dan perilaku melampaui batas dalam berbuat kerusakan di muka bumi. "),
          ParagrafWidget(
              content:
                  "   Sedangkan maksud syari’at di atas, menurut ulama tafsir Ibnu ‘Asyur dalam kitab al-Tahrir wa al-Tanwir disebutkan sudah ditentukan sejak masa Bani Isra’il. Tujuannya untuk memberitahukan kepada umat muslim bahwa syari’at tersebut telah ditentukan Allah sejak lama. Mengetahui sejarah syari’at bisa menguatkan perasaan umat muslim dalam menerima perintah dan mengungkapkan mashlahah (kebaikan) yang ada di dalam hukum tersebut. Hukum yang terkandung dalam ayat ini telah ditetapkan Allah kepada Bani Isra’il dan berlaku juga bagi umat muslim."),
          ParagrafWidget(
              content:
                  "   Sementara itu, dalam Tafsir al-Azhar terkait disebutkannya ayat ini untuk Bani Israil, Hamka menjelaskan bahwa tentu sudah diketahui bahwa jarak diantara zaman Bani Israil dengan kedua anak Nabi Adam berkelahi itu sangat jauh, memakan waktu beribu tahun. Tidaklah mungkin peraturan ini baru berlaku kepada Bani Israil sebab kejadian itu. Sudah banyak kejadian pembunuhan kepada sesama manusia di antara zaman kedua anak Nabi Adam dengan Bani Israil. Penekanan kepada Bani Israil, ialah sebab tujuan ayat sedang dihadapkan kepada mereka. Sebab Bani Israil di zaman itu sangat mudah membunuh orang karena dengki dan sakit hati, bahkan banyak para nabi yang mereka bunuh."),
          ParagrafWidget(
              content:
                  "   Kemudian untuk pembunuhan yang dilarang pada ayat ini, menurut al-Maraghi dalam Kitab Tafsir al-Maraghi adalah pembunuhan yang dilakukan karena kejahatan, permusuhan, dan pembunuhan yang bukan karena menegakkan hukuman pidana. Adapun maksud membuat kerusakan dalam ayat ini adalah menghilangkan rasa aman bagi orang lain, merusak lahan pertanian, merusak keturunan. Misalnya para pencuri bersenjata, merampas harta dan merusak fasilitas negara. "),
          ParagrafWidget(
              content:
                  "   Sedangkan maksud dari  وَمَنْ أَحْيَاهَا فَكَأَنَّمَا أَحْيَا النَّاسِ جَمِيعًا  (dan barangsiapa memelihara kehidupan seorang manusia, maka seakan-akan dia telah memelihara kehidupan semua manusia) adalah orang yang menjadi sebab hidupnya satu nyawa dengan menyelamatkan dari kematian, maka ia adalah orang yang terhormat, karena orang tersebut mampu menyelamatkan seluruh manusia dengan sifat-sifat yang mulia, yakni kasih sayang, cinta, memuliakan hak hidup manusia dan melaksanakan perintah syari’at. Ayat ini menurut al-Maraghi menunjukkan keharusan menjaga persatuan dan memperhatikan kemanusiaan dalam kehidupan sosial, serta menjauhi dari sesuatu yang membahayakan individu. Merusak kehormatan individu sama dengan merusak kehormatan seluruh individu/masyarakat. sebaliknya, menjaga hak individu berarti sama dengan menjaga hak seluruh seluruh individu/masyarakat. Bahkan dalam al-Qur’an banyak dijumpai petunjuk yang mengajak kepada persatuan umat dan saling menjaga. Inilah landasan para umat terdahulu hingga sekarang."),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Flexible(
                child: ParagrafWidget(
                    content:
                        "   Secara singkat larangan tersebut adalah membunuh orang lain tanpa alasan yang dibenarkan agama dan membuat kerusakan di bumi. Keduanya sangat penting dalam mewujudkan persatuan dan jaminan keamanan dalam kehidupan bermasyarakat. Bagi seorang muslim, tidak hanya diwajibkan menjaga nyawa sesama muslim, "),
              ),
              const SizedBox(
                width: 10,
              ),
              const ImageParagraf(
                  screenWidth: 300,
                  gambar: "Gambar6.5",
                  textGambar: "Gambar 6.5",
                  description:
                      "Memberikan bantuan adalah contoh memelihara kehidupan manusia"),
            ],
          ),
          ParagrafWidget(
              content:
                  "tetapi juga menjaga nyawa orang nonmuslim yang tidak memerangi umat muslim, atau orang nonmuslim yang hidup damai dalam sebuah negara."),
          ParagrafWidget(
              content:
                  "2) Hadis yang terkait dengan Menjaga Kehidupan Manusia"),
          ParagrafWidget(
              content:
                  "Di antara hadis yang berhubungan dengan menjaga kehidupan manusia adalah hadits yang yang diceritakan oleh ‘Abdullah bin ‘Amr bahwa Rasul melarang membunuh mu’ahad. Seperti diriwayatkan al-Bukhari dalam Kitab al-Jami’ al-Shahih Juz 4 disebutkan."),
          QuranWidget(
              arab:
                  " عَنْ عَبْدِ اللهِ بْنِ عَمْرٍو عَنِ النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ مَنْ قَتَلَ نَفْسًا مُعَاهَدًا لَمْ يَرِحْ رَائِحَةَ الْجَنَّةِ وَإِنَّ رِيْحَهَا لَيُوجَدُ مِنْ مَسِيرَةِ أَرْبَعِيْنَ عَامًا   (رواه البخاري)"),
          Terjemahan(
              content:
                  "Diriwatkan dari ‘Abdullah bin ‘Amr, dari Nabi Muhammad Saw, beliau bersabda: barangsiapa yang membunuh mu’ahad (orang nonmuslim yang mendapatkan janji jaminan keamanan dari orang muslim) tidak akan dapat mencium harumnya surga, padahal harumnya dapat dicium dari perjalanan empat puluh tahun.",
              riwayat: "(H.R. Al-Bukhāri)."),
          ParagrafWidget(
              content:
                  "   Dalam hadis lain Nabi Saw. juga menjelaskan larangan seorang muslim menzhalimi mu’ahad (tidak memerangi orang muslim dan mendapat jaminan keamanan). Sebagaimana diriwayatkan Abu Dawud yang tertulis dalam Kitab Sunan Abi Dawud Juz 3 disebutkan, Rasul Saw. mengingatkan beberapa hal yang tidak boleh dilakukan kepada mu’ahad, yakni: tidak boleh menzhaliminya, melanggar janji yang telah diberikan untuk memberi keamanan kepada mereka, membebani sesuatu di atas kemampuan mereka dan mengambil sesuatu milik mereka tanpa ada kerelaan dari mereka. Nabi mengancam bahwa yang melakukan itu akan dituntut oleh beliau kelak di hari kiamat."),
          ParagrafWidget(
              content:
                  "   Yang menarik lagi dalam agama Islam adalah suatu perbuatan yang memberikan isyarat mengancam kepada saudaranya termasuk perbuatan yang dilarang. Sebagaimana Hadis Nabi Muhammad Saw. disebutkan:"),
          QuranWidget(
              arab:
                  "عَنْ أَبِيْ هُرَيْرَةَ  يَقُوْلُ قَالَ أَبُو الْقَاسِمِ رَسُوْلُ اللّٰهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ: مَنْ أَشَارَ إِلَى أَخِيْهِ بِحَدِيْدَةٍ فَإِنَّ الْمَلَائِكَةَ تَلْعَنُهُ حَتَّى وَإنْ كَانَ أَخَاهُ لأَبِيْهِ وَأُمِّهِ   (رَوَاهُ مُسْلِمْ )"),
          Terjemahan(
              content:
                  "Dari Abu Hurairah ia berkata: Rasulullah Saw. bersabda: ”Barangsiapa yang memberi isyarat (mengacungkan) senjata tajam kepada saudaranya, maka sungguh para malaikat melaknatnya meskipun saudaranya itu saudara kandung sebapak seibu.”",
              riwayat: " (H.R. Muslim)"),
          ParagrafWidget(
              content:
                  "   Dari hadis di atas menjelaskan sangat berharganya kehormatan seorang muslim sehingga dilarang keras untuk menakut-nakuti dan membawa sesuatu apapun yang akan menyakiti dan mengganggu orang lain. Kemudian bagi orang yang menumpahkan darah, dalam hadis Nabi Muhammad Saw, ditegaskan nanti di akhirat dia termasuk orang yang bangkrut, meskipun dia dalam hidup di dunia rajin salat, puasa, dan zakat. Sebagaimana dalam hadis Nabi Muhammad Saw."),
          QuranWidget(
              arab:
                  "عَنْ أَبِى هُرَيْرَةَ أَنَّ رَسُوْلَ اللهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ قَالَ: أَتَدْرُوْنَ مَنِ الْمُفْلِسُ. قَالُوا: الْمُفْلِسُ فِينَا مَنْ لَا دِرْهَمَ لَهُ وَلَا مَتَاعَ فَقَالَ: إِنَّ الْمُفْلِسَ مِنْ أُمَّتِى يَأْتِى يَوْمَ الْقِيَامَةِ بِصَلَاةٍ وَصِيَامٍ وَزَكَاةٍ وَيَأْتِى قَدْ شَتَمَ هَذَا وَقَذَفَ هَذَا وَأكَلَ مَالَ هَذَا وَسَفَكَ دَمَ هَذَا وَضَرَبَ هَذَا فَيُعْطَى هَذَا مِنْ حَسَنَاتِهِ وَهَذَا مِنْ حَسَنَاتِهِ فَإِنْ فَنِيَتْ حَسَنَاتُهُ قَبْلَ أَنْ يُقْضَى مَا عَلَيْهِ أُخِذَ مِنْ خَطَايَاهُمْ فَطُرِحَتْ عَلَيْهِ ثُمّ طُرِحَ فِى النَّارِ.   ( رَوَاهُ مُسْلِمْ)"),
          Terjemahan(
              content:
                  "Dari Abu Hurairah r.a. bahwasanya Rasulullah Saw. bersabda: “Tahukah kamu siapakah orang yang bangkrut itu? Para sahabat menjawab: “Orang yang bangkrut di antara kami adalah orang yang tidak mempunyai dirham dan harta benda.” Maka beliau bersabda: “Sesungguhnya orang yang bangkrut dari umatku adalah orang yang datang pada hari kiamat membawa shalat, puasa dan zakat. Tetapi di samping itu juga pernah mencaci si ini, menuduh si ini, makan harta si ini, menumpahkan darah si ini, dan memukul si ini. Maka kebaikannya diberikan ke si ini dan kebaikannya diberikan ke si ini, maka apabila telah habis kebaikannya sedangkan belum terbayar semua tuntutan orang-orang yang lainnya, diambilkanlah dosa-dosa orang yang pernah didzalimi untuk dipikulkan kepadanya, kemudian ia dilemparkan ke neraka.”",
              riwayat: "(H.R. Muslim)."),
          ParagrafWidget(
              content:
                  "   Dari penjelasan Q.S. al-Maidah/5: 32 dan hadis-hadis terkait dengan memelihara kehidupan manusia di atas merupakan dasar bagi kalian sebagai pelajar SMA dan SMK dan calon pemimpin muslim masa depan, seharusnya menjadi duta dalam menebarkan kedamaian di Negara Kesatuan Republik Indonesia (NKRI) maupun di seluruh dunia. Setidaknya hal tersebut dimulai dari diri kalian sendiri, mulai dari yang kecil, dan mulai sekarang juga untuk menebarkan Islam yang rahmatan lil ālamīn. "),
          Heading1(numbering: "G", title: " Penerapan Karakter"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: ParagrafWidget(
                    content:
                        "   Setelah mempelajari Q.S. Yūnus/10:40-41 serta Hadis tentang toleransi dan Q.S. al-Māidah/5:32 serta Hadis terkait tentang memelihara kehidupan manusia serta hadis terkait, kalian dapat menerapkan isi kandungannya dalam kehidupan sehari-hari baik di lingkungan keluarga, sekolah, dan masyarakat. Apa saja bentuk penerapannya? Silahkan dilihat dalam tabel berikut ini."),
              ),
              const SizedBox(
                width: 10,
              ),
              const ImageParagraf(
                  screenWidth: 300,
                  gambar: "Gambar6.6",
                  textGambar: "Gambar 6.6",
                  description:
                      "Pelajar menjadi duta perdamaian di sekolah, keluarga, dan masyarakat"),
            ],
          ),
          TabelPenerapanKarakterWidget(idlist: tabelPenKarakter6),
          const Heading1(numbering: "H", title: "Refleksi"),
          Refleksi(
              content:
                  "Setelah mempelajari materi Q.S. Yūnus/10: 40-41 tentang toleransi dan Q.S. al-Māidah/5: 32 tentang memelihara kehidupan manusia, manfaat apa saja yang kalian rasakan dalam kehidupan sehari-hari? Tuliskan tiga manfaatnya di bawah ini. \n1. .............................................................................................................. \n2. .............................................................................................................. \n3. .............................................................................................................. "),
          Heading1(numbering: "I", title: "Rangkuman"),
          Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: purpleBagroundLight,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ParagrafWidget(
                      content:
                          "Dari penjelasan materi tentang Q.S. Yūnus/10: 40-41 dan Q.S. al-Māidah/5: 32 dapat dirangkum sebagai berikut:"),
                  ParagrafList(idlist: rangkuman6),
                ],
              )),
          Heading3(title: "Petunjuk Mengerjakan"),
          ParagrafWidget(
              content:
                  "Jawablah pernyataan pada tabel di bawah ini sesuai dengan kondisi kalian. Caranya dengan mencentang (√) pada kolom!"),
          Heading1(numbering: "J", title: "Penilaian"),
          Heading2(title: "1. Penilaian Sikap"),
          TabelPanilaianSikapAtas(idlist: tabelPenSikap6),
          Container(
            margin: EdgeInsets.only(top: 8, bottom: 12),
            width: MediaQuery.of(context).size.width,
            height: 122,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: grey),
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                Get.to(PSikap6());
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/assignment.png",
                    width: 30,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Penilaian Sikap",
                    style: medium.copyWith(fontSize: 12, color: grey),
                  )
                ],
              ),
            ),
          ),
          Heading2(title: "2. Penilaian Pengetahuan"),
          ParagrafWidget(
              content:
                  "Untuk menguji pengetahuan kalian dalam mempelajari Bab 6 ini, silahkan mengerjakan soal yang berjumlah 10 pilihan ganda dan 5 uraian. Selamat mengerjakan. Semoga sukses. Āmīn."),
          Heading3(title: "a. Soal Pilihan Ganda"),
          Heading3(title: "Petunjuk Mengerjakan"),
          Heading3(
              title:
                  "Jawablah pertanyaan di bawah ini dengan memberikan tanda (X) pada pilihan a, b, c, d, atau e!"),
          Container(
            margin: const EdgeInsets.only(top: 4),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: black),
                color: const Color(0xFFF3F3F4),
                borderRadius: BorderRadius.circular(2)),
            height: 280,
            child: PilihanGandaSoal(daftarSoal: pilihanGanda6),
          ),
          SizedBox(
            height: 12,
          ),
          Heading3(title: "b. Soal Uraian"),
          Heading3(
              title: "Jawablah pertanyaan di bawah ini dengan yang benar!"),
          ParagrafListCostum(no: "1", content: "Perhatikan Q.S. Yūnus/10: 40!"),
          QuranWidget(
              arab:
                  "وَمِنۡهُمْ مَّنْ يُؤۡمِنُ بِهِ وَمِنۡهُمْ مَّنْ لَّا يُؤۡمِنُ بِهٖ ۗ  وَرَبُّكَ أَعۡلَمُ بِالۡمُفۡسِدِيْنَ   (يونس /١٠: ٤٠)"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
                child: Text(
                  "",
                  style: regular_paragraf,
                  textAlign: TextAlign.justify,
                ),
              ),
              Expanded(
                child: Text(
                  "Dari ayat di atas carilah bacaan hukum bacaan nun sukun dan mim sukun!",
                  textAlign: TextAlign.justify,
                  style: regular_paragraf,
                ),
              )
            ],
          ),
          ParagrafListCostum(
              no: "2",
              content: "Bagaimana isi kandungan Q.S. Yūnus/10: 40-41!"),
          ParagrafListCostum(
              no: "3",
              content:
                  "Bagaimana cara menerapkan isi kandungan Q.S. Yūnus/10: 40-41 dalam kehidupan sehari-hari! Jelaskan minimal tiga!"),
          ParagrafListCostum(
              no: "4",
              content:
                  "Bagaimana isi kandungan Q.S. Al-Māidah/5: 32! Jelaskan minimal tiga!"),
          ParagrafListCostum(
              no: "5",
              content:
                  "Pasa saat ada pandemi Covid-19, pemerintah mengeluarkan protokol kesehatan, yaitu menganjurkan masyarakat memakai masker, menjaga jarak, dan menghindari kerumunan. Bagaimana pendapatmu tentang kebijakan tersebut dihubungkan dengan isi Q.S. Al-Māidah/5: 32!"),
          Container(
            margin: EdgeInsets.only(top: 8, bottom: 12),
            width: MediaQuery.of(context).size.width,
            height: 122,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: grey),
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
              onTap: () {
                Get.to(PPengetahuan6());
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/assignment.png",
                    width: 30,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Penilaian Pengetahuan",
                    style: medium.copyWith(fontSize: 12, color: grey),
                  )
                ],
              ),
            ),
          ),
          Heading2(title: "3. Penilaian Keterampilan"),
          ParagrafListCostum(
              no: "1",
              content:
                  "Tulislah Q.S. Yūnus/10: 40-41 dan Q.S. al-Māidah/5: 32 dengan benar dan dibuat seni kaligrafi. Untuk peserta didik dengan nomor urut presensi kelas ganjil menulis Q.S. Yūnus/10: 40-41 dan nomor urut presensi kelas genap menulis Q.S. al-Māidah/5: 32."),
          ParagrafListCostum(
              no: "2",
              content:
                  "Peserta didik maju satu persatu untuk setoran membaca dan menghafal Q.S. Yūnus/10: 40-41 dan Q.S. al-Māidah/5: 32 ke guru PAI dan BP di sekolah dengan tartil. "),
          ParagrafListCostum(
              no: "3",
              content:
                  "Peserta dibagi menjadi empat kelompok dengan pembagian sebagai berikut:"),
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: Column(
              children: [
                ParagrafListCostum2(
                    no: "a",
                    content:
                        "kelompok I membahas tentang Q.S. Yūnus/10: 40-41 tentang toleransi (tafsir, kandungan, dan penerapan);"),
                ParagrafListCostum2(
                    no: "b",
                    content:
                        "kelompok II membahas tentang hadis tentang toleransi (penjelasan, kandungan, dan penerapan);"),
                ParagrafListCostum2(
                    no: "c",
                    content:
                        "kelompok III membahas tentang Q.S. al-Māidah/5: 32 tentang memelihara kehidupan manusia (penjelasan, kandungan, dan penerapan);"),
                ParagrafListCostum2(
                    no: "d",
                    content:
                        "kelompok IV membahas tentang hadis tentang memelihara kehidupan manusia (penjelasan, kandungan, dan penerapan)."),
                ParagrafWidget(
                    content: "Ketentuan dalam mengerjakan sebagai berikut:"),
                ParagrafListAbjad(idlist: ketentaun),
              ],
            ),
          ),
          Heading1(numbering: "K", title: "Pengayaan"),
          ParagrafWidget(
              content:
                  "Bagi kalian yang sudah memahami materi tentang Q.S. Yūnus/10: 40-41 dan Q.S. al-Māidah/5: 32, kalian bisa memperkaya lebih lanjut dengan membaca buku di bawah ini."),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
                child: Text(
                  "1.",
                  style: regular_paragraf,
                  textAlign: TextAlign.justify,
                ),
              ),
              Expanded(
                  child: RichText(
                text: TextSpan(style: regular_paragraf, children: <TextSpan>[
                  TextSpan(text: "Ahsin Sakho Muhammad. 2010. "),
                  TextSpan(
                      text:
                          "Keberkahan al-Quran: Memahami Tema-tema Penting Kehidupan dalam Terang Kitab Suci, ",
                      style: regular_paragraf.copyWith(
                          fontStyle: FontStyle.italic)),
                  TextSpan(text: "Jakarta: Qaf Media Kreativa;"),
                ]),
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
                child: Text(
                  "2.",
                  style: regular_paragraf,
                  textAlign: TextAlign.justify,
                ),
              ),
              Expanded(
                  child: RichText(
                text: TextSpan(style: regular_paragraf, children: <TextSpan>[
                  TextSpan(
                      text:
                          "Muhammad, Jalaluddin bin Ahmad al-Mahali dan Jalaluddin ‘Abdurrahman bin Abu Bakar al-Suyuthi, "),
                  TextSpan(
                      text: " Tafsir al-Jalalain ",
                      style: regular_paragraf.copyWith(
                          fontStyle: FontStyle.italic)),
                  TextSpan(text: "juz 1, Kairo, Darul Hadits, tanpa tahun;"),
                ]),
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
                child: Text(
                  "3.",
                  style: regular_paragraf,
                  textAlign: TextAlign.justify,
                ),
              ),
              Expanded(
                  child: RichText(
                text: TextSpan(style: regular_paragraf, children: <TextSpan>[
                  TextSpan(text: "Muhammad Mutawali al-Sya’rawi. 1997. "),
                  TextSpan(
                      text: "Tafsir al-Sya’rawi,",
                      style: regular_paragraf.copyWith(
                          fontStyle: FontStyle.italic)),
                  TextSpan(text: "juz 10, Kairo: Muthabi’ Akhbar al-yaum;"),
                ]),
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
                child: Text(
                  "4.",
                  style: regular_paragraf,
                  textAlign: TextAlign.justify,
                ),
              ),
              Expanded(
                  child: RichText(
                text: TextSpan(style: regular_paragraf, children: <TextSpan>[
                  TextSpan(text: "Shihab, Quraish, 2007. "),
                  TextSpan(
                      text:
                          "Tafsir Al-Mishbah: Pesan, Kesan, dan Keserasian Al-Qur’an.",
                      style: regular_paragraf.copyWith(
                          fontStyle: FontStyle.italic)),
                  TextSpan(text: " Jakarta: Lentera Hati;"),
                ]),
                textAlign: TextAlign.justify,
              ))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
                child: Text(
                  "5.",
                  style: regular_paragraf,
                  textAlign: TextAlign.justify,
                ),
              ),
              Expanded(
                  child: RichText(
                text: TextSpan(style: regular_paragraf, children: <TextSpan>[
                  TextSpan(text: "Tim Penyusun Kementerian Agama RI. 2019. "),
                  TextSpan(
                      text: "Moderasi Beragama.]'/",
                      style: regular_paragraf.copyWith(
                          fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: " Badan Litbang dan Diklat Kementerian Agama RI."),
                ]),
                textAlign: TextAlign.justify,
              ))
            ],
          ),
                const Pembatas(),
        ],
      ),
    );
  }
}
