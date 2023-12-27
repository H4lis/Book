import 'package:book/app/data/bab_1_model/paragralistcostum2.dart';
import 'package:book/app/data/bab_2_model/tadabbur_model.dart';
import 'package:book/app/shared/constant.dart';
import 'package:book/app/widgets/aktivitas_widget.dart';
import 'package:book/app/widgets/app_bar_widget.dart';
import 'package:book/app/widgets/heading_2.dart';
import 'package:book/app/widgets/heading_3.dart';
import 'package:book/app/widgets/paragraf_italic.dart';
import 'package:book/app/widgets/paragraf_list_abjad.dart';
import 'package:book/app/widgets/paragraf_widget.dart';
import 'package:book/app/widgets/quran_widget.dart';
import 'package:book/app/widgets/tadabbur.dart';
import 'package:book/app/widgets/terjemahan_widget.dart';
import 'package:book/app/widgets/voice_play.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../assingnment/p_pengetahuan_8.dart';
import '../assingnment/p_sikap_8.dart';
import '../data/bab_8_model/list_paragraf_8.dart';
import '../data/kata_kunci.dart';
import '../data/pilihan_ganda.dart';
import '../data/tabel_penerapan_karakter.dart';
import '../modules/SideMenu/views/side_menu_view.dart';
import '../widgets/bab_1_widget/pilihanganda.dart';
import '../widgets/baground_orange_kata_kunci.dart';
import '../widgets/list_paragraf.dart';
import '../widgets/pembatas.dart';
import '../widgets/penilaiandiri2.dart';
import '../widgets/refleksi.dart';
import '../widgets/sampul_bab.dart';
import '../widgets/sub_bab.dart';
import '../widgets/tabel_penerapan_karakter.dart';

