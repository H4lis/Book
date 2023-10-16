import 'package:book/app/data/bab_5_model/list_paragraf_5.dart';
import 'package:book/app/widgets/aktivitas_widget.dart';
import 'package:book/app/widgets/border_black.dart';
import 'package:book/app/widgets/heading2_orange.dart';
import 'package:book/app/widgets/heading_2.dart';
import 'package:book/app/widgets/heading_3.dart';
import 'package:book/app/widgets/list_paragraf.dart';
import 'package:book/app/widgets/list_paragraf_italic.dart';
import 'package:book/app/widgets/paragraf_italic.dart';
import 'package:book/app/widgets/paragraf_list_abjad.dart';
import 'package:book/app/widgets/paragraf_list_costum.dart';
import 'package:book/app/widgets/paragraf_widget.dart';
import 'package:book/app/widgets/sampul_bab.dart';
import 'package:book/app/widgets/sub_bab.dart';
import 'package:book/app/widgets/tabel_penerapan_karakter.dart';
import 'package:book/app/widgets/voice_play.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../data/bab_1_model/paragralistcostum2.dart';
import '../data/bab_1_model/tabel_penilaian_sikap_d.dart';
import '../data/bab_2_model/tadabbur_model.dart';
import '../data/bab_5_model/karya_sholeh_darat.dart';
import '../data/kata_kunci.dart';
import '../data/pilihan_ganda.dart';
import '../data/tabel_penerapan_karakter.dart';
import '../modules/SideMenu/views/side_menu_view.dart';
import '../shared/constant.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/bab_1_widget/pilihanganda.dart';
import '../widgets/bab_1_widget/tabel_penilaian_sikap.dart';
import '../widgets/baground_orange_kata_kunci.dart';
import '../widgets/image_paragraf.dart';
import '../widgets/jawablah.dart';
import '../widgets/list_paragraf_italic_stengah.dart';
import '../widgets/pembatas.dart';
import '../widgets/quran_widget.dart';
import '../widgets/tadabbur.dart';
import '../widgets/video_player_widget.dart';