class Bab8 extends StatelessWidget {
  Bab8({super.key});
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'a2P6K-Mymww',
      flags: YoutubePlayerFlags(autoPlay: false));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenuView(),
      appBar: const AppBarWidget(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          SampulBab(
              title: "Bab 8",
              contentImage: "bab_8",
              description: "Adab Menggunakan Media Sosial"),
          const ATujuan(),
          ParagrafWidget(content: "Dalam bab ini, tujuan pembelajaran adalah:"),
          ParagrafList(idlist: tujPem8),
          BKata(),
          BagroundOrangeKataKunci(idlist: kataKunciBab8),
          CInfo(),
          Image.asset(
            "assets/images/infografis8.png",
          ),
          SizedBox(
            height: 20,
          ),
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            onReady: () {},
          ),
          DAyo(),
          ParagrafWidget(
              content:
                  "Sebelum mempelajari bab delapan tentang adab dalam bermedia sosial, mari membaca bersama-sama Q.S. An-Nūr/24: 11-13 dibawah ini!"),
          QuranWidget(
              arab:
                  "اِنَّ الَّذِيْنَ جَاۤءُوْ بِالْاِفْكِ عُصْبَةٌ مِّنْكُمْۗ لَا تَحْسَبُوْهُ شَرًّا لَّكُمْۗ بَلْ هُوَ خَيْرٌ لَّكُمْۗ لِكُلِّ امْرِئٍ مِّنْهُمْ مَّا اكْتَسَبَ مِنَ الْاِثْمِۚ وَالَّذِيْ تَوَلّٰى كِبْرَهٗ مِنْهُمْ لَهٗ عَذَابٌ عَظِيْمٌ  ١١   لَوْلَآ اِذْ سَمِعْتُمُوْهُ ظَنَّ الْمُؤْمِنُوْنَ وَالْمُؤْمِنٰتُ بِاَنْفُسِهِمْ خَيْرًاۙ وَّقَالُوْا هٰذَآ اِفْكٌ مُّبِيْنٌ ١٢   لَوْلَا جَاۤءُوْ عَلَيْهِ بِاَرْبَعَةِ شُهَدَاۤءَۚ فَاِذْ لَمْ يَأْتُوْا بِالشُّهَدَاۤءِ فَاُولٰۤىِٕكَ عِنْدَ اللّٰهِ هُمُ الْكٰذِبُوْنَ ١٣   (النّور / ٢٤: ١٣ـ ١١)"),
          VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F08-surah-annur-full%2011-13.mp3?alt=media&token=a9193c4a-1a23-490a-82c3-4c9e2a5eb3d1"),
          AktivitasWidget(
              activityTitle: "Aktivitas 8.1",
              contentText:
                  "Bacalah Q.S. An-Nūr/24: 11-13 di atas bersama-sama dengan tartil!"),
          ETadabb(),
          Tadabbur(idlist: tadabbur8),
          FKisah(),
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
                    "Tabayun pada Era Media Sosial",
                    style: h1.copyWith(color: orange),
                  ),
                ),
                ParagrafWidget(
                    content:
                        "   Saat berjalan-jalan di suatu tempat, tiba-tiba ada yang berteriak sambil menunjuk ke kalian, “Copeeeeet….” Banyak orang yang ada sekelilingmu menghakimi kalian, tanpa ada konfirmasi sebelumnya. Padahal, kalian tidak menjadi pelakunya. Kalau kejadian tersebut menimpamu, Bagaimana perasaanmu? "),
                ParagrafWidget(
                    content:
                        "   Peristiwa di atas, bisa saja terjadi di dunia media sosial kalian. Walaupun sudah menggunakan smartphone dengan teknologi yang canggih, di media sosial seringkali bersifat reaktif tanpa melakukan penyaringan dan konfirmasi. Dalam bahasa agama Islam, saat mendapatkan informasi dari media sosial, seringkali sengaja atau tidak, langsung diforward ke berbagai grup, tanpa ditashih dan tabayun terlebih dahulu. "),
                ParagrafWidget(
                    content:
                        "   Sekarang ini, dengan kecanggihan teknologi, dalam hitungan detik, sebuah informasi akan cepat menyebar ke seluruh dunia. Padahal dalam ajaran Islam diajarkan untuk: tabayyun terlebih dahulu, jangan menggunjing, jangan mencari-cari kesalahan orang lain, jangan mempermalukan orang lain di depan umum, jangan bersikap kasar, jangan bersikap sombong, jangan merusak kehormatan orang lain, jangan menganggap diri kalian suci, jangan mengafirkan sesama orang lain, jangan berbohong, dan seterusnya. "),
                ParagrafWidget(
                    content:
                        "   Terkadang interaksi di media sosial menjadi sama “berisiknya” seperti interaksi di pasar. Hanya bedanya, saat media sosial menggunakan smartphone zaman now, cara berkomunikasinya masih sama dengan interaksi di pasar. Terkadang apabila ada berita baik maupun buruk tentang seorang tokoh, tanpa ada verifikasi maupun tabayun kebenaran informasi tersebut, langsung dishare. Jadi yang menentukan benar dan salahnya bukan isi berita, melainkan apakah senang atau tidaknya dengan tokoh yang dibicarakan. Dalam ajaran agama Islam, kita semua diingatkan untuk bersikap adil meski terhadap kelompok atau orang yang tidak kita sukai."),
                ParagrafItalic(
                    content:
                        "(Sumber: Prof.Nadirsyah Hosen. 2019. Saring Sebelum Sharing. Yogyakarta: Bentang. 305-306) "),
              ],
            ),
          ),
          AktivitasWidget(
              activityTitle: "Aktivitas 8.2",
              contentText:
                  "Dari bacaan di atas, tulislah 3 kata kunci. Kemudian jelaskan maksudnya."),
          GWawasan(),
          ParagrafWidget(
              content:
                  "Semangat pagi calon pemimpin bangsa. Dalam kehidupan sehari-hari, kalian tidak bisa terlepas dari media sosial. Data We are Social Hootsuite Tahun 2020 bahwa pengguna aktif media sosial (medsos) di Indonesia sebesar 160 Juta. Dari fungsinya, ada yang menggunakan untuk kegiatan positif dan negatif. Media sosial bisa bermanfaat atau tidak tergantung pada penggunanya. "),
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
                    "Aktivitas 8.3",
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
                        "Jawablah pertanyaan ini dengan jujur sesuai kondisi kalian",
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                      ParagrafList(idlist: aktiv83)
                    ],
                  ),
                ),
              ],
            ),
          ),
          ParagrafWidget(
              content:
                  "   Untuk bisa memanfaatkan dan meminimalisir kelemahan, maka belajar adab dalam menggunakan media sosial dalam bab ini sangat penting untuk kalian. Adab ini tentunya tidak hanya teori, tetapi setelah itu bisa diterapkan dalam kehidupan sehari-hari. Penasaran, seperti apa adabnya, mari bersamasama belajar materi ini dengan baik. "),
          Heading2(title: "1. Pentingnya Adab menggunakan Media Sosial"),
          ParagrafWidget(
              content:
                  "Seiring dengan perkembangan teknologi dan internet, telah menghubungkan setiap manusia ke dalam sebuah dunia baru, dunia digital tanpa batas. Internet dapat menghubungkan berbagai belahan dunia yang tidak kenal sebelumnya dengan cara mengoneksikan komputer/HP dengan jaringan internet. Saat berinteraksi dengan pengguna internet di dalam jaringan, naluri manusia sebagai makhluk sosial muncul. Hal ini yang menjadi dasar munculnya media online (termasuk media sosial) yang mampu mewadahi para pengguna internet di seluruh dunia. "),
          ParagrafWidget(
              content:
                  "   Medsos sangat mempengaruhi kehidupan manusia. Dari bangun tidur sampai mau tidur, medsos berada dalam genggaman. Medsos mempunyai dampak positif dan negatif. Di antara manfaatnya adalah memudahkan dalam berkomunikasi, bersilaturahmi, dan kemudahan mendapatkan informasi. Selain itu medsos juga bermanfaat untuk media belajar dan bisnis."),
          ParagrafWidget(
              content:
                  "   Di sisi lain, medsos juga dapat berdampak negatif bagi penggunanya. Seperti hoaks, ujaran kebencian, perkelahian, pornografi, radikalisme, terorisme, dan lain-lain. Contoh nyata adalah hasil pantauan tim AIS Ditjen Aptika Kementerian Komunikasi dan Informatika per tanggal 5 Mei 2020 ada 1.401 konten hoaks dan disinformasi tentang Covid-19 yang beredar di masyarakat. Sedangkan dalam ujaran kebencian, data dari media tempo.co tanggal 20 November 2020, bahwa salah satu media sosial terbesar dari sepuluh ribu penayangan konten sepanjang bulan Juli-September 2020, terdapat sepuluh sampai sebelas unggahan yang mengandung ujaran kebencian. "),
          ParagrafWidget(
              content:
                  "   Dari penjelasan di atas, dalam bermedia sosial perlu ada adab. Adab ini untuk menghindari dari dampak negatif yang merugikan diri sendiri dan orang lain. Harapannya dengan adab bermedia sosial ini, semua penggunanya aman dan nyaman serta lebih bermanfaat. "),
          Heading2(title: "2. Pengertian Adab menggunakan Media Sosial"),
          ParagrafWidget(
              content:
                  "Secara bahasa, adab artinya adat istiadat; ia menunjukkan suatu kebiasaan, etiket, pola perilaku yang ditiru dari orang-orang yang dianggap sebagai model. Secara istilah adab adalah kebiasaan dan aturan tingkah laku praktis yang mempunyai muatan nilai baik yang diwariskan dari satu generasi ke generasi berikutnya"),
          ParagrafWidget(
              content:
                  "   Sedangkan media sosial yakni media berbasis Internet yang memungkinkan pengguna berkesempatan untuk berinteraksi dengan orang lain dan mempresentasikan dirinya dengan khalayak luas maupun terbatas yang dapat mendorong persepsi interaksi dengan orang lain. (Hendra A. Setyawan, 2017). Lebih lanjut ia menyatakan bahwa media sosial merupakan konten online yang dibuat dengan teknologi penerbitan yang sangat mudah diakses dan terukur."),
          ParagrafWidget(
              content:
                  "   Kemajuan teknologi sekarang berdampak pada cara komunikasi seseorang, berbagi berita, mencari informasi, gaya belajar, dan konten. Jenis media sosial yang banyak digunakan oleh masyarakat adalah facebook, instagram, twitter, telegram, whatsapp, kaskus, dan lain-lain."),
          ParagrafWidget(
              content:
                  "   Dari penjelasan tersebut, maksud adab menggunakan media sosial adalah suatu sikap dan perilaku yang harus dikedepankan ketika berinteraksi dengan orang lain ketika menggunakan media sosial."),
          Heading2(title: "3. Dasar Naqli"),
          ParagrafWidget(
              content:
                  "Meskipun, zaman Nabi Muhammad Saw. belum ada media sosial, tetapi rambu-rambu dalam berinteraksinya diajarkan dalam Al-Qur’an dan Hadis. Di antara dalil naqli tentang menggunakan media sosial terdapat dalam Q.S. Al-Hujurat/49: 6 berikut ini."),
          QuranWidget(
              arab:
                  "يٰٓاَيُّهَا الَّذِيْنَ اٰمَنُوْٓا اِنْ جَاۤءَكُمْ فَاسِقٌ ۢ  بِنَبَاٍ فَتَبَيَّنُوْٓا اَنْ تُصِيْبُوْا قَوْمًاۢ بِجَهَالَةٍ فَتُصْبِحُوْا عَلٰى مَا فَعَلْتُمْ نٰدِمِيْنَ  (الحجرٰت/ ٤٩: ٦)"),
          VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F08%20SURAH%20ALHUJURAT%2006.mp3?alt=media&token=dc1b498f-2097-4322-b612-ab37cd611673"),
          Terjemahan(
              content:
                  "Wahai orang-orang yang beriman! Jika seseorang yang fasik datang kepadamu membawa suatu berita, maka telitilah kebenarannya, agar kalian tidak mencelakakan suatu kaum karena kebodohan (kecerobohan), yang akhirnya kamu menyesali perbuatanmu itu.",
              riwayat: " (Q.S. Al-Hujurāt/49:6)."),
          ParagrafWidget(
              content:
                  "   Dari ayat di atas dapat diketahui bahwa ketika menerima sebuah informasi termasuk di dalamnya mendapatkan informasi dari media sosial, maka perlu dicek kebenaran informasi yang kalian terima. Pengecekan informasi tersebut bisa menanyakan ke pemberi informasi atau mengecek ke sumber-sumber resmi yang bisa dipertanggungjawabkan. Apabila kalian mendapatkan informasi tanpa diteliti kebenarannya, seperti yang dijelaskan Q.S. Al-Hujurat/49: 6 agar kamu tidak mencelakakan suatu kaum karena kebodohannya yang akhirnya kalian akan menyesali perbuatan yang telah dilakukan."),
          ParagrafWidget(
              content:
                  "   Sedangkan dalam hadis Nabi Muhammad Saw. memberikan arahan dalam menggunakan media sosial sebagai berikut."),
          QuranWidget(
              arab:
                  "عَنْ أَبِي الْخَيْرِ أَنَّهُ سَمِعَ عَبْدَ اللّٰهِ بْنَ عَمْرِو بْنِ الْعَاصِ يَقُولُ إِنَّ رَجُلًا سَأَلَ رَسُوْلَ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ أَيُّ الْمُسْلِمِينَ خَيْرٌ قَالَ مَنْ سَلِمَ الْمُسْلِمُوْنَ مِنْ لِسَانِهِ وَيَدِهِ (رواه مسلم)"),
          Terjemahan(
              content:
                  "Dari Abu al-Khair bahwa dia mendengar ‘Abdullah bin Amr bin al-Ash keduanya berkata, “Sesungguhnya seorang laki-laki bertanya kepada Rasulullah saw, “Muslim yang bagaimana yang paling baik?” Beliau menjawab: “Yaitu seorang muslim yang orang lain merasa aman dari gangguan lisan dan tangannya.”",
              riwayat: "(H.R. Muslim)"),
          ParagrafWidget(
              content:
                  "   Dari hadis di atas dikaitkan dengan adab dalam menggunakan media sosial, agar seorang muslim dalam berinteraksi dengan orang lain merasakan aman dari gangguan dalam bentuk lisan maupun update status atau komentar dalam menggunakan media sosial."),
          AktivitasWidget(
              activityTitle: "Aktivitas 8.4",
              contentText:
                  "Carilah dasar naqli selain satu ayat Al-Qur’an atau hadis, selain yang ada di atas. Kemudian jelaskan kaitannya dengan adab dalam bermedia sosial."),
          Heading2(title: "4. Adab menggunakan Media Sosial"),
          ParagrafWidget(
              content:
                  "Dalam menggunakan media sosial perlu adab bagi penggunanya. Apa saja adabnya, silahkan kalian simak penjelasan berikut ini."),
          Heading3(title: "a. Niat yang baik"),
          ParagrafWidget(
              content:
                  "Dalam agama Islam, kedudukan niat sangatlah penting, tidak hanya karena merupakan rukun dari suatu ibadah, tetapi niat akan membimbing kesadaran dan sikap seorang muslim dalam melakukan kegiatan sehari-hari. Bahkan dengan nilai suatu perbuatan akan ditentukan sesuai dengan niatnya. Seperti sabda Rasulullah Saw.:"),
          QuranWidget(
              arab:
                  "عَنْ عُمَرَ بْنِ الْخَطَّابِ قَالَ: قَالَ رَسُوْلُ اللّٰهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ: إِنَّمَا الْأَعْمَالُ بِالنِّيَّاتِ وَإِنَّمَا لِكُلِّ امْرِئٍ مَا نَوَى فَمَنْ كَانَتْ هِجْرَتُهُ إِلَى اللّٰهِ وَرَسُوْلِهِ ، فَهِجْرَتُهُ إِلَى اللهِ وَرَسُوْلِهِ ، وَمَنْ كَانَتْ هِجْرَتُهُ لِدُنْيَا يُصِيْبُهَا أَوِ امْرَأَةٍ يَتَزَوَّجُهَا فَهِجْرَتُهُ إِلَى مَا هَاجَرَ إِلَيْهِ (رواه مسلم)"),
          Terjemahan(
              content:
                  "Dari ‘Umar bin al-Khattab ra ia berkata, Rasulullah Saw. bersabda, sesungguhnya amal perbuatan ditentukan dengan niatnya. Sesungguhnya setiap orang mendapatkan sesuai dengan niatnya. Siapa yang hijrah dengan niat kepada Allah dan Rasulnya, maka hijrahnya kepada Allah dan rasulnya. Dan siapa yang hijrah dengan niat memperoleh dunia atau menikahi seorang perempuan, maka hijrahnya sesuai dengan yang ia niatkan. ",
              riwayat: "(H.R. Muslim). "),
          ParagrafWidget(
              content:
                  "   Imam al-Nawawi menjelaskan maksud hadis di atas adalah amal perbuatan dinilai sesuai dengan niatnya. Dalam hadits tersebut dicontohkan bahwa seseorang yang hijrah dengan niat karena Allah dan Rasulullah, pahala dari hijrah itu akan didapatkannya kelak di akhirat. Apabila ada yang berniat hijrah untuk mendapatkan harta atau perempuan, maka ia hanya akan memperoleh balasan duniawi sesuai yang dia niatkan. Karenanya dalam bermedia sosial diniatkan lillāhi ta’āla. Hal ini sesuai dengan Q.S. Al-An’am/6: 162-163."),
          AktivitasWidget(
              activityTitle: "Aktivitas 8.5",
              contentText:
                  "Carilah teks Q.S. Al-An’am/6: 162-163, terjemahan, tafsir dan bagaimana hubungannya dengan bermedia sosial!"),
          ParagrafWidget(
              content:
                  "   Penjelasan di atas menunjukkan pentingnya sebuah niat. Dalam Kitab Ta’lim al-Muta’alim, Imam al-Zarnuji menyebutkan banyak perbuatan yang secara lahiriah adalah amal duniawi, tetapi karena baiknya niat akan menjadi amal akhirat (bernilai ibadah) jika diniati dengan niat yang baik. Sebaliknya amal akhirat (ibadah) jika niatnya tidak baik akan menjadi amal dunia (tidak dinilai sebagai ibadah yang berpahala)."),
          ParagrafWidget(
              content:
                  "   Dari hadis dan penjelasan di atas dihubungkan dengan menggunakan media sosial pun perlu diniati dengan baik agar mempunyai nilai ibadah dan mendatangkan manfaat bagi diri sendiri maupun orang lain. "),
          Heading3(title: "b. Memilih teman yang baik"),
          ParagrafWidget(
              content:
                  "Dalam bermedia sosial, tentu kalian akan bertemu dan berinteraksi dengan banyak orang dari berbagai negara. Pilihlah teman di media sosial yang baik untuk menambah silaturrahim, saling berbagi informasi yang baik, dan saling mengingatkan untuk melakukan perbuatan positif. Apabila ada teman di media sosial mengajak ke hal yang bertentangan ajaran agama dan norma sosial, maka kalian harus berani mengatakan TIDAK. Banyak kasus dalam pertemanan di media sosial, terjerumus ke perbuatan yang dilarang agama dan hukum yang berlaku di Indonesia. "),
          ParagrafWidget(
              content:
                  "   Terkait memilih teman, Nabi Muhammad Saw. telah memberikan gambaran perbedaan antara teman yang baik dan yang tidak baik:"),
          QuranWidget(
              arab:
                  "عَنْ أَبِي مُوسَى رَضِيَ اللهُ عَنْهُ عَنِ النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ: مَثَلُ الجَلِيْسِ الصَّالِحِ وَالسَّوْءِ كَحَامِلِ الْمِسْكِ وَنَافِخِ الْكِيْرِ فَحَامِلُ الْمِسْكِ: إِمَّا أَنْ يُحْذِيَكَ وَإِمَّا أَنْ تَبْتَاعَ مِنْهُ وَإِمَّا أَنْ تَجِدَ مِنْهُ رِيْحًا طَيِّبَةً وَنَافِخُ الْكِيْرِ: إِمَّا أَنْ يُحْرِقَ ثِيَابَكَ وَإِمَّا أَنْ تَجِدَ رِيْحًا خَبِيْثَةً (رواه البخاري)"),
          Terjemahan(
              content:
                  "Dari Abi Musa ra., dari Nabi Saw. bersabda: perumpamaan teman duduk yang baik dengan teman duduk yang buruk adalah seperti penjual minyak misik (yang wangi) dan seorang pandai besi. Penjual minyak misik terkadang ia menawarkan minyaknya dan terkadang ia akan menjualnya kepadamu dan terkadang kamu yang akan mendapatkan aroma wanginya. Adapun pandai besi adakalanya ia akan membakar pakaianmu dan adakalanya kamu akan mendapatkan bau yang tidak sedap.",
              riwayat: " (H.R. Al-Bukhāri)"),
          Heading3(
              title:
                  "c. Meneliti fakta atau kebenaran informasi yang diterima"),
          ParagrafWidget(
              content:
                  "Dalam berinteraksi media sosial, kalian pasti pernah menerima informasi dari teman, baik berupa teks/tulisan, foto atau video. Terkadang setelah menerima informasi tersebut, kalian ingin mengirim kembali informasi tersebut ke berbagai grup lain. Sebelum mengirim, teliti kebenaran beritanya. "),
          ParagrafWidget(
              content:
                  "   Meneliti kebenaran berita yang didapat dari media sosial merupakan hal yang paling utama. Saring sebelum sharing ke media sosial. Kebenaran ini akan menjadikan apa yang kalian sampaikan di medsos bisa dipertanggungjawabkan baik di dunia dan akhirat. Hal ini sebagaimana dijelaskan dalam Q.S. Al-Hujurat/49: 6 pada halaman sebelumnya."),
          Heading3(
              title:
                  "d. Menyampaikan informasi tanpa rekayasa atau manipulasi"),
          ParagrafWidget(
              content:
                  "Berita bohong atau hoax biasa dimulai dari mengedit, merekayasa dan memanipulasi informasi yang ada di dalam sebuah berita. Padahal hal ini dilarang dalam Islam. Maka sebagai muslim yang baik, hendaknya tidak merekayasa dan memanipulasi informasi. Hal ini sebagaimana yang dijelaskan dalam Q.S. Al-Hajj/22: 30 di bawah ini:"),
          QuranWidget(
              arab: "وَاجْتَنِبُوْا قَوْلَ الزُّوْرِ ۙ  (الحج/ ٢٢: ٣٠)...."),
          VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F08%20surah-alhajj30.mp3?alt=media&token=0e77c30f-5ec2-4f6b-ada2-6a7fb27c085c"),
          ParagrafItalic(
              content: "“Jauhilah olehmu perkataan-perkataan dusta.”"),
          Heading3(title: "e. Mengajak kepada kebaikan"),
          ParagrafWidget(
              content:
                  "Media sosial tidak hanya media untuk bersilaturrahmi dengan berbagai kalangan. Tetapi juga dapat dijadikan sebagai media mengajak kepada kebaikan secara lebih luas. Terlebih lagi data Kementerian Komunikasi dan Informatika per tanggal 5 Mei 2020 ada 1.401 konten hoaks dan disinformasi tentang Covid-19 yang beredar di masyarakat. Sedangkan dalam ujaran kebencian, data dari media tempo.co tanggal 20 November 2020, bahwa salah satu media sosial terbesar dari sepuluh ribu penayangan konten sepanjang bulan Juli-September 2020, terdapat sepuluh sampai sebelas unggahan yang mengandung ujaran kebencian. Dari data tersebut, seharusnya media sosial menjadi ladang dakwah kalian untuk menyeru kebaikan dan menebarkan perdamaian. Sehingga orang-orang akan tetap tergerak hatinya untuk mengikuti kebaikan. Nabi Muhammad Saw. bersabda:"),
          QuranWidget(
              arab:
                  "عَنْ أَبِي مَسْعُودٍ الْأَنْصَارِيِّ ... فَقَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: مَنْ دَلَّ عَلَى خَيْرٍ فَلَهُ مِثْلُ أَجْرِ فَاعِلِهِ (رواه مسلم)"),
          Terjemahan(
              content:
                  "Dari Abi Mas’ud al-Anshari………lalu Rasulullah Saw. bersabda: Barangsiapa yang menunjukkan kepada kebaikan, maka orang tersebut akan mendapatkan pahala sama seperti orang yang menjalankan kebaikan tersebut.",
              riwayat: "(H.R. Muslim)."),
          ParagrafWidget(
              content:
                  "   Melalui hadis ini Nabi menjelaskan keutamaan orang yang menunjukkan kebaikan kepada orang lain, yaitu akan mendapatkan pahala sama seperti orang yang melakukan kebaikan tersebut sebab amal yang dia lakukan (menunjukkan kebaikan). Oleh karena itu, dalam bermedsos seorang muslim harus berperan aktif mengajak kepada kebaikan, misalnya dengan memposting kegiatan-kegiatan positif, meluruskan informasi bohong atau hoaks yang sudah menyebar, dan membuat konten positif."),
          Heading3(
              title:
                  "f. Menyampaikan informasi atau memberikan komentar sebaiknya dengan cara yang baik."),
          ParagrafWidget(
              content:
                  "Dalam menggunakan media sosial, seringkali kalian menyampaikan informasi. Sampaikan informasi di media sosial kalian dengan cara yang baik. Begitu juga saat memberikan komentar teman kalian, sampaikan dengan cara yang baik pula. Hal ini sesuai dengan firman Allah Swt. dalam Q.S. An-Nahl/16: 125: "),
          QuranWidget(
              arab:
                  "اُدْعُ اِلٰى سَبِيْلِ رَبِّكَ بِالْحِكْمَةِ وَالْمَوْعِظَةِ الْحَسَنَةِ وَجَادِلْهُمْ بِالَّتِيْ هِيَ اَحْسَنُۗ اِنَّ رَبَّكَ هُوَ اَعْلَمُ بِمَنْ ضَلَّ عَنْ سَبِيْلِهٖ وَهُوَ اَعْلَمُ بِالْمُهْتَدِيْنَ "),
          VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F08%20Surah%20ANNAHL%20125.mp3?alt=media&token=608a606c-7f47-4faf-80fa-a45506fa29bf"),
          Terjemahan(
              content:
                  "“Serulah (manusia) kepada jalan Tuhan-mu dengan hikmah dan pelajaran yang baik dan bantahlah mereka dengan cara yang baik. Sesungguhnya Tuhanmu Dialah yang lebih mengetahui tentang siapa yang tersesat dari jalan-Nya dan Dialah yang lebih mengetahui orang-orang yang mendapat petunjuk” ",
              riwayat: "(QS. An-Nahl/16: 125)."),
          Heading3(
              title:
                  "g. Dalam menggunakan media sosial, hindarilah bahasa yang menyinggung atau menyakiti atau menghina orang lain"),
          ParagrafWidget(
              content:
                  "Menggunakan media sosial dengan bahasa yang menyinggung atau menyakiti atau mencaci-maki, atau menghina orang lain dapat menumbuhkan kebencian dan pertikaian dengan orang lain. Dengan kata lain segala bentuk perbuatan buruk harus dihindari dalam berinteraksi baik di dunia nyata ataupun di media sosial, seperti: menghasut, ujaran kebencian, menyebarkan berita bohong, dan acuh-tak acuh. Sebagaimana dijelaskan Nabi Muhammad Saw. dalam hadis berikut ini:"),
          QuranWidget(
              arab:
                  "عَنْ أَبِيْ هُرَيْرَةَ ، قَالَ : قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: لَا تَحَاسَدُوْا . وَلَا تَنَاجَشُوْا وَلَا تَبَاغَضُوْا وَلَا تَدَابَرُوْا وَلَا يَبِعْ بَعْضُكُمْ عَلَى بَيْعِ بَعْضٍ. وَكُوْنُوْا عِبَادَ اللّٰهِ إِخْوَانًا الْمُسْلِمُ أَخُو الْمُسْلِمِ لَا يَظْلِمُهُ وَلَا يَخْذُلُهُ وَلَا يَحْقِرُهُ التَّقْوَى هَاهُنَا وَيُشِيْرُ إِلَى صَدْرِهِ ثَلَاثَ مَرَّاتٍ بِحَسْبِ أَمْرِئٍ مِنَ الشَّرِّ أَنْ يَحْقِرَ أَخَاهُ الْمُسْلِمِ كُلُّ الْمُسْلِمَ عَلَى الْمُسْلِمِ حَرَامٌ دَمُهُ وَمَالُهُ .وَعِرْضُهُ (رواه مسلم)"),
          Terjemahan(
              content:
                  "Dari Abu Hurairah berkata, Rasulullas Saw. bersabda: janganlah kalian semua saling hasad/iri dengki, saling menipu, saling membenci, saling acuh tak acuh, dan janganlah sebagian dari kalian menjual barang yang sudah dijual ke orang lain (sudah ditawar dan akan dibeli orang lain), jadilah kalian semua hamba-hamba Allah yang bersaudara. Seorang muslim adalah saudara bagi muslim yang lainnya, janganlah seorang muslim menzhaliminya, jangan menipunya dan janganlah menghinanya. Taqwa ada di sini, Rasul sambil menunjuk pada dada beliau tiga kali. Cukuplah seseorang dinilai buruk jika ia merendahkan/menghina saudaranya yang muslim. Setiap muslim bagi muslim yang lain haram darahnya, hartanya, dan harga dirinya. ",
              riwayat: "(H.R. Muslim)."),
          Heading3(title: "h. Bersikap Bijak"),
          ParagrafWidget(
              content:
                  "Muslim yang baik tentu mereka yang bijak dalam menggunakan media sosial. Caranya dengan mengedepankan logika dan perasaan ketika berbagi nasihat yang baik ataupun status di medsos. Bijak dalam bermedsos berarti memahami bahwa setiap orang yang menjalin pertemanan di medsos, memiliki latar belakang yang berbeda. Mereka memiliki karakter, pengetahuan, wawasan serta pola pikir yang berbeda-beda, sehingga ketika mengirim informasi ke media sosial harus lebih berhati-hati agar tidak ada yang tersinggung. Tidak hanya itu, termasuk bersikap bijak dalam menggunakan media sosial adalah kalian dapat menjauhkan diri dari segala hal yang tidak bermanfaat. Hal ini merupakan salah satu karakter dari seorang muslim adalah dapat meninggalkan sesuatu yang tidak bermanfaat. Rasulullah saw bersabda:"),
          QuranWidget(
              arab:
                  "عَنْ أَبِي هُرَيْرَةَ ، قَالَ : قَالَ رَسُوْلُ اللّٰهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ: مِنْ حُسْنِ إِسْلَامِ الْمَرْءِ تَرْكُهُ مَا لَا يَعْنِيْهِ (رواه الترمذي)"),
          Terjemahan(
              content:
                  "Dari Abu Hurairah berkata, Rasulullah Saw. bersabda sebagian dari kebaikan Islam seseorang adalah ia meninggalkan sesuatu yang tidak bermanfaat baginya.",
              riwayat: "(H.R. Al-Tirmidzī)"),
          Heading3(title: "i. Dapat mengambil hikmah (kebaikan)"),
          ParagrafWidget(
              content:
                  "Apa yang ada di media sosial, tidak seluruhnya baik, dan tidak seluruhnya buruk. Dengan kata lain ada yang buruk dan ada yang baik. Pada penjelasan sebelumnya, kalian sebagai muslim diajarkan untuk bisa meninggalkan hal-hal buruk yang tidak memberikan manfaat. Selain itu, karena media sosial juga mengandung banyak kebaikan dan hal-hal positif bagi umat muslim, maka kalian harus selalu bisa mengambil manfaat dan kebaikan dari media sosial. hal ini sudah dianjurkan Rasulullah Saw. sebagaimana dalam hadits berikut ini:"),
          QuranWidget(
              arab:
                  "عَنْ أَبِي هُرَيْرَةَ، قَالَ: قَالَ رَسُوْلُ اللّٰهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ: الْكَلِمَةُ الْحِكْمَةُ ضَالَّةَ الْمُؤْمِنِ فَحَيْثُ وَجَدَهَا فَهُوَ أَحَقُّ بِهَا (رواه الترمذي)"),
          Terjemahan(
              content:
                  "Dari Abu Hurairah berkata, Rasulullah Saw. bersabda: kalimat yang mengandung hikmah (kebaikan) adalah sesuatu yang hilang dari orang mukmin, maka ketika seorang mukmin menemukannya ia lebih berhak untuk mengambilnya.",
              riwayat: " (HR. Al-Tirmidzi)"),
          ParagrafWidget(
              content:
                  "   Dari hadis tersebut Nabi memberikan motivasi kepada umat muslim agar selalu mencari dan mengambil kebaikan dari segala sumber. Dalam hadis ini disebutkan “sesuatu yang hilang dari orang mukmin” ini menunjukkan bahwa dalam mencari kebaikan harus dengan keinginan yang kuat seperti ketika mencari barang milik kalian yang hilang. Selain itu, hadis ini mengajarkan bahwa seorang mukmin tidak hanya cukup mengajarkan kebaikan, tetapi harus selalu mencari kebaikan-kebaikan juga."),
          AktivitasWidget(
              activityTitle: "Aktivitas 8.6",
              contentText:
                  "Setelah mempelajari adab bermedia sosial, buatlah flyer tentang ajakan untuk berbuat baik kepada sesama. Setelah itu hasilnya dishare di media sosial yang kalian punya. "),
          Heading2(title: "5. Penerapan Karakter dalam Adab Bermedia Sosial"),
          ParagrafWidget(
              content:
                  "Ada beberapa hal yang dapat diterapkankan dalam menggunakan media sosial agar tetap nyaman, yaitu."),
          ParagrafListAbjad(idlist: adab_bermedia),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                QuranWidget(
                    arab:
                        "يٰٓاَيُّهَا الَّذِيْنَ اٰمَنُوا اجْتَنِبُوْا كَثِيْرًا مِّنَ الظَّنِّۖ اِنَّ بَعْضَ الظَّنِّ اِثْمٌ وَّلَا تَجَسَّسُوْا وَلَا يَغْتَبْ بَّعْضُكُمْ بَعْضًاۗ اَيُحِبُّ اَحَدُكُمْ اَنْ يَّأْكُلَ لَحْمَ اَخِيْهِ مَيْتًا فَكَرِهْتُمُوْهُۗ وَاتَّقُوا اللّٰهَ ۗاِنَّ اللّٰهَ تَوَّابٌ رَّحِيْمٌ (الحرٰت /٤٩: ١٢)"),
                VoicePlay(
                    audioUrl:
                        "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F08%20surah-alhujurat-%2012.mp3?alt=media&token=69dbeb72-b291-471e-ab1e-34187498d33d"),
                Terjemahan(
                    content:
                        "“Hai orang-orang yang beriman, jauhilah kebanyakan purba-sangka (kecurigaan), karena sebagian dari prasangka itu dosa. Dan janganlah mencari-cari keburukan orang dan janganlah menggunjingkan satu sama lain. Adakah seorang diantara kamu yang suka memakan daging saudaranya yang sudah mati? Maka tentulah kamu merasa jijik kepadanya. Dan bertakwalah kepada Allah. Sesungguhnya Allah Maha Penerima Taubat lagi Maha Penyayang.”",
                    riwayat: "  (Q.S. Al-Hujurāt/49: 12)."),
              ],
            ),
          ),
          ParagrafListCostum2(
              no: "c",
              content:
                  "Gunakan media sosial yang sehat dengan mengupload status atau informasi di grup yang bermanfaat bagi anggota. Hindarkan isi status atau komentar yang menyinggung SARA (suku, agama, ras, dan antargolongan). Selain itu jangan ada muatan radikalisme, intoleransi, kekerasan, dan terorisme;"),
          ParagrafListCostum2(
              no: "d",
              content:
                  "Apabila dalam interaksi di media sosial ada perbedaan pendapat, anggota grup harus saling menghormati. Utamakan persatuan. Jangan sampai perbedaan pendapat di grup berdampak pada hubungan secara langsung maupun tidak langsung;"),
          ParagrafListCostum2(
              no: "e",
              content:
                  "Tidak memproduksi dan menyebarkan berita bohong (hoax) dan ujaran kebencian (hatespeech) di media sosial."),
          Heading2(title: "6. Hikmah Adab Bermedia Sosial"),
          ParagrafWidget(
              content:
                  "Ada beberapa hikmah yang akan kalian dapatkan apabila mematuhi adab dalam bermedia sosial, yaitu:"),
          ParagrafListAbjad(idlist: hikmahadab),
          HPenerapan(),
          TabelPenerapanKarakterWidget(idlist: tabelPenKarakter8),
          IReflek(),
          Refleksi(
              content:
                  "Setelah mempelajari materi tentang Adab bermedia sosial, manfaat apa saja yang kalian rasakan dalam kehidupan sehari-hari?\nTuliskan 3 manfaatnya di bawah ini.\n1. ………………………………………………………………………………\n2. ………………………………………………………………………………\n3. ………………………………………………………………………………"),
          JRangkum(),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: purpleBagroundLight,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ParagrafList(idlist: jRanguman8),
          ),
          KPenilai(),
          Heading2(title: "1. Penilaian Diri"),
          PenilaianDiri2(idlist: tabelPenilaiandiri8),
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
                Get.to(PSikap8());
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
          Heading3(
              title:
                  "a. Pilihlah salah satu jawaban yang tepat pada salah satu huruf jawaban a, b, c, d atau e"),
          Container(
            margin: const EdgeInsets.only(top: 4),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: black),
                color: const Color(0xFFF3F3F4),
                borderRadius: BorderRadius.circular(2)),
            height: 280,
            child: PilihanGandaSoal(daftarSoal: pilihanGanda8),
          ),
          SizedBox(
            height: 12,
          ),
          Heading3(
              title:
                  "Jawablah pertanyaan-pertanyaan di bawah ini dengan jelas dan tepat!"),
          ParagrafList(idlist: uraian8),
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
                Get.to(PPengetahuan8());
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
          ParagrafListAbjad(idlist: penKet),
          const IPengaya(),
          ParagrafWidget(
              content:
                  "Setelah kalian selesai mempelajari materi adab bermedia sosial, kalian bisa menambah pengetahuan kalian dengan membaca buku-buku dibawah ini: "),
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
                  TextSpan(text: "Harjani Hefni. 2017. "),
                  TextSpan(
                      text: "Komunikasi Islam.  ",
                      style: regular_paragraf.copyWith(
                          fontStyle: FontStyle.italic)),
                  TextSpan(text: "Jakarta: Prenadamedia Grup."),
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
                  TextSpan(text: "Hosen, Nadirsyah. 2019. "),
                  TextSpan(
                      text: "Saring Sebelum Sharing. ",
                      style: regular_paragraf.copyWith(
                          fontStyle: FontStyle.italic)),
                  TextSpan(text: "Yogyakarta: Bentang."),
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
                  TextSpan(text: "Juminem. "),
                  TextSpan(
                      text: "Adab Bermedia Sosial dalam Pandangan Islam.  ",
                      style: regular_paragraf.copyWith(
                          fontStyle: FontStyle.italic)),
                  TextSpan(
                      text:
                          "Jurnal Pendidikan Agama Islam. Vol. 6 No. 1 (Januari-Juni 2019)."),
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
                  "4. ",
                  style: regular_paragraf,
                  textAlign: TextAlign.justify,
                ),
              ),
              Expanded(
                  child: RichText(
                text: TextSpan(style: regular_paragraf, children: <TextSpan>[
                  TextSpan(text: "Setyawan, Hendra A. 2017. "),
                  TextSpan(
                      text:
                          "Fikih Informasi di Era Media Sosial dalam Membangun Komunikasi Beretika. ",
                      style: regular_paragraf.copyWith(
                          fontStyle: FontStyle.italic)),
                  TextSpan(
                      text:
                          "Makalah disampaikan pada Seminar Nasional dengan Tema "),
                  TextSpan(
                      text:
                          "Membangun Etika Sosial Politik Menuju 147 Masyarakat Yang Berkeadilan. ",
                      style: regular_paragraf.copyWith(
                          fontStyle: FontStyle.italic)),
                  TextSpan(
                      text:
                          "Dilaksanakan oleh FISIP Universitas Lampung pada 18 Oktober 2017 di Hotel Swiss Bell Bandar Lampung."),
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
                    TextSpan(text: "Sumadi, Eko. "),
                    TextSpan(
                        text: "Dakwah dan Media Sosial:  ",
                        style: regular_paragraf.copyWith(
                            fontStyle: FontStyle.italic)),
                    TextSpan(
                        text:
                            "Menebar Kebaikan Tanpa Diskrimasi. AT-TABSYIR: Jurnal Komunikasi Penyiaran Islam. Vol. 4, No. 1 Juni 2016."),
                  ]),
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
          Pembatas(),
        ],
      ),
    );
  }
}