class Bab5 extends StatelessWidget {
   Bab5({super.key});
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'eAx5HXajUHA', 
      flags: YoutubePlayerFlags(
        autoPlay: false
      )
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenuView(),
      appBar: const AppBarWidget(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
        

          const SampulBab(
              title: "Bab 5",
              contentImage: "bab_5",
              description:
                  "Meneladani Jejak Langkah Ulama Indonesia yang Mendunia"),
          const ATujuan(),
          ParagrafWidget(
              content: "Setelah mempelajari materi ini, kalian dapat: "),
          ParagrafList(idlist: tujPem5),
          const BKata(),
          BagroundOrangeKataKunci(idlist: kataKunciBab5),
          const CInfo(),
          Image.asset(
            "assets/images/infografis5.jpg",
          ),
          SizedBox(height: 10,),
                SizedBox(height: 10,),
                 YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,  
            onReady: () {
        
            },
          ),
          const DAyo(),
          ParagrafList(idlist: ayoTadarus5),
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
                    "Aktivitas 5.1", // Use the activityTitle parameter here
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
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Aktivitas Peserta Didik:\nSaatnya, kita tadarus Q.S. Yūsuf/12: 111, Q.S al-Qashash/28: 25, lalu salah satu peserta didik membacakan terjemahnya", // Use the contentText parameter here
                    style: regular_paragraf,
                    textAlign: TextAlign.justify,
                  ),
                ),
                QuranWidget(
                    arab:
                        "لَقَدْ كَانَ فِيْ قَصَصِهِمْ عِبْرَةٌ لِّاُولِى الْاَلْبَابِۗ مَا كَانَ حَدِيْثًا يُّفْتَرٰى وَلٰكِنْ تَصْدِيْقَ الَّذِيْ بَيْنَ يَدَيْهِ وَتَفْصِيْلَ كُلِّ شَيْءٍ وَّهُدًى وَّرَحْمَةً لِّقَوْمٍ يُّؤْمِنُوْنَ ࣖ    (يوسف/١٢ :١١١) "),
                VoicePlay(
                    audioUrl:
                        "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F04%20Y%C5%ABsuf%20111%2C.mp3?alt=media&token=e643df69-0b70-4905-a093-d64ab59a51f2&_gl=1*oagnbj*_ga*ODY4Mjc1MjUwLjE2OTE2NDUxNjU.*_ga_CW55HF8NVT*MTY5NTg2MDg5MS41My4xLjE2OTU4NjQyNjQuNTAuMC4w"),
                QuranWidget(
                    arab:
                        "فَجَاۤءَتْهُ اِحْدٰىهُمَا تَمْشِيْ عَلَى اسْتِحْيَاۤءٍ ۖقَالَتْ اِنَّ اَبِيْ يَدْعُوْكَ لِيَجْزِيَكَ اَجْرَ مَا سَقَيْتَ لَنَاۗ فَلَمَّا جَاۤءَهٗ وَقَصَّ عَلَيْهِ الْقَصَصَۙ قَالَ لَا تَخَفْۗ نَجَوْتَ مِنَ الْقَوْمِ الظّٰلِمِيْنَ   (القصص/٢٨ :٢٥ )"),
                VoicePlay(
                    audioUrl:
                        "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F04%20al-Qashash%2025.mp3?alt=media&token=23254f60-b8f8-4108-a1df-e2e3fd36589a&_gl=1*1a9srns*_ga*ODY4Mjc1MjUwLjE2OTE2NDUxNjU.*_ga_CW55HF8NVT*MTY5NTg2MDg5MS41My4xLjE2OTU4NjUxOTUuNTQuMC4w")
              ],
            ),
          ),
          const ETadabb(),
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
              "Aktivitas 5.2", // Use the activityTitle parameter here
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
            child: RichText(text: TextSpan(
              style: regular_paragraf,
              children: <TextSpan> [TextSpan(text: "Aktivitas Peserta Didik:\nAmati gambar atau ilustrasi berikut ini! Lalu berilah tanggapan kalian yang dikaitkan dengan materi ajar yang dipelajari, yakni: Meneladani Ulama Indonesia, yakni:"),
              TextSpan(text: " Meneladani Ulama Indonesia, yakni: Hamzah al-Fansuri, Nuruddin bin Ali ar-Raniri, Syekh Abdurauf bin Ali al-Singkili, Syaikh Yusuf Abul Mahasin Tajul Khalwati al-Makasari, Abdus Samad bin Abdullah al-Jawi al-Palimbani, Abu Abdul Mu’thi Nawawi al-Tanari al-Bantani, dan Muhammad Sholeh bin Umar al-Samarani.",style: regular_paragraf.copyWith(fontStyle: FontStyle.italic))
              ]),textAlign: TextAlign.justify,)
            
    
          ),
        ],
      ),
    )
     ,         Tadabbur(idlist: tadabbur5),
          const FKisah(),
          const AktivitasWidget(
              activityTitle: "Aktivitas 5.3",
              contentText:
                  "Pahami dan renungkan artikel berikut ini, sebagai bagian dari pemahaman dari materi ajar yang akan dipelajari!"),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bagroundDarkOrange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Peran Ulama di Nusantara",
                    style: h1.copyWith(color: orange),
                  ),
                ),
                ParagrafWidget(
                    content:
                        "“Ulama tak cuma berperan dalam agama, tetapi juga politik. Keberadaannya mengukuhkan kekuasaan politik.”"),
                ParagrafWidget(
                    content:
                        "   Saat jayanya kerajaan-kerajaan Islam, peran ulama sangat menonjol sekali dalam pemerintahan yang fungsinya memperkokoh kedudukan para pemimpin. Khusus di Asia Tenggara, apalagi Nusantara-Indonesia, hubungan yang erat tersebut bukan hal yang aneh. Contohnya di Kerajaan Samudera Pasai."),
                ParagrafWidget(
                    content:
                        "   Buku Sejarah Hukum Islam Nusantara Abad XIV-XIX M memaparkan, di Samudera Pasai, pemerintah menunjuk para ulama sebagai mufti. Hal ini, berdasarkan informasi Ibnu Batutah yang pernah tinggal selama 15 hari di Samudera Pasai pada tahun 1345 M. Di bukunya yang berjudul al-Rihlāt, Ibnu Batutah menyebut fungsi mufti sangat penting dalam kesultanan."),
                ParagrafWidget(
                    content:
                        "   Kerajaan Islam Aceh juga memiliki  majelis fatwa  yang dipimpin seorang  mufti yang tugasnya menangani persoalan hukum agama. Kedudukannya di atas kementerian kehakiman. Sistem ini, berlanjut hingga ke masa pembentukan Kesultanan Samudera Pasai,”"),
                ParagrafWidget(
                    content:
                        "   Gambaran lebih jelas, dapat ditelusuri pada abad 16. Misalya Hamzah Fansuri, yang peninggalannya relatif masih lengkap yang mencakup biografi dan karya keislaman. Begitu juga, ulama terkemuka yang meninggalkan karya monumental lainnya seperti: Syamsuddin al-Sumaterani (w. 1693 M), Nuruddin ar-Raniri (w. 1658 M), Abdul Rauf al-Sinkili (w. 1693 M), dan Yusuf al-Makassari (w. 1699 M). Selanjutnya, pada abad 18 muncul Abdus Samad al-Falimbani (w. 1789 M) dan Syekh Daud al-Fatani (w. 1847 M)."),
                ParagrafWidget(
                    content:
                        "   Fungsi lainnya, dari para ulama adalah memberi nasihat spiritual sekaligus memberi legitimasi politik di tengah rakyatnya yang beralih menjadi muslim. Ulama juga memegang peran penting dalam menentukan kehidupan keagamaan. Mereka biasanya sebagai kadi atau penghulu di Jawa."),
                ParagrafWidget(
                    content:
                        "   Lebih jauh tentang lembaga kadi, kita dapatkan lewat  catatan perjalanan wakil khusus Inggris ke Aceh pada 1602 M. Sir James Lancaster, yang menggambarkan peran penting Hamzah Fansuri, misalnya dia diangkat raja untuk memimpin perundingan damai dan persahabatan antara Aceh dan Inggris."),
                ParagrafWidget(
                    content:
                        "   Begitu juga  Nuruddin  ar-Raniri, pernah menengahi protes keras Belanda atas regulasi perdagangan kerajaan yang menguntungkan pedagang Gujarat. Melalui otoritas yang dimiliki, dia berhasil meyakinkan raja Safiyyatuddin (1641-1675 M), untuk menarik regulasi itu."),
                ParagrafWidget(
                    content:
                        "   Di Jawa, lembaga itu bisa ditemui di Kerajaan Demak. Sultan-sultan Demak dibantu para ulama. Mereka bertindak sebagai  ahlul halli wal ‘aqdi. Lembaga itu menjadi wadah musyawah kerajaan yang punya hak ikut memutuskan masalah agama, kenegaraan, dan segala urusan kaum muslimin."),
                ParagrafWidget(
                    content:
                        "   Sunan Giri pernah menduduki ahlul halli wal ‘aqdi. Wewenangnya antara lain: (1) mengesahkan dan memberi gelar sultan kepada penguasa kerajaan Islam di Jawa. (2) menentukan juga garis besar politik pemerintahan. (3) bertanggung jawab di bidang keamanan muslim dan kerajaan Islam, dan yang terakhir (4) berhak mencabut kedudukan sultan, bila menyimpang dari kebijakan para wali."),
                ParagrafWidget(
                    content:
                        "   Tak hanya sebagai penasihat raja, para ulama juga menjadi penerjemah Islam ke dalam sistem budaya Indonesia.  Melalui tugas itu, ulama berkontribusi dalam memberi legitimasi pada budaya politik Melayu berorientasi kerajaan."),
                ParagrafWidget(
                    content:
                        "   Karya-karya para ulama menjadi sumber legitimasi bagi kerajaan. Misalnya, ar-Raniri memiliki pandangan yang lebih rinci tentang hubungan ulama dan raja.  Lewat karyanya,  Bustan al-Salatin  yang  ditulis sekitar tahun 1630 M dan didedikasikan kepada Iskandar Tsani, dia menjabarkan cara seorang ulama sufi berhadapan dengan isu politik kerajaan. "),
                ParagrafWidget(
                    content:
                        "   Ar-Raniri juga menekankan untuk mematuhi raja sebagai kewajiban agama. Kepatuhan kepada raja sama saja dengan mengikuti perintah Allah Swt. Melalui cara tersebut, para raja diberikan otoritas politik yang sah, sehingga harus diakui oleh umat Islam."),
                ParagrafWidget(
                    content:
                        "   Tersimpul bahwa Islam sudah memberi sumbangan bagi pembentukan kerajaan Melayu-Indonesia pra-kolonial. Semakin mapan ulama dalam elite kerajaan, makin mantap Islam sebagai ideologi politik kerajaan. Pada periode itu, tercatat raja-raja seperti Sultan Iskandar Muda dan Iskandar Tsani di Aceh, Sultan Agung di Mataram, dan Sultan Hasanuddin di Makassar. "),
                ParagrafItalic(
                    content:
                        "(Artikel tersebut disadur dari tulisan Risa Herdahita Putri | 22 Agustus 2018 dari: https://historia.id/kuno/articles/peran-ulama)."),
              ],
            ),
          ),
          const GWawasan(),
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
              "Aktivitas 5.4", // Use the activityTitle parameter here
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
            child: RichText(text: TextSpan(
              style: regular_paragraf,
              children: <TextSpan> [TextSpan(text: "Aktivitas Peserta Didik:\nBentuk kelas kalian menjadi 7 kelompok. Lalu, setiap kelompok mendapatkan 1 tokoh ulama sesuai materi ajar yang akan dipelajari Meneladani Ulama Indonesia, yakni: "),
              TextSpan(text: "Hamzah al-Fansuri, Nuruddin bin Ali ar-Raniri, Syekh Abdurauf bin Ali al-Singkili, Syaikh Yusuf Abul Mahasin Tajul Khalwati al-Makasari, Abdus Samad bin Abdullah al-Jawi al-Palimbani, Abu Abdul Mu’thi Nawawi al-Tanari al-Bantani, dan Muhammad Sholeh bin Umar al-Samarani. ",style: regular_paragraf.copyWith(fontStyle: FontStyle.italic))
   ,          TextSpan(text: "Hasilnya dipresentasikan!")
             
              ]),textAlign: TextAlign.justify,)
            
    
          ),
        ],
      ),
    ),
       
          const Heading2(title: "1. Indonesia"),
          ParagrafWidget(
              content:
                  "Cendekiawan dan tokoh-tokoh kenamaan dunia, jika pernah berkunjung atau singgah di Indonesia (istilah lebih awal adalah Nusantara), pasti memberi komentar dan penilaian yang baik tentang Indonesia. Hal ini, bisa ditelaah dari budayanya yang santun, murah senyum, mudah bergaul. Apalagi jika dikaitkan dengan keindahan alam dan sumber daya yang melimpah."),
          ParagrafWidget(
              content:
                  "   Luas Nusantara Indonesia, terbentang dari Barat, yakni Sabang (Provinsi NAD/Nanggro Aceh Darussalam) sampai Timur, yakni Merauke (Provinsi Papua). Sementara dari Utara adalah Kepulauan Talaud (Provinsi Sulawesi Utara), sedangkan dari Selatan adalah Pulau Rote (Provinsi Nusa Tenggara Timur)."),
          ParagrafWidget(
            content:
                "   Begitu luasnya Indonesia, sehingga bisa disamakan seperti luas Inggris melampauhi Eropa hingga Irak. Batas Barat Indonesia berada di Grenenwich London, sedangkan batas Timurnya berada di Baghdad Irak. Sementara, batas Utaranya di Jerman, sedangkan batas Selatannya berada di Aljazair.",
          ),
          ParagrafWidget(
              content:
                  "     Di wilayah seluas itu, matahari harus terbit sampai 3 kali. Akibatnya, menimbulkan perbedaan 3 waktu, yakni WIB (Waktu Indonesia Barat), WITA (Waktu Indonesia Tengah), dan WIT ((Waktu Indonesia Timur). Itu artinya matahari terbit lebih awal 2 jam dibanding WIB, dan 1 Jam dibanding WITA."),
          const Heading2(
            title: "2. Umat Islam Indonesia",
          ),
          ParagrafWidget(
              content:
                  "Indah nian sikap beragama bangsa Indonesia, terutama sikap umat Islam Indonesia sebagai mayoritas. Betapa tidak! Tahun 2020, diperkirakan jumlah penduduk Indonesia sekitar 273,5 juta, sementara pada tahun 2020 ini, jumlah umat Islamnya berjumlah berjumlah 229 juta jiwa, atau 87,2 %. "),
          ParagrafWidget(
              content:
                  "   Itu artinya, Umat Islam mampu mengayomi saudaranya yang lain (baik Katolik, Kristen, Hindu, Budha, maupun Konghucu) yang berjumlah 12,8 % (sekitar 44,5 juta). Semuanya hidup rukun dan tenteram membentuk keindahan berperilaku sebagai bangsa Indonesia yang besar. "),
          ParagrafWidget(
              content:
                  "   Kondisi tersebut, menjadi prestasi yang sangat membanggakan. Tata perilakunya, mencerminkan ketulusan hati dan kedamaian hidup. Keramahan dan toleransi, menjadi sikap dan perilaku umat beragama di Indonesia. Belum lagi, jika dikaji dari sudut pandang keragaman yang lain, misalnya suku bangsa ada 740; ada 500 etnik yang menggunakan lebih 250 bahasa, dan jumlah pulaunya + 12.504 (2870 sudah memiliki nama, sementara 9.634 yang tidak memiliki nama),"),
          ParagrafWidget(
              content:
                  "   Bandingkan dengan negara-negara lain, baik di dataran Eropa, Asia, Timur Tengah maupun di Amerika. Agamanya boleh jadi sama, hanya berbeda sedikit sukunya; atau agama dan sukunya sama; bahkan ada yang agama, bahasa, suku, tanah airnya sama; mereka saling bertikai, berselisih sampai berperang tidak habis-habisnya, dan itu memakan waktu yang lama, bahkan tidak berhenti sampai kini."),
          ParagrafWidget(
            content:
                "   Membandingkan kondisi tersebut, tentu kita sebagai umat Islam, harus mensyukuri keadaan di Indonesia, mari bersama anak bangsa yang lain, untuk saling mempererat persahabatan dan persaudaraan, baik antar agama (Ukhuwah Islamiyah), sesama anak bangsa (Ukhuwah Wathaniyah), maupun sesama warga dunia (Ukhuwah Basyariyah). ",
          ),
          const Heading2(title: "3. Ulama Indonesia untuk Dunia"),
          ParagrafWidget(
              content:
                  "Indonesia merdeka tidak lepas dari peran para Ulama Indonesia. Banyak sekali nama-nama yang dapat kita sodorkan dan menjadi pengingat tentang jejak mereka dalam memerdekakan Indonesia, yang sudah kita kenal, antara lain: Pangeran Diponegoro, Cut Nyak Dien, Pangeran Antasari, dan lain sebagainya."),
        
        RichText(text: TextSpan(
          style: regular_paragraf,
          children: <TextSpan>[

TextSpan(text: "   Namun kali ini, yang akan disajikan adalah para Ulama Indonesia yang tidak hanya memberi sumbangsih besar untuk Indonesia, tetapi mewarnai wajah dunia sampai saat ini. Mereka itu, antara lain: "),
TextSpan(text: "Abu Abdul Mu’thi Nawawi al-Tanari al-Bantani, Syaikh Yusuf Abul Mahasin Tajul Khalwati al-Makasari, Abdus Samad bin Abdullah al-Jawi al-Palimbani, Nuruddin bin Ali ar-Raniri, Syekh Abdurauf bin Ali al-Singkili, Muhammad Sholeh bin Umar al-Samarani, Hamzah al-Fansuri. ",style: regular_paragraf.copyWith(fontStyle: FontStyle.italic)),
TextSpan(text: "Mari kita urai jejak dan langkahnya satu per satu.")
        ]),textAlign: TextAlign.justify,),
          ParagrafWidget(
              content:
                  ""),
          const Heading2Orange(
              title: "a. Abu Abdul Mu’thi Nawawi al-Tanari al-Bantani"),
          Heading3(title: "1. Riwayat Hidupnya"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Column(
                  children: [
                    ParagrafWidget(
                        content:
                            "Nama lengkap beliau adalah Abu Abdul Mu’ti Muhammad bin Umar al-Tanara al-Jawi al-Bantani. Dikenal juga dengan nama Muhammad Nawawi al-Jawi al-Bantani. Lebih terkenal dengan nama Syekh atau Imam Nawawi Banten. Ayahnya adalah Umar bin Arabi yang merupakan seorang ulama di Banten. "),
                    ParagrafWidget(
                        content:
                            "   Dikisahkan juga, bahwa Syekh Nawawi masih keturunan dari Sunan Gunung Jati (salah satu Wali Songo) dari Sultan Banten I, yakni Maulana Hasanuddin. Imam Nawawi juga dikabarkan masih memiliki jalur nasab dari Sayyidina Husein r.a, salah satu cucu Rasulullah Saw. selain Sayyidina Hasan r.a. ")
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const ImageParagraf(
                  screenWidth: 300,
                  gambar: "Gambar5.5",
                  textGambar: "Gambar 5.5",
                  description: "Abu Abdul Mu’thi Nawawi al-Tanari al-Bantani"),
            ],
          ),
          ParagrafWidget(
              content:
                  "   Sebutan al-Jawi, menunjukkan bahwa beliau berasal dari Pulau Jawa, sebab Banten menjadi bagian dari Pulau Jawa. Namun, di seantero dunia, beliau diberi gelar Sayyidul Hijaz (Maha Guru Jazirah Arab, Saudi Arabia sekarang). Kebesaran nama Imam Nawawi sepadan dengan Imam Syafi’i (salah satu tokoh madzhab, sehingga dikenal dengan Madzhab Syafi’i)."),
          ParagrafWidget(
              content:
                  "   Beliau dilahirkan di Kampung Tanara, Serang, Banten pada ahun 1815 Masehi, atau 1230 Hijriah, dan beliau wafat pada tanggal 25 Syawal 1314 Hijriah, atau 1897 Masehi. Imam Nawawi menghembuskan nafasnya yang terakhir pada usia 84 tahun."),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Column(
                  children: [
                    Text(
                      "   Di Makkah, Imam Nawawi giat menghadiri majelis-majelis ilmu, khususnya di Masjidil Haram. Hingga, setelah dilihat kedalaman ilmu (Faqih) oleh imam masjid utama tersebut, yakni Syekh Ahmad Khatib Sambas (ini juga tokoh Indonesia yang kaliber dunia) memintanya untuk menggantikan posisinya ",
                      style: regular_paragraf,
                      textAlign: TextAlign.justify, // Atur sesuai kebutuhan
                    ),
                    Text(
                      "   Mulailah Imam Nawawi menjadi pengajar dan membuka majelis ilmu sendiri di Masjidil Haram. Semakin hari, murid atau santrinya semakin banyak. Bahkan, beberapa di antara muridnya merupakan pemuda asal Indonesia juga, yakni Hadratusy Syeikh KH. Hasyim Asy’ari sebagai pendiri Nadlatul Ulama (NU).",
                      style: regular_paragraf,
                      textAlign: TextAlign.justify, // Atur sesuai kebutuhan
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/q51.png",
                width: 110,
              )
            ],
          ),
          Heading3(title: "2. Teladan yang dapat dicontoh"),
          ParagrafWidget(
              content:
                  "Syekh Nawawi pernah menjadi imam di Masjidil Haram, mengajar di Haramain (sebutan lain dari Makkah Madinah), dan karya-karyanya tersebar juga di Timur Tengah. Di kawasan Asia Tenggara, khususnya di dunia pesantren, karya-karyanya masih dipelajari, dikaji, dan ditelaah, bahkan sampai kini menjadi kurikulum tetap di pesantren."),
          ParagrafWidget(
              content:
                  "   Gelar Sayyidul Hijaz bukan sembarang gelar, dan itu diperoleh di wilayah Timur Tengah, tepatnya di seputar Jazirah Arab (Makkah-Madinah saat itu), dan Masjidil Haram, khususnya Ka’bah yang menjadi jantung atau pusatnya ajaran Islam. Hal ini, menjadikan kita sebagai bangsa Indonesia, merasa bangga dan kagum atas capaian yang diperoleh oleh beliau. Sebab itu, kalian sebagai generasi penerus dapat mencontoh jejak dan langkah Imam Nawawi. "),
          Heading3(title: "3. Karya Tulisnya"),
          ParagrafWidget(
              content:
                  "   Sejak tahun 1870 M, kesibukan Imam Nawawi semakin bertambah, karena harus banyak menulis kitab. Inisiatif menulis, lebih banyak datang dari desakan sebagian koleganya dan para sahabatnya dari Jawa. Kitab-kitab yang ditulisnya sebagian besar adalah kitab-kitab komentar (syarh) dari karya-karya ulama sebelumnya yang populer dan dianggap sulit dipahami."),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  child: ParagrafWidget(
                      content:
                          "   Alasan menulis syarh, selain karena permintaan pihak lain, Imam Nawawi juga berkeinginan untuk melestarikan karya pendahulunya yang sering mengalami perubahan (tahrif) dan pengurangan. Saat menyusun karyanya, beliau selalu berkonsultasi dengan ulama-ulama besar lainnya, termasuk sebelum naskahnya naik cetak. Karya-karya beliau cepat tersiar ke berbagai penjuru dunia, karena karya-karyanya mudah dipahami dan mendalam isinya")),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/q52.png",
                width: 100,
              )
            ],
          ),
          ParagrafWidget(
              content:
                  "   Karya tulis beliau banyak yang diterbitkan di Mesir, seringkali beliau hanya mengirimkan manuskripnya, setelah itu tidak memperdulikan lagi bagaimana penerbit menyebarkan hasil karyanya, termasuk hak cipta dan royaltinya, selanjutnya kitab-kitab beliau itu menjadi bagian dari kurikulum Pendidikan Agama di seluruh pesantren di Indonesia, bahkan Malaysia, Filipina, Thailand dan juga negara-negara di Timur Tengah. "),
          ParagrafWidget(
              content:
                  "   Menurut Ray Salam T. Mangondana, peneliti di Institut Studi Islam, Universitas of Philippines, ada sekitar 40 sekolah agama tradisional di Filipina yang menggunakan karya Imam Nawawi sebagai kurikulum belajarnya. Selain itu Sulaiman Yasin, dosen di Fakultas Studi Islam Universitas Kebangsaan Malaysia juga menggunakan karya beliau untuk mengajar di kuliahnya."),
          ParagrafWidget(
              content:
                  "Tepat tahun 1870 M, para ulama Universitas Al-Azhar Kairo Mesir pernah mengundang beliau untuk memberikan kuliah singkat di suatu forum diskusi ilmiah. Mereka tertarik untuk mengundang beliau, karena sudah dikenal di seantero dunia. Semua karya beliau, berbahasa Arab. "),
          ParagrafWidget(
              content:
                  "Bagi para murid/santri yang pernah sekolah (mondok) di pesantren, tentu karya atau kitab yang disusun oleh Syekh Nawawi sudah pernah dipelajari. Berikut ini, 10 nama kitab karya beliau dari total karya beliau yang berjumlah 115 yang mengupas tentang Fiqh, Tasawuf, Tafsir, dan Hadis, yaitu: "),
          ParagrafListItalic(idlist: namaKitab),
          const Heading2Orange(
              title: "b. Syaikh Yusuf Abul Mahasin Tajul Khalwati al-Makasari"),
          Heading3(title: "1. Riwayat Hidupnya"),
          ParagrafWidget(
              content:
                  "Nama lengkapnya Syekh Yusuf Abul Mahasin Tajul Khalwati al-Makasari. Beliau dilahirkan di Gowa, Sulawesi Selatan, pada tanggal 3 Juli 1626, sedangkan tempat wafatnya di Cape Town, Afrika Selatan, pada tanggal 23 Mei 1699 pada usia 72 tahun. Beliau dijadikan sebagai pahlawan nasional Indonesia. Sementara di kalangan rakyat Sulawesi Selatan, mendapatkan gelar sebagai Tuanta Salamaka ri Gowa (“tuan guru penyelamat kita dari Gowa”)."),
          ParagrafWidget(
              content:
                  "   Syekh Yusuf lahir dari ayah-ibu bernama Abdullah dan Aminah. Nama saat dilahirkan adalah Muhammad Yusuf. Konon, nama ini diberikan oleh Sultan Alauddin (berkuasa sejak 1593M, wafat 15 Juni 1639 M, raja Gowa pertama yang masuk Islam, yang masih kerabat dari ibu Syekh Yusuf. Pendidikan agama diperolehnya sejak berusia 15 tahun di Gowa. Syekh Yusuf juga berguru pada Sayyid Ba Alawi bin Abdul al-Allamah Attahir dan Sayyid Jalaludin Al-Aidid."),
          ParagrafWidget(
              content:
                  "   Kembali dari Gowa, Syekh Yusuf menikah dengan putri Sultan Gowa, lalu saat usianya 18 tahun, Syekh Yusuf pergi ke Banten dan Aceh. Di Banten, sahabatnya adalah Sultan Ageng Tirtayasa, yang kelak mengangkatnya sebagai Mufti Kesultanan Banten. Selanjutnya, Di Aceh, Syekh Yusuf berguru pada Syekh Nuruddin ar-Raniri dan mendalami tarekat Qadiriyah."),
          ParagrafWidget(
              content:
                  "   Tahun 1644 M, Syekh Yusuf menunaikan ibadah haji dan tinggal di Makkah untuk beberapa lama, lalu belajar kepada ulama terkemuka di Makkah dan Madinah, termasuk juga memperdalam ilmu ke Yaman, berguru pula kepada Syekh Abdullah Muhammad bin Abdul Baqi, dan ke Damaskus (Suriah) untuk berguru pada Syekh Abu al-Barakat Ayyub bin Ahmad bin Ayyub al-Khalwati Al-Quraisyi."),
          Heading3(title: "2. Teladan yang dapat dicontoh"),
          ParagrafWidget(
              content:
                  "Ketekunan, penjelajahan, dan ikhtiarnya dalam menuntut ilmu, dapat kita jadikan contoh. Betapa tidak! Syekh Yusuf mempelajari Islam sekitar 20 tahun di Timur Tengah. Pencapaian itu, sangat luar biasa, apalagi jika kita kaji dari sisi waktu, Syekh Yusuf melakukan itu sekitar abad 17. Lagi-lagi, kalian sebagai penerus bangsa, dapat meneladani jejak langkah Syekh Yusuf dalam ikhtiarnya saat menuntut ilmu."),
          ParagrafWidget(
              content:
                  "   Saat Kesultanan Gowa kalah perang dari Belanda, Syekh Yusuf pindah ke Banten. Pada periode ini, Kesultanan Banten menjadi pusat pendidikan agama Islam, dan Syekh Yusuf memiliki murid dari berbagai daerah, termasuk 400 orang asal Makassar yang dipimpin oleh Ali Karaeng Bisai."),
          ParagrafWidget(
              content:
                  "   Pada September 1684 M, Syekh Yusuf ditangkap dan diasingkan ke Srilanka. Di negeri itu, Syekh Yusuf tetap berdakwah, sehingga memiliki murid ratusan yang berasal dari India Selatan. Salah satu ulama besar India, yang merupakan santrinya adalah Syekh Ibrahim bin Mi’an."),
          ParagrafWidget(
              content:
                  "   Melalui jamaah haji yang singgah di Srilanka, Syekh Yusuf masih dapat berkomunikasi dengan para pengikutnya di Nusantara, akhirnya oleh Belanda, diasingkan yang lebih jauh lagi. yakni Afrika Selatan yang terjadi pada bulan Juli 1693."),
          ParagrafWidget(
              content:
                  "   Lagi-lagi Syekh Yusuf masih tetap berdakwah Di Afrika Selatan, pengikutnya banyak sekali. Saat beliau wafat tanggal 23 Mei 1699 M, pengikutnya menjadikan hari wafatnya sebagai hari peringatan. Bahkan, Nelson Mandela, mantan presiden Afrika Selatan, menyebutnya sebagai ‘Salah Seorang Putra Afrika Terbaik’."),
          ParagrafWidget(
              content:
                  "   Jenazah Syekh Yusuf Tajul Khalwati dibawa ke Gowa atas permintaan Sultan Abdul Jalil (1677-1709 M) dan dimakamkan kembali di Lakiung, pada April 1705 M. Kemudian Syekh Yusuf dianugerahi gelar Pahlawan Nasional oleh Presiden Soeharto."),

          ParagrafWidget(
              content:
                  "   Selanjutnya, pada tahun 2009, Syech Yusuf dianugerahi penghargaan Oliver Thambo, yaitu penghargaan sebagai Pahlawan Nasional Afrika Selatan oleh Presiden Afrika Selatan Thabo Mbeki kepada ahli warisnya yang disaksikan oleh Wapres RI pada waktu, M. Yusuf Kalla di Pretoria Afrika Selatan."),
          Heading3(title: "3. Karya Tulisnya"),
          ParagrafWidget(
              content:
                  "Syekh Yusuf dikenal  juga sebagai mursyid (pembimbing) tarekat Khalwatiyah. Beliau juga mengajarkan  tarekat  lainnya, antara lain: Qadiriyah, Naqshabandiyah, Ba‘lawiyah, dan Syathariyah. Itu semua sesuai ijazah yang pernah diterimanya."),
          ParagrafWidget(
              content:
                  "   Ajaran pokoknya adalah usaha manusia untuk mendekatkan diri kepada Allah Swt. yang mengacu pada peningkatan kualitas akhlak yang mulia serta penekanan amal shalih dan dzikir, baik secara perorangan maupun kelompok. Penjelasan lebih rinci dapat ditemukan pada risalahnya yang berjudul An-Nafhatu As Sailaniyah."),
          ParagrafWidget(
              content:
                  "   Khusus berkaitan dengan tata cara melakukan dzikir, salah satu amalan terpenting dalam tarekat, diuraikan dalam risalahnya berjudul Kaifiyāt al-Dzikir  (Cara-cara Berdzikir). Menurutnya, ada 20 macam adab berdzikir. Lima di antaranya mengenai hal-hal yang hendaknya dilakukan sebelum berdzikir. Lima macam itu, sebagai berikut."),
          ParagrafWidget(
              content:
                  "   Pertama, bertaubat dari segala dosa; Kedua, berwudhu jika hadas (besar dan kecil), Ketiga, mandi jika junub; Keempat, berdiam diri tidak bicara, kecuali mengucapkan kalimat dzikir; serta Kelima, memohon (berdoa) hanya kepada Allah Swt."),
          ParagrafWidget(
              content:
                  "   Selain beberapa risalah tersebut, sedikitnya ada 20 judul buku yang ditulis Syekh Yusuf. Hampir semuanya berbahasa Arab. Di antaranya sebagai berikut:"),
          ParagrafListItalic(idlist: judulBuku),
 
      Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
                child: Text(
                  "4)",
                  style: regular_paragraf.copyWith(fontStyle: FontStyle.italic),
                  textAlign: TextAlign.justify,
                ),
              ),
              Expanded(
                child: 
                RichText(text: TextSpan(
                  style: regular_paragraf,
                  children: <TextSpan>[
                    TextSpan(text: "Safīnat an-Najah, ",style: regular_paragraf.copyWith(fontStyle: FontStyle.italic)),
                  TextSpan(text: "menjadi karyanya yang paling populer, yang hingga kini masih banyak diajarkan di berbagai pesantren. Di Museum Pusat Jakarta, juga didapati sekitar 10 manuskrip Syekh Yusuf yang belum diterjemahkan."),
                ]))
         
              )
            ],
          ),
     
    
          const Heading2Orange(
            title:
                "c. Jejak dan Langkah Abdus Samad bin Abdullah al-Jawi al-Palimbani",
          ),
          Heading3(title: "1. Riwayat Hidupnya"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: ParagrafWidget(
                    content:
                        "   Syekh Abdus Samad dilahirkan di Palembang (kini masuk wilayah Sumatera Selatan) pada tahun 1116 H/1704 M, dan wafat pada tahun 1203 H/1789 M dalam usia 85 tahun. Beliau mendapat pendidikan dasar dari ayahnya sendiri di Palembang atau Kedah (Malaysia).\n   Jika ditelaah dari silsilah, nasab Syekh Abdus Samad berketurunan Arab, dari jalur ayah. Nama ayahnya adalah Syeikh Abdul Jalil, yang merupakan ulama yang berasal dari Yaman, yang dilantik menjadi Mufti Negeri Kedah (kini Malaysia) pada awal abad ke-18. Sementara ibunya, bernama Radin Ranti, adalah wanita asli Palembang."),
              ),
              const SizedBox(
                width: 10,
              ),
              const ImageParagraf(
                  screenWidth: 300,
                  gambar: "Gambar5.7",
                  textGambar: "Gambar 5.7",
                  description: "Abdus Samad bin Abdullah al-Jawi al-Palimbani"),
            ],
          ),
          ParagrafWidget(
              content:
                  "   Sementara, nama panjangnya terdapat 3 versi, yakni: Abdus Samad al-Jawi al-Falembani, Abdus Samad bin Abdullah al-Jawi al-Falembani, dan Sayyid Abdus Samad bin Abdurrahman al-Jawi. "),
          ParagrafWidget(
              content:
                  "   Pendidikannya dilanjutkan di salah satu pondok di Negeri Pattani (kini masuk wilayah Thailand Selatan). Saat itu, di Pattani menjadi pusat menempa ilmu-ilmu keislaman, setelah dari Pattani, beliau langsung belajar ke Arab (Makkah dan Madinah)."),
          ParagrafWidget(
              content:
                  "   Di Pattani, beliau mendapatkan ilmu-ilmu dasar, seperti hafalan Matan Ilmu-Ilmu Arabiyah, dilanjutkan di bidang Syariat Islam dimulai dengan matan-matan ilmu fiqh yang bermadzhab Imam Syafi’i."),
          ParagrafWidget(
              content:
                  "   Selanjutnya, di bidang tauhid dimulai dengan menghafal matan-matan ilmu kalam/ushuluddin menurut faham Ahlus Sunnah wal Jamaah (Aswaja/Sunni) yang bersumber dari Syekh Abul Hasan al-Asy’ari dan Syeikh Abu Mansur al-Maturidi, karena kecerdasannya saat di Pattani, beliau sudah diperbolehkan sebagai pengajar, meskipun masih sebatas menjadi Mentor atau Tutor."),
          ParagrafWidget(
              content:
                  "   Syekh Muhammad bin Samman menjadi gurunya, Sykh Abdus Samad mendalami juga kitab-kitab tasawuf kepada Syeikh Abdul Rauf Singkel dan Samsuddin al-Sumaterani, kedua-duanya dari Aceh. Sejak kecil, beliau lebih mendalami ilmu tasawuf, maka sejarah mencatatnya sebagai ulama yang memiliki kepakaran dan keistimewaan di cabang ilmu tersebut."),
          ParagrafWidget(
              content:
                  "   Syekh Abdus Samad merupakan salah satu kunci pembuka dan pelopor perkembangan intelektualisme Nusantara Indonesia. Ketokohannya melengkapi nama-nama ulama dan intelektual berpengaruh seangkatannya, misalnya Nuruddin ar-Raniri, Muhammad Arsyad al-Banjari, Hamzah Fansuri, Yusuf al-Makasari, dan masih banyak lainnya."),
          Heading3(title: "2. Teladan yang dapat dicontoh"),
          ParagrafWidget(
              content:
                  "Sesampai di Makkah dan Madinah, semangat belajarnya semakin giat. Ia mmpelahari dan menyerap beberapa ilmu yang belum dikuasai, dan memperdalam ilmu-ilmu yang sudah dikuasainya dari guru dan ulama yang terkenal dengan sebutan Jazirah Arab. Namun, beliau tidak melupakan negeri asalnya. Syekh Abdus Samad tetap memberikan perhatian besar pada perkembangan sosial, politik, dan keagamaan di Nusantara Indonesia."),
          ParagrafWidget(
              content:
                  "   Beliau mengalami perubahan besar berkaitan dengan intelektualitas dan spiritual. Capaian itu tidak terlepas dari semangat dan proses pencerahan yang diberikan para gurunya. Beberapa gurunya yang masyhur dan berwibawa dalam proses tersebut, antara lain Muhammad bin Abdul Karim al-Sammani, Muhammad bin Sulayman al-Kurdi (Irak), dan Abdul al-Mun´im Damanhuri. "),
          ParagrafWidget(
              content:
                  "   Selain itu, tercatat juga dalam sejarah bahwa beliau berguru juga kepada ulama besar yang lain, di antaranya Ibrahim al-Rais, Muhammad Murad, Muhammad al-Jawhari, dan Athaullah al-Mashri (Mesir). Hasilnya tidak sia-sia, perjuangannya menuntut ilmu di Masjidil Haram dan tempat-tempat lainnya, mengangkat dirinya menjadi salah seorang ulama Nusantara yang disegani dan dihormati di kalangan ulama Arab, juga Nusantara Indonesia."),
          ParagrafWidget(
              content:
                  "   Berdasarkan jejak langkahnya, kita menjadi sadar bahwa capaian besar, diperoleh dari ikhtiar dan usaha yang penuh kesungguhan, bertanggung jawab, serta selektif dalam memilih guru. Itu baru usaha lahir, sedangkan usaha dan olah batin tentu tidak dilupakan, baik dari pribadi maupun mohon doa dari para guru-gurunya. Berkat capaian Syekh Abdus Samad, sekali membuktikan bahwa bangsa Indonesia tidak kalah prestasinya dengan bangsa lain di dunia."),
          Heading3(title: "3. Karya Tulisnya"),
          ParagrafWidget(
              content:
                  "Syekh Abdus Samad termasuk pengarang yang produktif. Karyanya yang terkenal dan sampai saat ini masih dipergunakan adalah Hidayatus Salikin dan Siyarus Salikin. Kedua kitab tersebut, merupakan penjelasan dari 2 kitab karya Hujjatul Islam Imam al-Ghazali, yakni Bidāyat al-Hidāyah dan Lubāb Ihyā` ‘Ulūm al-Dīn."),

          ParagrafListItalic(idlist: kitab),
          ParagrafListCostum2(no: "8", content: "Ar-Risālatu fī Kaifiyatir Rītib Lailatil Jum’ah"),
          ParagrafListCostum2(no: "9", content: "Mulhiqun fī Bayāni Fawaidin Nafi’ah fī Jihādi fī Sabīlillah"),
          ParagrafListCostum2(no: "10", content: "Zātul Muttaqin fī Tauhidi Rabbil ‘Alamīn"),
          ParagrafListCostum2(no: "11", content: "\'Ilmut Tasawuf"),
          ParagrafListCostum2(no: "12", content: "Mulkhishut Tuhbatil Mafdhah minar Rahmatil Mahdah ‘Alaihis Shalātu was Salām"),
          ParagrafListCostum2(no: "13", content: "Kitab Mi’raj "),
          ParagrafListCostum2(no: "14", content: "Anisul Muttaqin"),
          ParagrafListCostum2(no: "15", content: "Puisi Kemenangan Kedah"),
          ParagrafWidget(
              content: "Adapun kitab dan karyanya yang lain, sebagai berikut:"),

          const Heading2Orange(
              title: "d. Jejak dan Langkah Nuruddin bin Ali ar-Raniri"),
          Heading3(title: "1. Riwayat Hidupnya"),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: ParagrafWidget(
                    content:
                        "Nama lengkapnya Syekh Nuruddin Muhammad bin ‘Ali bin Hasanji bin Muhammad Hamid ar-Raniri al-Quraisyi. Jika ditelaah dari namanya, beliau memiliki darah keturunan (nasab) dari suku Quraisy, suku yang juga menurunkan Nabi Muhammad Saw.\n   Ayahnya adalah seorang pedagang Arab yang bergiat dalam pendidikan agama, sedangkan nama populernya adalah Syekh Nuruddin Ar-Raniri atau Syekh Nuruddin, beliau adalah ulama penasehat Kesultanan Aceh pada masa kepemimpinan Sultan Iskandar Tsani (Iskandar II)."),
              ),
              const SizedBox(
                width: 10,
              ),
              const ImageParagraf(
                  screenWidth: 300,
                  gambar: "Gambar5.8",
                  textGambar: "Gambar 5.8",
                  description: ""),
            ],
          ),
          ParagrafWidget(
              content:
                  "   Syekh Nuruddin diperkirakan lahir sekitar akhir abad ke-16 di kota Ranir, wilayah Gujarat India, dan wafat pada 21 September 1658 M. Pada tahun 1637 M, ia datang ke Aceh, dan kemudian menjadi penasehat kesultanan di daerah tersebut sampai tahun 1644 M."),
          ParagrafWidget(
              content:
                  "   Syekh Nuruddin mula-mula mempelajari bahasa Melayu di Aceh, lalu memperdalam pengetahuan agama saat beribadah haji ke Makkah. Sepulang dari Makkah, didapati bahwa pengaruh Syamsuddin as-Sumatrani sangat besar di Aceh. Karena tidak cocok dengan aliran wujudiyah (salah satu aliran tasawuf), Syekh Nuruddin pindah ke Semenanjung Malaka untuk memperdalam ilmu agama dan bahasa Melayu."),
          Heading3(title: "2. Teladan yang dapat dicontoh"),
          ParagrafWidget(
              content:
                  "Pengetahuan Syekh Nuruddin tak terbatas dalam satu cabang ilmu saja, namun sangat luas yang meliputi bidang sejarah, politik, sastra, filsafat, fikih, dan mistisisme (tasawuf). Beliau adalah negarawan, ahli fikih, teolog, sufi, sejarawan dan sastrawan penting dalam sejarah Melayu pada abad ke-17."),
          ParagrafWidget(
              content:
                  "   Peranan Syekh Nuruddin dalam perkembangan Islam di Nusantara tidak dapat diabaikan. Dia berperan membawa tradisi besar Islam sembari mengurangi masuknya tradisi lokal ke dalam tradisi yang dibawanya. Tanpa mengabaikan peran ulama lain yang lebih dulu menyebarkan Islam di wilayah ini, beliau berupaya menghubungkan satu mata rantai tradisi Islam di Timur Tengah dengan tradisi Islam Nusantara."),
          ParagrafWidget(
              content:
                  "   Bahkan, Syekh Nuruddin merupakan ulama pertama yang membedakan penafsiran doktrin dan praktik sufi yang salah dan benar. Saat baru tiba di Aceh, di wilayah tersebut telah berkembang luas paham wujudiyah. Paham ini dianut dan dikembangkan oleh Syekh Hamzah Fansuri dan Syamsuddin as-Sumatrani."),
          ParagrafWidget(
              content:
                  "   Pada tahun 1637 M, ia kembali ke Aceh dan tinggal selama tujuh tahun. Saat itu Syekh Syamsuddin as-Sumatrani telah meninggal. Berkat keluasan pengetahuannya, Sultan Iskandar Tani (1636 M-1641 M) mempercayainya untuk mengisi jabatan yang ditinggalkan oleh Syamsuddin. Nuruddin menjabat sebagai Kadi Malik al-Adil, Mufti Besar, ditambah jabatan sebagai Syekh di Masjid Bait al-Rahmān."),
          Heading3(title: "3. Karya Tulisnya"),
          ParagrafWidget(
              content:
                  "Syekh Nuruddin menulis beberapa buah kitab. Ia juga membaca Hikayat Seri Rama dan Hikayat Inderaputera, yang kemudian dikritiknya dengan tajam, serta Hikayat Iskandar Zulkarnain. Beliau juga membaca Tāj as-Salātīn karya Bukhari al-Jauhari dan Sulālat as-Salātīn yang populer pada masa itu. Kedua karya ini, memberi pengaruh yang besar pada karyanya sendiri, yakni Bustān as-Salātīn"),
          ParagrafWidget(
              content:
                  "   Sebagai ikhtiar menyanggah pendapat dan paham wujudiyah, Syekh Nuruddin menulis beberapa kitab, antara lain Asrār al-‘Ārifīn  (Rahasia Orang yang Mencapai Pengetahuan Sanubari), Syarāb al-‘Asyiqīn (Minuman Para Kekasih), dan Al-Muntahi (Pencapai Puncak). Di samping itu, ia juga menyanggah ajaran Hamzah Fanzuri melalui polemik-polemik terbuka dengan para pengikut wujudiyah."),
          ParagrafWidget(
              content:
                  "   Sesudah berpolemik selama sekitar satu bulan, Syekh Nuruddin terpaksa meninggalkan Aceh untuk kembali ke tanah kelahirannya di Ranir, daerah Gujarat India, sehingga ia tidak sempat menyelesaikan karangannya yang berjudul Jawāhir al-‘Ulūm fī Kasyfi al-Ma‘lūm (Hakikat Ilmu dalam Menyingkap Objek Pengetahuan)."),
          ParagrafWidget(
              content:
                  "   Syekh Nuruddin juga menulis beberapa kitab khusus untuk melawan aliran wujudiyah, antara lain Hill az-Dzill (Sifat Bayang-bayang), Syifā alQulb (Pengobatan Hati), Tibyān fī Ma‘rifāt al-Adyān (Penjelasan tentang Kepercayaan), Hujjāt al-Siddiq li Daf az-Zindiq (Pembuktian Ulama dalam Membantah Penyokong Bid’ah), Asrār al-Insān fī Ma‘rifāt ar-Rūh wal ar-Rahmān (Rahasia Manusia dalam Pengenalan Ruh dan Yang Maha Pengasih)."),
          ParagrafWidget(
              content:
                  "   Secara keseluruhan, Nuruddin Ar-Raniri menulis sekitar 30 naskah buku, di antaranya adalah"),
          ParagrafListItalic(idlist: naskah),
          const Heading2Orange(
            title: "e. Jejak dan Langkah Syekh Abdurauf bin Ali al-Singkili",
          ),
          Heading3(title: "1. Riwayat Hidupnya"),
          ParagrafWidget(
              content:
                  "Nama populernya adalah Syekh Abdurrauf bin Ali al-Fansuri as-Singkili (Singkil, Aceh). Tahun lahirnya adalah 1024 H/1615 M, sementara wafatnya di Kuala Aceh, Aceh Tahun 1105 H/1693 M). Beliau adalah ulama besar Aceh, dan memiliki pengaruh besar dalam penyebaran agama Islam di Sumatra dan Nusantara pada umumnya. Sebutan gelarnya yang juga terkenal ialah Tengku Syiah Kuala (bahasa Aceh, artinya Syekh Ulama di Kuala)."),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const ImageParagraf(
                  screenWidth: 300,
                  gambar: "Gambar5.9",
                  textGambar: "Gambar 5.9",
                  description: "Syekh Abdurauf bin Ali al-Singkili"),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: ParagrafWidget(
                    content:
                        "   Adapun nama lengkapnya ialah Aminuddin Abdul Rauf bin Ali al-Jawi Tsumal Fansuri as-Singkili. Sebagian riwayat menyebutkan, keluarganya berasal dari Persia atau Arabia, yang datang dan menetap di Singkil, Aceh, pada akhir abad ke-13. Namun, belum dapat dipastikan karena minimnya catatan sejarah, serta tidak didukung nama keluarga yang mencirikan keturunan Arab ataupun Persia.\n   Beberapa ahli berpendapat, beliau merupakan putra asli pribumi beretnis Minang Pesisir di Singkil yang yang telah menganut agama Islam pada masa itu. Pendapat lain, mengatakan berasal dari etnis Batak Singkil yang beragama Islam yang tidak diketahui lagi marganya. "),
              ),
            ],
          ),
          ParagrafWidget(
            content:
                "   Pada masa mudanya, mula-mula belajar kepada ayahnya sendiri. Kemudian belajar kepada ulama-ulama di Fansur dan Banda Aceh. Selanjutnya, pergi menunaikan ibadah haji, dan dalam proses lawatannya, belajar juga kepada banyak ulama di Timur Tengah.Pada masa mudanya, mula-mula belajar kepada ayahnya sendiri. Kemudian belajar kepada ulama-ulama di Fansur dan Banda Aceh. Selanjutnya, pergi menunaikan ibadah haji, dan dalam proses lawatannya, belajar juga kepada banyak ulama di Timur Tengah.",
          ),
          Heading3(title: "2. Teladan yang dapat dicontoh"),
          ParagrafWidget(
              content:
                  "Diperkirakan Syekh Abdul Rauf kembali ke Aceh sekitar tahun 1083 H/1662 M, dan mengajarkan serta mengembangkan Tarekat Syathariah yang diperolehnya. Banyak santri dan murid yang berguru kepadanya, dan berasal dari Aceh serta wilayah Nusantara lainnya. Beberapa yang menjadi ulama terkenal ialah Syekh Burhanuddin Ulakan (dari Pariaman, Sumatra Barat) dan Syekh Abdul Muhyi Pamijahan (dari Tasikmalaya, Jawa Barat)."),
          ParagrafWidget(
              content:
                  "   Syekh Abdul Rauf menjadi rujukan penting para mubalig yang merintis dakwah ke berbagai daerah di Nusantara. Hal itu sejalan dengan sifat strategis Aceh sebagai poros peradaban Islam di Kepulauan Indonesia. Saat itu, Aceh merupakan tempat persinggahan para calon jamaah haji asal Sumatra, Jawa, Kalimantan, Sulawesi, dan lain-lain."),
          ParagrafWidget(
              content:
                  "   Disebabkan peran besar tersebut, Syekh Abdul Rauf dapat dikatakan sebagai Poros sejumlah ulama Nusantara. Salah seorang muridnya adalah Syekh Burhanudin Ulakan (1646 M-1692 M). Setelah belajar di Aceh, mubalig asal Pariaman itu berangkat ke Tanah Suci. Sepulangnya dari Haramain, dia mendirikan surau di Ulakan. Jasanya yang paling dikenang adalah mendakwahkan Islam kepada kaum bangsawan Kerajaan Pagaruyung."),
          ParagrafWidget(
              content:
                  "   Murid lainnya adalah Syekh Abdul Muhyi. Mubaligh asal Jawa Barat itu pernah bermukim di Aceh, untuk kemudian berangkat ke Tanah Suci untuk mendalami ilmu-ilmu agama. Sempat pula dia berkunjung ke Baghdad (Irak) untuk berziarah ke makam Syekh Abdul Qadir Jailani (1077 M-1166 M). Sepulangnya dari rihlah keilmuan itu, Abdul Muhyi menyebarkan dakwah Islam, termasuk tarekat Syathariyah, di Jawa Barat."), //
          ParagrafWidget(
              content:
                  "   Tokoh berikutnya adalah Abdul Malik bin Abdullah (1678-1736) dari Semenanjung Melayu dan Dawud al-Jawi ar-Rumi. Keduanya juga berangkat ke Tanah Suci untuk beribadah haji sekaligus pengembangan keilmuan. Akhirnya kiprah Abdul Malik banyak di bidang syariat dan fikih. Sementara, Dawud al-Jawi yang diduga berasal dari Turki, dijadikan sebagai wakil utama dari tarekat Syathariyah sepeninggal wafatnya Syekh Abdur Rauf."),
          Heading3(title: "3. Karya Tulisnya"),
          ParagrafWidget(
              content:
                  "Menurut Azyumardi Azra (Akademisi UIN Jakarta) menyatakan bahwa banyak karya-karya Syekh Abdurrauf Singkil yang sempat dipublikasikan melalui murid-muridnya. Di antaranya adalah:"),
         
         
          ParagrafList(idlist: karya),
          ParagrafWidget(
              content:
                  "   Di antara karya besar Syekh Abdu Rauf adalah \"Tarjuman al-Mustafīd\". Itulah terjemahan dan tafsir Al-Qur’an pertama dalam bahasa Melayu. Kitab tersebut banyak dipengaruhi karya Abdullah bin Umar bin Muhammad Syairazi al-Baidawi (w. 1286 H), yakni \"Tafsir Anwār al-Tanzil wa Asrār al-Ta’wīl\", yang dalam bahasa Arab dan memang sudah legendaris di penjuru dunia."),
          ParagrafWidget(
              content:
                  "   Namun, karya tulis syekh asal  Aceh itu juga tidak kalah terkenal. Sebagai contoh, \"Tarjuman al-Mustafīd\" diketahui pernah terbit pada 1884 M/1885 M dalam edisi dua jilid di Istanbul, Turki."),
          ParagrafWidget(
              content:
                  "   Adapun karya-karyanya yang lain juga menjadi bacaan penting, baik oleh alim  ulama maupun sultan-sultan Melayu. Di samping itu, mubalig kelahiran Singkel ini, juga kerap memanfaatkan sastra sebagai medium penyebaran gagasan sufistik. Sebuah syair karyanya yang terkenal adalah \"Syair Ma’rifat\" yang salinannya ditulis di Bukittinggi pada tahun 1859 M."),
          const Heading2Orange(
              title: "f. Jejak Langkah Muhammad Sholeh bin Umar al-Samarani"),
          Heading3(title: "1. Riwayat Hidupnya"),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: ParagrafWidget(
                    content:
                        "Di kalangan ulama atau masyarakat awam, orang sering menyebutnya dengan nama Mbah Sholeh Darat. Kata “Darat” pada akhir nama beliau, disebabkan beliau tinggal di daerah yang bernama Darat, yaitu suatu daerah di pantai utara Semarang. Saat ini, daerah Darat termasuk wilayah Semarang Barat.\n   Mbah Sholeh Darat dilahirkan di desa Kedung Cumpleng, Kecamatan Mayong, Kabupaten Jepara, Jawa Tengah, sekitar 1820 M. Sementara, informasi yang lain menyebutkan, beliau lahir di Dukuh Kedung Cumpleng, Desa Ngroto, Kecamatan Mayong, Jepara. Beliau wafat di Semarang pada 28 Ramadan 1321 H/18 Desember 1903 M."),
              ),
              const SizedBox(
                width: 10,
              ),
              const ImageParagraf(
                  screenWidth: 300,
                  gambar: "Gambar5.10",
                  textGambar: "Gambar 5.10",
                  description: "   Muhammad Sholeh bin Umar al-Samarani"),
            ],
          ),
          ParagrafWidget(
              content:
                  "   Nama lengkapnya adalah Al-’Alim Al-’Allamah Asy-Syaikh Muhammad Sholeh bin Umar al-Samarani al-Jawi asy-Syafi’i. Jika dari namanya yang panjang, mengindikasikan bahwa beliau merupakan seorang Ulama Besar di Jawa. Nama Ayahnya adalah Kiyai Umar yang merupakan salah seorang pejuang dan orang kepercayaan Pangeran Diponegoro di Jawa Bagian Utara Semarang."),
          ParagrafWidget(
              content:
                  "   Hasil didikan Mbah Sholeh Darat, dapat ditelusuri dari nama-nama berikut ini, yang merupakan tokoh-tokoh besar Indonesia, antara lain: Hadratu Syekh KH Hasyim Asy’ari (Pendiri NU),  KH Ahmad Dahlan (Pendiri Muhammadiyah), KH Amir Idris (pekalongan), KH Dahlan Tremas, KH Dimyathi Tremas, KH Dalhar Watucongol (Magelang)."),
          ParagrafWidget(
              content:
                  "   Selanjutnya, KH Bisri Syansuri (Jombang), KH Kholil (Lasem Rembang), KH Sya’ban (semarang), KH Abdus Syakur Senorita (Tuban), KH Yasir Jekulo (Kudus), dan KH Thoyib (Mranggen Demak). Jangan dilupakan juga, termasuk hasil didikan beliau adalah tokoh emansipasi wanita Indonesia, yakni R.A. Kartini."),
          ParagrafWidget(
              content:
                  "   Kiai Sholeh juga menjadi salah satu pengajar di Makkah. Muridnya berasal dari seluruh penjuru dunia, termasuk dari Jawa dan Melayu. Hal ini tentu membanggakan, kita sebagai generasi penerus telah disuguhi banyak tokoh besar Indonesia, karena itu menjadi kewajiban kita untuk dapat mencontoh dan meneladani capaian dan keberhasilan mereka, baik di level nasional, regional maupun mancanegara."),
          Heading3(title: "2. Teladan yang dapat dicontoh"),
          ParagrafWidget(
              content:
                  "   Kiai Sholeh Darat menimba ilmu di pesantren-pesantren pada zamannya, beliau banyak berjumpa dengan kiai-kiai masyhur yang dikenal memiliki kedalaman serta keluasan ilmu batin (tasawuf), yang kemudian dijadikan sebagai gurunya di Nusantara Indonesia, antara lain KH. M. Sahid yang merupakan cucu dari Syaikh Ahmad Mutamakkin, seorang ulama besar dari daerah Pati Jawa Tengah sekitar abad ke-18."),
          ParagrafWidget(
              content:
                  "   Beliau juga berguru kepada KH. Syahid Waturoyo, KH. Muhammad Shaleh Asnawi (Kudus), KH. Haji Ishaq Damaran, KH Abu Abdillah Muhammad Hadi Baguni, KH Ahmad Bafaqih Ba’alawi, dan KH Abdul Ghani Bima."),

          ParagrafWidget(
              content:
                  "   Beliau juga menimba ilmu ke gurunya yang di mancanegara, khususnya di wilayah Hijaz (Jazirah Arab Saudi Arabia), antara lain Syeikh Muhammad al-Muqri, Syeikh Muhammad bin Sulaiman Hasbullah al-Makki, Sayyid Ahmad bin Zaini Dahlan, Syeikh Ahmad Nahrowi, Sayid Muhammad Saleh bin Sayid Abdur Rahman Az-Zawawi, Syeikh Zahid, Syeikh Umar asy-Syami (Suriah dan Palestina) Syeikh Yusuf al-Mishri (Mesir)."),
          ParagrafWidget(
              content:
                  "   Berdasarkan penjelasan tersebut, banyak hal yang dapat dicontoh dari Syekh Shaleh Darat, antara lain: "),
          ParagrafListAbjad(idlist: dicontoh),

          Heading3(title: "3. Karya Tulisnya"),
          ParagrafWidget(
              content:
                  "   Syekh Kyai Sholeh Darat termasuk ulama yang produktif, banyak karya lahir darinya. Di antara kitab atau karya tulis beliau adalah:"),
          
          
          ParagrafListItalicStengah(idlist: karyaSholehDaratt),
          const Heading2Orange(title: "g. Jejak dan Langkah Hamzah al-Fansuri"),
          Heading3(title: "1. Riwayat Hidupnya"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: ParagrafWidget(
                    content:
                        "Nama populernya Syekh Hamzah Fansuri, atau Hamzah al-Fansuri. Nama al-Fansuri sendiri berasal dari Arabisasi kata Pancur, sebuah kota kecil di pantai Barat Sumatra yang kini terletak antara Singkil (Aceh) dan Sibolga (Sumatra Utara). Merujuk zaman Kerajaan Aceh Darussalam, kampung Fansur itu terkenal sebagai pusat pendidikan Islam di bagian Aceh Selatan. "),
              ),
              const SizedBox(
                width: 10,
              ),
              const ImageParagraf(
                  screenWidth: 300,
                  gambar: "Gambar5.11",
                  textGambar: "Gambar 5.11",
                  description: "Hamzah al-Fansuri"),
            ],
          ),
          ParagrafWidget(
              content:
                  "   Beliau berasal dari Barus (saat ini di provinsi Sumatera Utara). Di jaman itu, wilayah Barus sering disinggahi para saudagar dan musafir dari mancanegara. Bahkan, disebut oleh Sastrawan Abdul Hadi, signifikansinya sudah tercantum dalam naskah sejarah Yunani Kuno yang ditulis pada abad kedua sebelum Masehi (SM)."),
          ParagrafWidget(
              content:
                  "   Namun, ada pula yang berpendapat lain, bahwa Hamzah Fansuri dilahirkan di Ayuthia, ibukota lama kerajaan Siam (Thailand). Seperti pendapat Syed Naguib al-Attas, bahwa keluarganya memang berasal dari Barus, tetapi dirinya sendiri lahir di Syahr Nawi, yakni Ayuthia, ibu kota Kerajaan Siam yang berdiri pada 1350."),
          ParagrafWidget(
              content:
                  "   Sepanjang hayatnya, Syekh Hamzah Fansuri tidak hanya fasih berbahasa Melayu, tetapi juga Jawa, Siam, Hindi, Arab, dan Persia. Bahasa Arab dan Persia merupakan bahasa penting pada abad ke-16. Saat itu, di Barus sudah berkembang suatu dialek bahasa Melayu yang unggul, di samping dialek Malaka dan Pasai. Oleh karena itu, bahasa Melayu yang dipakai Hamzah Fansuri dalam karya-karyanya dapat dianggap contoh terbaik ragam bahasa Melayu."),
          Heading3(title: "2. Teladan yang dapat dicontoh"),
          ParagrafWidget(
              content:
                  "Sepanjang hayatnya, Syekh Hamzah Fansuri tidak hanya fasih berbahasa Melayu, tetapi juga Jawa, Siam, Hindi, Arab, dan Persia. Bahasa Arab dan Persia, merupakan bahasa penting pada abad ke-16, termasuk mengenai tasawuf Islam. "),
          ParagrafWidget(
              content:
                  "   Di Barus pada masa itu, sudah berkembang suatu dialek bahasa Melayu Syang unggul, di samping dialek Malaka dan Pasai. Oleh karena itu, bahasa Melayu yang dipakai Hamzah Fansuri dalam karya-karyanya dapat dianggap contoh terbaik ragam bahasa Melayu Barus."),

          ParagrafWidget(
              content:
                  "   Semua pegiat Sastra Nusantara menyebut bahwa Hamzah Fansuri adalah penyair agung di rantau Sumatera. Disebutkan oleh A Teeuw, ketika Valentijn (seorang sarjana Belanda) mengunjungi Barus pada 1706, ia membuat catatan yang menunjukkan kekagumannya kepada sang penyair."),

          ParagrafWidget(
              content:
                  "   ‘’Seorang penyair Melayu, Hamzah Pansur, adalah sosok terkemuka di lingkungan orang-orang Melayu, karena syair dan puisinya yang menakjubkan. Kita dibuat dekat kembali dengan kota kelahiran sang penyair, jika mengangkat naik timbunan debu kebesaran dan kemegahan masa lampau,’’ tulis Valentijn."),
          Heading3(title: "3. Karya Tulisnya"),
          ParagrafWidget(
              content:
                  "Syekh Hamzah Fansuri merupakan figur penting dalam sejarah kebudayaan Melayu-Indonesia. Kemasyhurannya meliputi banyak bidang, yakni kesusastraan, tasawuf, dan dakwah Islam. Namun, sedikit sekali yang dapat memastikan detail riwayat hidup sang perintis tradisi penulisan syair berbahasa Melayu itu."), //
          ParagrafWidget(
              content:
                  "   Berikut ini, sedikir rincian karya beliau yang terkait dengan kesusatraan Melayu:"),
          ParagrafWidget(
              content:
                  "   Syair Hamzah Fansuri terdiri atas 13-21 bait. Setiap bait terdiri atas empat baris, yang berima a-a-a-a. Pada umumnya jumlah kata tiap baris ada empat, meskipun terdapat pengecualian. Syair Hamzah al-Fansuri banyak dipengaruhi puisi-puisi Arab dan Persia (seperti rubaiyat karya Umar Khayyam), namun tetap ada perbedaan, yakni: Rima Rubaiyat adalah a-a-b-a, sedangkan Hamzah al-Fansuri memakai rima a-a-a-a."),
          ParagrafWidget(
              content:
                  "   Selanjutnya, jika ditelaah dari segi tema setiap syair yang dikarang Hamzah al-Fansuri, lebih banyak membahas tentang aspek tasawuf. Hal ini, dikarenakan bidang lain yang diminati adalah tasawuf, selain sastra dan dakwah Islam."),
          ParagrafWidget(
              content:
                  "   Hamzah Fansuri banyak melakukan kreasi atau inovasi baru, yang sebelumnya tidak dikenal dalam sastra Melayu lama. Misalnya, memperkenalkan bentuk puisi baru untuk mengekspresikan diri. Inovasi lain adalah pemakaian bahasa yang kreatif. Hamzah Fansuri tidak segan-segan meminjam kata-kata dari bahasa Arab dan Persia dalam puisinya."),
          ParagrafWidget(
              content:
                  "   Adapun karya-karya Syekh Hamzah Fansuri yang sampai saat ini masih dapat ditelaah, dikaji dan dinikmati adalah:"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kelompok Puisi",
                      style: h2.copyWith(fontStyle: FontStyle.italic),
                    ),
                    ParagrafList(idlist: puisi),
                    Text(
                      "Kelompok Prosa",
                      style: h2.copyWith(fontStyle: FontStyle.italic),
                    ),
                    ParagrafList(idlist: prosa)
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/syair.png",
                width: 143,
              ),
            ],
          ),
          const AktivitasWidget(
              activityTitle: "Aktivitas 5.5",
              contentText:
                  "Kelas dibagi menjadi 4 kelompok, lalu susun makalah dalam bentuk ppt. yang mengisahkan Ulama Nusantara Indonesia yang menorehkan catatan emas di dunia, yaitu: (1) Syekh Muhammad Arsyad al-Banjari; (2) Syekh Ahmad Khatib al-Minangkabawi; (3) Syekh Muhammad Yasin al-Fadani; dan (4) Syekh Sulaiman ar-Rasuli al-Minangkabawi; Persiapkan juga buku catatan, atau laptop yang kalian miliki untuk presentasi. Lalu setelah mengetahui profil Ulama Nusantara tersebut, apa yang harus kalian lakukan, agar dapat meneladani dalam upaya mencari ilmu!"),
          const HPenerapan(),
          ParagrafWidget(
              content:
                  "Setelah menelaah materi Meneladani Jejak Langkah Ulama Indonesia Yang Mendunia, diharapkan peserta didik dapat membiasakan karakter dalam kehidupan sehari-hari, sebagai berikut."),
          TabelPenerapanKarakterWidget(idlist: tabelPenKarakter5),
          const IReflek(),
          const BorderBlack(
              content:
                  "Jika kalian kaji jejak langkah 7 Ulama Nusantara Indonesia yang sudah dipelajari, sebutkan 5 faktor yang menjadi penyebab para ulama tersebut, meraih capaian yang begitu unggul.\n\nJawabannya ditulis tangan, dan cukup 2 lembar saja yang diperkaya dengan data, gambar, atau ilustrasi! Ini tugas pribadi atau individual ya!"),
          const JRangkum(),

          Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: purpleBagroundLight,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ParagrafList(idlist: rangkuman5)),
          const KPenilai(),
          TabelPanilaianSikap(idlist: tabelPenSikap5),
          Container(
            margin: const EdgeInsets.only(top: 4),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: black),
                color: const Color(0xFFF3F3F4),
                borderRadius: BorderRadius.circular(2)),
            height: 280, // Atur tinggi sesuai kebutuhan
            child: PilihanGandaSoal(daftarSoal: pilihanGanda5),
          ),
          const Jawablah(),
          ParagrafList(idlist: uraian5),
          const Heading2(title: "3. Penilaian Keterampilan"),
          Heading3(title: "a. Penilaian Proyek"),
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
                    "Aktivitas 5.6", // Use the activityTitle parameter here
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
                  child: Column(
                    children: [
                      Text(
                        "Aktivitas Peserta Didik:\nSetiap kelas dibagi menjadi 7 kelompok. Buatlah resume atau resensi tentang karya-karya berikut ini yang merupakan karya tulis dari 7 ulama Nusantara Indonesia yang sudah kalian pelajari:", // Use the contentText parameter here
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                      ParagrafList(idlist: actv56)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Heading3(title: "b. Penilaian Praktik"),
          const BorderBlack(
              content:
                  "Kelompok: \nKelas dibagi 7 kelompok, sesuai dengan Penilaian Proyek yang sudah dilaksanakan. Lalu dipresentasikan dan didiskusikan sesuai dengan tugasnya, lalu membuat kesimpulan tentang isi kitab atau karya tersebut,sementara itu GPAI memberikan penilaian dari masing-masing kelompok.\n\nIndividual: \nSetiap peserta didik di masing-masing kelas, membuat tulisan tentang pengalaman pribadi (cukup 1 lembar dan ditulis tangan sendiri) terkait 7 ulama Nusantara Indonesia yang sudah dipelajari. Hasilnya dikumpulkan 1 pekan ke depan! Sementara itu, GPAI bersama peserta didik lainnya (yang ditugaskan) untuk memberikan tanggapan dan penilaian dari setiap peserta didik dari masing-masing kelas."),
          Heading3(title: "c. Penilaian Portofolio"),
          const BorderBlack(
              content:
                  "Tuliskanlah semua aktivitas keagamaan kalian, baik di sekolah, rumah, maupun masyarakat pada buku Penilaian Pendidikan Agama Islam dan Budi Pekerti!"),
          const IPengaya(),
          const BorderBlack(
              content:
                  "Terdapat 7 ulama Nusantara Indonesia yang memiliki reputasi dunia, adakah di antara karya-karyanya yang pernah kalian pelajari dan telaah, baik di lingkungan sekolah, rumah, lingkungan sekitar, atau di pondok pesantren?Jawabannya harus jujur ya! Perkaya juga dengan tanggapan kalian tentang peran dan karya-karya mereka untuk kemajuan Indonesia ke depan.\nBoleh ditulis tangan, atau cara yang lain. Cukup 1-2 lembar saja. Jangan lupa, sertakan sumber rujukannya ya!"),
          const Pembatas(),
        ],
      ),
    );
  }
}

