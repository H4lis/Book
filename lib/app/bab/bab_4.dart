import 'package:book/app/assingnment/p_pengetahuan_4.dart';
import 'package:book/app/assingnment/p_sikap_4.dart';
import 'package:book/app/data/bab_2_model/tadabbur_model.dart';
import 'package:book/app/data/tabel_penerapan_karakter.dart';
import 'package:book/app/widgets/aktivitas_widget.dart';
import 'package:book/app/widgets/app_bar_widget.dart';
import 'package:book/app/widgets/bab_1_widget/tabel_penilaian_sikap.dart';
import 'package:book/app/widgets/baground_orange_kata_kunci.dart';
import 'package:book/app/widgets/border_black.dart';
import 'package:book/app/widgets/bulled_list.dart';
import 'package:book/app/widgets/heading_2.dart';
import 'package:book/app/widgets/heading_3.dart';
import 'package:book/app/widgets/list_paragraf.dart';
import 'package:book/app/widgets/paragraf_italic.dart';
import 'package:book/app/widgets/paragraf_list_abjad.dart';
import 'package:book/app/widgets/paragraf_list_costum.dart';
import 'package:book/app/widgets/paragraf_widget.dart';
import 'package:book/app/widgets/quran_widget.dart';
import 'package:book/app/widgets/sampul_bab.dart';
import 'package:book/app/widgets/tadabbur.dart';
import 'package:book/app/widgets/terjemahan_widget.dart';
import 'package:book/app/widgets/voice_play.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../data/bab_1_model/tabel_penilaian_sikap_d.dart';

import 'package:book/app/widgets/tabel_penerapan_karakter.dart';

import '../data/bab_4..model/list_paragraf_4.dart';
import '../data/kata_kunci.dart';
import '../data/pilihan_ganda.dart';
import '../modules/SideMenu/views/side_menu_view.dart';
import '../shared/constant.dart';
import '../widgets/bab_1_widget/pilihanganda.dart';
import '../widgets/bab_4_widget/tabel_persamaab.dart';
import '../widgets/image_paragraf.dart';
import '../widgets/jawablah.dart';
import '../widgets/pembatas.dart';
import '../widgets/sub_bab.dart';
import '../widgets/voice_play_orange.dart';

class Bab4 extends StatelessWidget {
  const Bab4({super.key});

  @override
  Widget build(BuildContext context) {
     YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'd1JHqQLm36o', 
      flags: const YoutubePlayerFlags(
        autoPlay: false
      )
    );
    return Scaffold(
      drawer: const SideMenuView(),
      appBar: const AppBarWidget(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          const SampulBab(
              title: "Bab 4",
              contentImage: "bab_4",
              description:
                  "Menebarkan Islam dengan Santun dan Damai Melalui Dakwah, Khutbah, dan Tablig"),
          const ATujuan(),
       
   
          ParagrafWidget(
              content: "Setelah mempelajari materi ini, kalian dapat: "),
          ParagrafList(idlist: tujPembelajaran),
          const BKata(),
          BagroundOrangeKataKunci(idlist: kataKunciBab4),
          const CInfo(),
          Image.asset(
            "assets/images/infografis4.jpg",
          ),
          const SizedBox(height: 10,),
                 YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,  
            onReady: () {
        
            },
          ),
          const DAyo(),
          ParagrafList(idlist: ayotad4),
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
                    "Aktivitas 4.1", // Use the activityTitle parameter here
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
                        "Aktivitas Peserta Didik:\nSaatnya, kita tadarrus Q.S. Ali-Imrān/3: 104, dan Q.S. al-Nahl/16: 125 berikut ini, lalu salah satu peserta didik membacakan terjemahnya!", // Use the contentText parameter here
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                      const QuranWidget(
                          arab:
                              "وَلْتَكُنْ مِّنْكُمْ اُمَّةٌ يَّدْعُوْنَ اِلَى الْخَيْرِ وَيَأْمُرُوْنَ بِالْمَعْرُوْفِ وَيَنْهَوْنَ عَنِ الْمُنْكَرِ ۗ وَاُولٰۤىِٕكَ هُمُ الْمُفْلِحُوْنَ   (اٰل عمران/٣ :١٠٤)"),
                      const VoicePlayOrange(
                          audioUrl:
                              "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F04%20Ali-Imr%C4%81n%20104.mp3?alt=media&token=18b4826f-604a-4084-b119-57c943d1f6ea"),
                      const QuranWidget(
                          arab:
                              "اُدْعُ اِلٰى سَبِيْلِ رَبِّكَ بِالْحِكْمَةِ وَالْمَوْعِظَةِ الْحَسَنَةِ وَجَادِلْهُمْ بِالَّتِيْ هِيَ اَحْسَنُۗ اِنَّ رَبَّكَ هُوَ اَعْلَمُ بِمَنْ ضَلَّ عَنْ سَبِيْلِهٖ وَهُوَ اَعْلَمُ بِالْمُهْتَدِيْنَ   (النحل/١٦ :١٢٥) "),
                      const VoicePlayOrange(
                          audioUrl:
                              "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F04%20%20al-Nahl%20125.mp3?alt=media&token=fccdd810-8048-4574-859f-8eec60fb163c&_gl=1*15ovhrq*_ga*ODY4Mjc1MjUwLjE2OTE2NDUxNjU.*_ga_CW55HF8NVT*MTY5NTg2MDg5MS41My4xLjE2OTU4NjA5MjcuMjQuMC4w")
                    ],
                  ),
                ),
              ],
            ),
          ),
          const ETadabb(),
          const AktivitasWidget(
              activityTitle: "Aktivitas 4.2",
              contentText:
                  "Amati gambar atau ilustrasi berikut ini! Lalu berilah tanggapan kalian yang dikaitkan dengan materi ajar yang dipelajari, yakni: Dakwah, Khutbah, dan Tablig!"),
          Tadabbur(idlist: tadabbur4),
          const FKisah(),
          const AktivitasWidget(
              activityTitle: "Aktivitas 4.3",
              contentText:
                  "Pahami dan renungkan artikel berikut ini, sebagai bagian dari pemahaman materi ajar yang akan dipelajari!"),
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
                    "Dai Pemberani",
                    style: h1.copyWith(color: orange),
                  ),
                ),
                ParagrafWidget(
                    content:
                        "   Kekalahan umat Islam di perang Uhud, membangkitkan kemarahan orang badui di sekitar Madinah tentang dendam lama yang terpendam. Namun tanpa curiga, Rasulullah Saw. memberikan sambutan baik bagi yang ingin memeluk Islam. Karena itu, mereka meminta para juru dakwah (dai) hadir di kampungnya. Akhirnya, diutus enam sahabat. Mereka berangkat bersama para pedagang Arab. "),
                ParagrafWidget(
                    content:
                        "   Sesampai di kampung ar-Raji, wilayah kekuasaan suku Huzail, para pedagang itu tiba-tiba melakukan penyerangan kepada enam sahabat tersebut, sambil meminta bantuan kepada kaum Huzail. Keenam dai itu siap melakukan perlawanan, setelah sadar mereka dijebak."),
                ParagrafWidget(
                    content:
                        "   Para pedagang licik itu berteriak, “Sabar! Kami tidak bermaksud membunuh atau menganiaya kalian. Cuma ingin menangkap untuk dijual ke Makkah sebagai budak. Keenam sahabat dalam posisi sulit, bahkan bisa jadi terbunuh. Mereka bertakbir sambil menyerang dengan tangkas."),
                ParagrafWidget(
                    content:
                        "   Terjadilah pertempuran yang seru antara enam lawan begitu banyak orang. Pihak pedagang sudah banyak yang menjadi korban. Akhirnya, tiga sahabat tertusuk musuh dan langsung gugur. Seorang lagi menyusul syahid. Akhirnya, sisa dua orang; Zaid bin Addutsunah dan Khubaib bin Adi."),
                ParagrafWidget(
                    content:
                        "   Apa daya dua orang pejuang, menghadapi begitu banyak musuh? Selang beberapa saat, keduanya dapat dilumpuhkan dan ditawan. Lalu diangkut menuju pasar budak di Makkah. Zaid dibeli oleh Shafwan bin Umayyah. Ayah Shafwan, Umayyah bin Khalaf, adalah majikan Bilal dan Amir bin Fuhairah."),
                ParagrafWidget(
                    content:
                        "   Umayyah terkenal kejam kepada budak-budaknya. Bilal pernah dijemur di tengah terik matahari dengan badan ditindih batu. Untung Bilal ditebus oleh Abu Bakar dan dimerdekakan. Orang Habsyi ini kemudian terkenal sebagai sahabat dekat Rasulullah Saw. dan diangkat sebagai muadzin."),
                ParagrafWidget(
                    content:
                        "   Saat perang Badar, Umayyah berhadap-hadapan dengan Bilal, dan berhasil membunuhnya, sedangkan Khubaib diambil oleh Uqbah bin al-Harits dengan tujuan yang sama, seperti maksud Shafwan membeli Zaid, yakni balas dendam kepada umat Islam."),
                ParagrafWidget(
                    content:
                        "   Lalu orang Quraisy menyeret Zaid menuju Tan’im (tempat miqat umrah). Di tempat itu, Zaid menjalani hukuman pancung. Menjelang algojo melaksanakan tugasnya, pemimpin kaum musyrik, Abu Sufyan bertanya, “Zaid, apakah Anda senang seandainya di tempatmu ini digantikan Muhammad, sedangkan Anda hidup tenteram bersama keluargamu di rumah?”"),
                ParagrafWidget(
                    content:
                        "   “Janganlah begitu,” bantah Zaid dengan keras. “Meski dalam keadaan begini, aku tidak rela Rasulullah tertusuk duri yang paling kecil di rumahnya.” Abu Sufyan marah. Zaid akhirnya menyusul temannya menjadi syuhada. Di hati Abu Sufyan dan orang Quraisy timbul keheranan akan kesetiaan para sahabat kepada Muhammad. Abu Sufyan berucap kagum, “Aku tidak pernah menemukan seorang yang begitu dicintai oleh para sahabat, seperti Muhammad”."),
                ParagrafWidget(
                    content:
                        "   ”Sesudah Zaid gugur, rombongan lain menyeret Khubaib. Sesuai dengan hukum qishas, ia diberi hak menyampaikan permohonan terakhir. Ia meminta izin shalat sunnah 2 rakaat. Permohonan dikabulkan, Khubaib melaksanakan ibadahnya dengan baik. Setelah salam, ia berkata, “Demi Allah. Andaikata bukan karena takut disangka aku gentar menghadapi maut, maka shalatku akan kulakukan lebih panjang.”"),
                ParagrafWidget(
                    content:
                        "   Akhirnya Khubaib menjadi syahid, menyusul lima sahabat lainnya. Namun, semangat dakwah yang dilandasi keikhlasan untuk menyebarkan ajaran kebenaran, takkan pernah padam dari permukaan bumi. Semangat itu terus bergema, sehingga makin banyak jumlah pendakwah yang dengan kekuatan sendiri, menyelusup keluar-masuk pedalaman, berbatu-batu karang atau berhutan-hutan belantara, untuk menyampaikan dakwah atau melakukan tablig."),
                ParagrafItalic(
                    content:
                        "(Sumber: Disadur dari 1001 Kisah Teladan, Islamic Electronic Book)")
              ],
            ),
          ),
          const GWawasan(),
          const AktivitasWidget(
              activityTitle: "Aktivitas 4.4",
              contentText:
                  "Bentuk kelas kalian menjadi 3 kelompok. Lalu, setiap kelompok mendapatkan sub-materi dari materi ajar yang akan dipelajari, yakni Dakwah, Khutbah, dan Tablig, agar dikaji, dipahami dan dipelajari. Hasilnya dipresentasikan!"),
          const SizedBox(
            height: 4,
          ),
          Center(
            child: Text(
              "Menjadi Duta Islam yang Damai",
              style: regular_paragraf.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          ParagrafWidget(
              content:
                  "Hanya ulah sebagian oknum atau kelompok yang mengatasnamakan Islam, Islam dituduh yang bukan-bukan, misalnya Islam itu keras, kasar, tidak toleran, reaktif, dan tidak santun. Tuduhan tersebut memang menyakitkan, maka jika ingin membela Islam, kita harus menggunakan cara-cara yang benar, santun, dan mendamaikan. Bukan malah menambah cara yang membabi buta, tidak santun, apalagi menakutkan."),
          ParagrafWidget(
              content:
                  "   Mayoritas umat Islam, banyak yang memilih diam, jika berhadapan dengan persoalan yang rumit, contohnya aksi teror bom oleh sebagian oknum; ikhtiar memerangi kemaksiatan dengan cara-cara yang kasar dan menakutkan; mau menang sendiri saat mengutarakan argumen atau lebih unggul karena mayoritas, serta sangat abai dengan keberagaman. Semua pandangan itu tentu tidak benar, dan harus dicari solusi yang tepat."),
          ParagrafWidget(
              content:
                  "   Belajar dari Sirah Rasulullah Saw., kita mendapatkan banyak hikmah tentang bagaimana Islam itu harus dibawa dan diperjuangkan. Islam diajarkan oleh beliau dengan kelemahlembutan, santun, damai dan akhlak yang baik. Bahkan tidak pernah menggunakan cara-cara tetor dan menakutkan. Melalui cara seperti itu, akhirnya banyak pihak atau kelompok yang awalnya antipati kepada Islam, berubah menjadi pemeluk dan pembela Islam yang sejati. Sabda Rasulullah Saw.:"),
          const QuranWidget(
              arab:
                  "إِنَّ اللَّهَ رَفِيْقٌ يُحِبُّ الرِّفْقَ فِيْ الأَ مْرِكُلِّهِ   (رواه البخاري)"),
          const Terjemahan(
              content:
                  "Sesungguhnya Allah adalah Dzat Yang Maha Lembut, dan mencintai kelembutan dalam segala hal.\"",
              riwayat: " (HR. al-Bukhāri)"),
          ParagrafWidget(
              content:
                  "   Harus kita sadari bersama bahwa saat ini kita (umat Islam) kurang duta Islam yang damai. Mayoritas umat, memang bersikap damai, hanya sikap mayoritas diam, maka panggung sejarah (media) dimanfaatkan sekelompok kecil yang anarkis, tidak toleran, dan wajah muslim yang marah. Sebab itu, diperlukan upaya bersama untuk melawan kesewenang-wenangan tersebut, dan upaya ini harus dilakukan oleh mayoritas umat."),
          ParagrafWidget(
              content:
                  "   Lalu, dimulainya dari mana, dan forum apa yang dapat dipakai untuk membendung citra Islam yang kurang bagus? Jawabannya, tentu dari sekelompok umat yang mengambil peran sebagah dai, khatib, dan mubalig, mereka inilah yang berada di garda terdepan mendakwahkan Islam, kelompok profesi yang banyak menyuarakan nilai-nilai Islam, melalui beragam kegiatan yang dilakukan, misalnya dalam forum Majelis-majelis Dakwah, Khutbah Jum’at, dan Tablig Akbar."),
          ParagrafWidget(
              content:
                  "   Dakwah, khutbah, dan tablig membutuhkan manajemen yang profesional. Sebab, ketiganya memadukan beragam sumber daya yang ada untuk mengajak pihak internal dan pihak eksternal untuk memeluk, mencintai, dan mengamalkan ajaran Islam, atau menyempurnakan nilai ajaran yang sudah terhujam di dada setiap muslim (internal). Di antara faktor penting keberhasilan ketiganya adalah memulai dan mengamalkan terlebih dahulu ajaran Islam kepada diri sendiri, keluarga terdekat, baru kemudian mengajak pihak lain."),
          ParagrafWidget(
              content:
                  "   Ketidakberhasilan dakwah, khutbah, dan tablig dewasa ini, banyak disebabkan karena mereka yang semestinya menjadi contoh atau panutan, malah menerjang dan tidak mematuhi ajaran yang disampaikan. Laksana pagar makan tanaman, tidak satunya kata dengan perbuatan. Pepatah bijak mengatakan: ”Semestinya ia menerangi orang lain, namun yang terjadi ia malah terbakar sendiri.”"),
          ParagrafWidget(
              content:
                  "Berikut ini, rincian tentang Dakwah, Khutbah dan Tablig, yaitu:"),
          const Heading2(title: "1. Dakwah"),
          Heading3(title: "a. Pengertian"),
          RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(
              text:
                  "Merujuk arti bahasa, kata “dakwah” merupakan mashdar (kata dasar) dari kata da’a  ",
              style: regular_paragraf.copyWith(color: black),
            ),
            TextSpan(
              text: "دَعَى ـ يَدْعُوْ ـ دَعْوَةً",
              style: regulerQuran.copyWith(color: black),
            ),
            TextSpan(
              text:
                  " yang mempunyai arti mengajak, memanggil, dan menyeru untuk hal tertentu. Orang yang melakukan pekerjaan dakwah disebut dai (laki-laki) dan daiyah (perempuan).",
              style: regular_paragraf.copyWith(color: black),
            )
          ])),
          ParagrafWidget(
              content:
                  "Jika ditinjau dari makna istilah, ada beberapa pengertian dakwah, yaitu:"),
          ParagrafList(idlist: dakwah),
          ParagrafWidget(
              content:
                  "   Tersimpul dari pengertian tersebut, dakwah adalah mengajak orang lain untuk meyakini kebenaran ajaran Islam dan mengamalkan syariat Islam, agar tercapai pola hidupnya lebih baik, sehingga tercapai kebahagiaan dunia dan akhirat. Dakwah tidak hanya berupa tablig, khutbah, dan majelis taklim."),
          ParagrafWidget(
              content:
                  "   Dakwah cakupannya sangat luas, seluas kehidupan setiap muslim. Dakwah tidak mesti berbicara dan berceramah, tetapi setiap perbuatan sehari-hari yang mencerminkan tata nilai Islam, seperti berpakaian menutup aurat, tidak menyontek saat ujian, berbicara yang santun yang sopan, menghindari berita hoax, rajin bersilaturahmi, semua itu sudah bagian dari dakwah."),
          ParagrafWidget(
              content:
                  "   Keberhasilan dakwah sangat ditentukan oleh amaliah dan akhlakul karimah yang dipantulkan dari setiap muslim, apalagi yang berprofesi menjadi dai atau daiyah, tentu banyak faktor lain yang memengaruhi. Menjadi hal yang aneh, jika seorang dai tidak mengamalkan apa yang disampaikan, dan tidak satunya kata dengan perbuatan."),
          ParagrafWidget(
              content:
                  "   Faktor tersebut yang kini banyak menjangkiti para dai, sehingga hasil dakwah tidak banyak memberi pengaruh positif dalam perbaikan kualitas keberagamaan masyarakat, apalagi jika dikaitkan dengan gejala munculnya para dai yang dibesarkan oleh media, misalnya para dai yang biasa dipanggil dengan sebutan ustad seleb (Perhatikan kandungan isi Q.S. ash-Shaf/61: 2-3)."),
          Heading3(title: "b. Dalil Perlunya Dakwah"),
          const QuranWidget(
              arab:
                  "وَلْتَكُنْ مِّنْكُمْ اُمَّةٌ يَّدْعُوْنَ اِلَى الْخَيْرِ وَيَأْمُرُوْنَ بِالْمَعْرُوْفِ وَيَنْهَوْنَ عَنِ الْمُنْكَرِ ۗ وَاُولٰۤىِٕكَ هُمُ الْمُفْلِحُوْنَ   (اٰل عمران/٣ :١٠٤) "),
          const VoicePlayOrange(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F04%20Ali-Imr%C4%81n%20104.mp3?alt=media&token=18b4826f-604a-4084-b119-57c943d1f6ea"),
          const Terjemahan(
              content:
                  "Dan hendaklah di antara kamu ada segolongan orang yang menyeru kepada kebajikan, menyuruh (berbuat) yang ma’ruf, dan mencegah dari yang mungkar. Dan mereka itulah orang-orang yang beruntung.",
              riwayat: "(Q.S. Ali ‘Imrān/3: 104)."),
          ParagrafWidget(
              content:
                  "Perhatikan juga isi kandungan dari beberapa Q.S. Q.S. al-Nahl/16: 125, Q.S. al-Hajj/22: 67, Q.S. al-Qashash/28: 87 yang isinya tentang segala yang terkait dengan dakwah."),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: ParagrafWidget(
                    content:
                        "   Dakwah itu bagian kehidupan beragama. Ia merupakan kewajiban agama bagi para pemeluknya. Itulah sebabnya, dakwah bukan sekadar dari inisiatif pribadi, tetapi harus ada sekelompok orang (tha’ifah) yang menjadi juru dakwah. Wujud dakwah juga bukan hanya usaha peningkatan kapasitas keberagamaan, tetapi harus menembus aspek kehidupan, sehingga gerakan dakwah mencakup aspek ekonomi, sosial, politik, dan keamanan."),
              ),
              const SizedBox(
                width: 10,
              ),
              const ImageParagraf(
                  screenWidth: 300,
                  gambar: "Gambar4.6",
                  textGambar: "Gambar 4.6",
                  description: "Seorang Daiyah sedang menyampaikan dakwahnya"),
            ],
          ),
          ParagrafWidget(
              content:
                  "   Melalui pemahaman tersebut, dakwah harus menyasar ke banyak aspek kehidupan. Misalnya harus menyentuh di bidang politik; mengentaskan kemiskinan; memberdayakan lembaga pendidikan, menekan angka DO (Drop Out) atau bantuan beasiswa; mengedukasi masyarakat agar saling membantu dan bekerja sama, termasuk juga terlibat aktif dalam memerangi ujaran kebencian dan berita-berita hoax."),
          Heading3(title: "c. Adab Berdakwah"),
          ParagrafWidget(
              content:
                  "Adab atau etika dakwah yang harus diperhatikan, antara lain:"),
          ParagrafList(idlist: adabBerd),
          const QuranWidget(
              arab:
                  "اُدْعُ اِلٰى سَبِيْلِ رَبِّكَ بِالْحِكْمَةِ وَالْمَوْعِظَةِ الْحَسَنَةِ وَجَادِلْهُمْ بِالَّتِيْ هِيَ اَحْسَنُۗ اِنَّ رَبَّكَ هُوَ اَعْلَمُ بِمَنْ ضَلَّ عَنْ سَبِيْلِهٖ وَهُوَ اَعْلَمُ بِالْمُهْتَدِيْنَ   (النحل/١٦ :١٢٥) "),
          const VoicePlayOrange(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F04%20%20al-Nahl%20125.mp3?alt=media&token=fccdd810-8048-4574-859f-8eec60fb163c&_gl=1*15ovhrq*_ga*ODY4Mjc1MjUwLjE2OTE2NDUxNjU.*_ga_CW55HF8NVT*MTY5NTg2MDg5MS41My4xLjE2OTU4NjA5MjcuMjQuMC4w"),
          const Terjemahan(
              content:
                  "Serulah (manusia) kepada jalan Tuhanmu dengan hikmah dan pengajaran yang baik, dan berdebatlah dengan mereka dengan cara yang terbaik. Sesungguhnya Tuhanmu, Dialah yang lebih mengetahui siapa yang sesat dari jalan-Nya dan Dialah yang lebih mengetahui siapa yang mendapat petunjuk ",
              riwayat: " (Q.S. an-Nahl/16: 125)."),
          Heading3(title: "d. Tujuan dan Sasaran Dakwah"),
          ParagrafWidget(
              content:
                  "Sasaran dan tujuan dakwah--sejak zaman dulu (mulai Nabi Adam a.s sampai Nabi Muhammad Saw.), bahkan sampai berakhirnya kehidupan--memiliki sasaran yang jelas dan tetap, yakni sebagai berikut:"),
          const SizedBox(
            height: 4,
          ),
          const ParagrafListCostum(no: "1", content: "Sasaran Dakwah"),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: ParagrafListAbjad(idlist: sasDak),
          ),
          ParagrafWidget(
              content:
                  "Perhatikan isi kandungan Q.S. al-An’ām/6: 48, dan Q.S. al-Kahfi/18: 57."),
          ParagrafWidget(
              content:
                  "   Banyak contoh yang dapat diketengahkan, misalnya silih bergantinya umat sebelum Nabi Muhammad Saw. Kita kenal kaum Tsamud, kaum ‘Ad, umat Nabi Nuh a.s. dan umat Nabi Luth a.s. Mereka semua dimusnahkan akibat kemaksiatan dan dosa yang dilakukan, kita sebagai umat terakhir, hanya bisa mengambil i’tibar (pelajaran)."),
          ParagrafWidget(
              content:
                  "   Contoh lain yang jaraknya terdekat dengan kita baru sekitar 15 abad yang lalu, yakni kaum kafir Quraisy, khususnya di periode Makkah, mayoritas mereka tidak mengenal tatanan yang benar, mulai perbudakan yang merajalela; merebaknya khamr dan perzinaan, sampai derajat manusia dihargai hanya dengan banyaknya kekayaan dan kekuasaan, tanpa mengenal kehormatan dan kemuliaan, lalu diubah menjadi 180% oleh Rasulullah Saw. hanya dalam waktu + 23 tahun"),
        RichText(text: TextSpan(
          
          style: regular_paragraf,
          children: <TextSpan>[
          const TextSpan(text: "   Keberhasilan tersebut dinilai secara tepat oleh Sir George Bernard Shaw dalam karyanya "),
        TextSpan(text: "\“The Genuine Islam”: (Muhammad Saw.) sukses mengubah Jazirah Arab dari paganisme dan pemuja makhluk menjadi para pemuja Tuhan, dari peperangan dan perpecahan antar suku menjadi umatyang bersatu, dari kaum pemabuk dan pengacau menjadi kaum pemikir dan penyabar, dari kaum yang tidak berhukum dan anarkis menjadi kaum yang teratur … . Sejarah manusia yang tidak pernah terjadi atau sedahsyat ini, dan bayangkan ini terjadi hanya dalam waktu 23 tahun.\”",style: regular_paragraf.copyWith(fontStyle: FontStyle.italic)),
        ]
          
        ), textAlign: TextAlign.justify,),
 
          const SizedBox(
            height: 4,
          ),
          const ParagrafListCostum(no: "2", content: "Tujuan Dakwah"),
          ParagrafWidget(
              content:
                  "Jika merujuk kepada Q.S. an-Nūr/24: 55, maka tujuan dakwah adalah menyeru dan mengajak segenap manusia agar konsisten/istiqamah dalam:"),
          ParagrafListAbjad(idlist: tujdak),
          ParagrafWidget(
              content:
                  "   Tersimpul bahwa tujuan dakwah adalah mengajak segenap manusia keluar dari jalan kesesatan yang dimurkai, menuju jalan yang benar yang diridhai Allah Swt. (Perhatikan isi dan kandungan Q.S. al-Jin/72: 23; dan Q.S. al-Fajr/89: 27-30)."),
          Heading3(title: "e. Syarat dan Metode Dakwah"),
          ParagrafWidget(
              content:
                  "Banyak faktor yang memengaruhi keberhasilan dakwah. Faktor terpentingnya adalah inayah Allah Swt., di samping tentu saja dari kepribadian dan karakter dai sendiri, yang menghiasi pribadinya, melebar ke keluarga terdekat, lalu ke masyarakat luas."),
          ParagrafWidget(
              content:
                  "   Itulah sebabnya, seorang dai jika ingin sukses harus memenuhi syarat seperti yang telah dilakukan oleh para rasul, yaitu sebagai berikut:"),
          const ParagrafListCostum(
              no: "1",
              content:
                  "Satunya kata dengan perbuatan, sikap, perilaku dan tingkah lakunya benar-benar menjadi teladan (uswatun hasanah)."),
          const ParagrafListCostum(
              no: "2",
              content:
                  "Memahami objek dakwahnya, sehingga dakwahnya tepat sasaran (Perhatikan isi kandungan Q.S. Ibrāhīm/14: 4), dan Hadis yang artinya: “Berbicaralah kepada manusia sesuai kadar akal mereka.”"),
          const ParagrafListCostum(
              no: "3",
              content:
                  "Memiliki keberanian dan ketegasan, namun tetap bijak dan santun dalam berdakwah. Jalan yang dipilih adalah jalan tengah (tawasuth), damai, dan menenteramkan, meski tidak hilang sikap tegasnya. Kenapa harus santun dan damai dalam berdakwah? Ada beberapa jawaban yang dapat diketengahkan, yaitu:"),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: ParagrafListAbjad(idlist: jawaban),
          ),
          const ParagrafListCostum(
              no: "4",
              content:
                  "Memiliki ketabahan dan kesabaran yang tinggi dalam menghadapi segala tantangan dan rintangan akibat dakwah yang dilakukan."),
          const ParagrafListCostum(
              no: "5",
              content:
                  "Menyadari dengan sepenuh hati bahwa tugasnya hanyalah menyampaikan, mengajak, dan menyeru, tentang hasilnya diserahkan sepenuhnya hanya kepada Allah Swt. (Q.S. al-An’ām/6: 159)."),
          const ParagrafListCostum(
              no: "6",
              content:
                  "Selalu berdoa kepada Allah Swt. agar dakwahnya mencapai kesuksesan."),
          ParagrafWidget(
              content:
                  "Sementara itu, perihal metode dakwah yang harus dilaksanakan, jika mengacu kepada Q.S. al-Nahl/16: 125, maka acuannya sebagai berikut: "),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: ParagrafListAbjad(idlist: acuanNahl),
          ),
          Heading3(title: "f. Metode Al-Qur’an dalam Menyajikan Materi Dakwah"),
          ParagrafWidget(
              content:
                  "Disebabkan objek dakwah itu manusia, yang memiliki unsur jasmani, akal dan jiwa, maka pendekatan dakwah yang dilakukan juga harus memperlakukan manusia secara utuh. Karena itu, Al-Qur’an menggariskan ciri-ciri sebagai berikut: "),
          ParagrafList(idlist: ciri_ciri),
          Heading3(title: "g. Media Dakwah"),
          ParagrafWidget(
              content:
                  "Penggunaan media dakwah tentu menjadi hal yang niscaya, apalagi kondisi masyarakat modern yang ingin serba cepat, canggih, dan mudah. Sebab itu, media dakwah yang digunakan mencirikan anak zamannya, tidak konvensional, apalagi hanya sekadar ceramah dan mengumpulkan massa dalam jumlah yang besar, setelah itu bubar tanpa bekas."),
          ParagrafWidget(
              content:
                  "   Meskipun demikian, media dakwah yang dapat dipakai bisa dalam bentuk yang paling sederhana, misalnya terbatas pada media lisan dan tulisan, tetapi semakin majunya ilmu pengetahuan dan teknologi, media dakwah pun semakin lengkap, beragam, multi aspek dan sektor, serta memiliki daya jangkau yang semakin luas."),
          ParagrafWidget(
              content:
                  "   Dakwah itu maknanya luas, tidak hanya ceramah dan berbicara di panggung atau mimbar. Dakwah itu meliputi: tutur kata yang sopan; berpakaian menutup aurat dan rapih; bekerja secara halal dan beretos kerja yang tinggi; menjadi karyawan yang disiplin, jujur dan amanah; konsisten shalat 5 waktu ditambah shalat-shalat sunnah; serta beraneka ragam kegiatan manusia yang sejalan dengan tuntunan Allah Swt"),
          ParagrafWidget(
              content:
                  "   Selanjutnya, media dakwah untuk masa kini dapat menggunakan: (a) Media elektronik, beragam media sosial, TV, radio dan internet. (b) Media cetak, antara lain: buku, jurnal, surat kabar, majalah, spanduk, brosur, pamflet dan lain sebagainya."),
          Heading3(title: "h. Manajemen Dakwah"),
          ParagrafWidget(
              content:
                  "Faktor lain dari kesuksesan seorang dai, sangat tergantung dengan manajemen dan pola yang digunakan, yang namanya manajemen tidak terlepas dari perencanan, pelaksanakan, dan evaluasi, ditambah prinsip-prinsip lain yang mendukung keberhasilan dakwah."),
          ParagrafWidget(
              content:
                  "   Jika ingin berhasil, setiap dai harus mengacu kepada teladan yang sudah diterapkan oleh Rasulullah Saw. baik ketika di periode Makkah maupun Madinah, yang dikenal dengan istilah Sirah Nabawiyah. Pemahaman sirah harus lengkap dan utuh, karena jika tidak! Akibatnya menjadi fatal."),
          ParagrafWidget(
              content:
                  "   Misalnya, apa dan dari mana rujukannya, sehingga ada seorang dai bisa menyuruh anak didikannya untuk melakukan bom bunuh diri, menghancurkan siapa saja, termasuk orang tuanya, dan rekan sesama muslim di negara yang damai (tidak dalam kondisi konflik/peperangan). Apa yang mendasari sikap dan perilaku mereka? Padahal Rasulullah Saw. tidak pernah mencontohkan yang demikian."),
          ParagrafWidget(
              content:
                  "   Hal ini harus menjadi perhatian bersama, karena di negara Indonesia yang kita cintai, selama 2 dekade belakangan ini, muncul gerakan teror dan radikal yang meresahkan semua pihak, termasuk seluruh umat beragama, padahal semua agama tidak mentolerir, mengutuk secara tegas, dan tidak sedikitpun merestui gerakan tersebut."),
          ParagrafWidget(
              content:
                  "   Jika becermin dari dakwah yang dilakukan Rasulullah Saw., semuanya dimulai dari diri sendiri melalui sikap dan perilaku/akhlak yang terbaik, tutur kata yang santun dan sopan, pergaulan yang damai dan menenteramkan, sampai pada menghindari cara-cara kekerasan, ketakutan, dan paksaan (Perhatikan isi dan kandungan Q.S. al-Qalam/68: 4), Q.S. al-Fath/48: 8, dan Q.S. at-Taubah {9}: 128)."),
          ParagrafWidget(
              content:
                  "Saat berdakwah Rasulullah Saw menerapkan hal-hal sebagai berikut."),
          ParagrafList(idlist: dakwahRasul),
          Heading3(title: "i. Strategi Dakwah"),
          ParagrafWidget(
              content:
                  "Prinsipnya, dakwah itu dapat menggunakan strategi yang beraneka ragam, sesuai dengan objek dakwah. Berdakwah harus berpatokan kepada Q.S. an-Nahl/16: 125. Adapun dakwah (secara formal) menggunakan aturan-aturan (ini tidak baku), sebagai berikut."),
          const ParagrafListCostum(no: "1", content: "Pembukaan, antara lain:"),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: BulledList(idlist: pembukaan),
          ),
          const ParagrafListCostum(no: "2", content: "Isi, terdiri dari:"),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: BulledList(idlist: isi),
          ),
          const Heading2(title: "2. Khutbah"),
          Heading3(title: "a. Pengertian"),
          ParagrafWidget(
              content: "Merujuk makna bahasa, ada beberapa pengertian, yakni:"),
          ParagrafList(idlist: pengertianKhitbah),
          ParagrafWidget(
              content:
                  "Sementara, jika ditinjau dari pengertian istilah, khutbah adalah:"),
          ParagrafList(idlist: istilahkhutbah),
          ParagrafWidget(
              content:
                  "   Umumnya, pelaksanaan khutbah, jika dikaitkan dengan shalat, dapat dikelompokkan menjadi 3 bagian, yaitu:"),
          ParagrafList(idlist: pelkhutbah),
          ParagrafWidget(
              content:
                  "   Di antara beragam jenis khutbah, ada hal yang terpenting untuk diketahui, yakni Khutbah Jum’at. Sebab, Khutbah Jumat memerlukan rukun yang harus dipenuhi agar ibadahnya menjadi sah, dan sesuai dengan aturan. Jika, salah satu rukun tidak terpenuhi, maka khutbahnya tidak sah."),
          ParagrafWidget(
              content:
                  "   Sejalan dengan itu, Khutbah Jumat itu terdiri dari 2 bagian: Khutbah Pertama, dan Khutbah Kedua, yang di antara keduanya dipisahkan dengan duduk di antara dua khutbah."),
          Heading3(title: "b. Syarat Khatib"),
          ParagrafList(idlist: syaratKhutbah),
          Heading3(title: "c. Syarat-syarat dua khutbah"),
          ParagrafList(idlist: syarat2khutbah),
          const QuranWidget(
              arab:
                  " عَنْ جَابِرِ بْنِ سَمُرَةَ أَنَّ النَّبِيَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ كَانَ يَخْطُبُ قَائِمًا ، وَيَجْلِسُ بَيْنَ الْخُطْبَتَيْنِ   (رواه احمد)"),
          const Terjemahan(
              content:
                  "Dari Jabir bin Samurah sesungguhnya Nabi Saw. berkhutbah dengan berdiri dan beliau duduk di antara dua khutbah”",
              riwayat: " (H.R. Ahmad)."),
          const QuranWidget(
              arab:
                  "عَنْ جَابِرِ بْنِ عَبْدِ اللهِ ، قَالَ: كَانَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ إِذَا خَطَبَ احْمَرَّتْ عَيْنَاهُ ، وَعَلَا صَوْتُهُ، وَاشْتَدَّ غَضَبُهُ ، حَتَّى كَأَنَّهُ مُنْذِرُ جَيْشِ يَقُولُ : صَبَّحَكُمْ وَمَسَاكُمْ   (رواه مسلم)"),
          const Terjemahan(
              content:
                  "Dari Jabir bin ‘Abdullah berkata: Bila Rasulullah Saw. berkhutbah, kedua matanya merah, tinggi suaranya, dan penuh semangat bagai seorang panglima yang memperingatkan datangnya musuh yang menyergap di saat pagi atau sore.”",
              riwayat: "(H.R. Muslim)."),
          Heading3(title: "d. Rukun Khutbah"),
          ParagrafList(idlist: rukunKhutbah),
          Heading3(title: "e. Sunnah Khutbah"),
          ParagrafList(idlist: sunnahKhutbah),
          Heading3(title: "f. Adab Shalat Jum’at"),
          const ParagrafListCostum(
              no: "1",
              content:
                  "Menyegerakan berangkat ke masjid lebih awal. Allah Swt. berfirman:"),
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: Column(
              children: [
                const QuranWidget(
                    arab:
                        "يٰٓاَيُّهَا الَّذِيْنَ اٰمَنُوْٓا اِذَا نُوْدِيَ لِلصَّلٰوةِ مِنْ يَّوْمِ الْجُمُعَةِ فَاسْعَوْا اِلٰى ذِكْرِ اللّٰهِ وَذَرُوا الْبَيْعَۗ ذٰلِكُمْ خَيْرٌ لَّكُمْ اِنْ كُنْتُمْ تَعْلَمُوْنَ   (الجمعة/٢٦ :٩)   "),
                const VoicePlay(
                    audioUrl:
                        "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F04%20al-Jumu%E2%80%99ah%209.mp3?alt=media&token=2cbfe340-b598-4621-b17b-015972ea64c9&_gl=1*odbfss*_ga*ODY4Mjc1MjUwLjE2OTE2NDUxNjU.*_ga_CW55HF8NVT*MTY5NTg2MDg5MS41My4xLjE2OTU4NjI0NzEuNTMuMC4w"),
                const Terjemahan(
                    content:
                        "Wahai orang-orang yang beriman! Apabila telah diseru untuk melaksanakan shalat pada hari Jum‘at, maka segeralah kamu mengingat Allah dan tinggalkanlah jual beli. Yang demikian itu lebih baik bagimu, jika kamu mengetahui",
                    riwayat: " (Q.S. al-Jumu’ah/62: 9)"),
                ParagrafWidget(
                    content:
                        "Hindari hadir sesudah khatib sudah berada di atas mimbar dan sudah berkhutbah, karena jika itu dilakukan, tidak dicatat sebagai orang yang mendapatkan keutamaan mendatangi jumat lebih awal. Sebagaimana Hadis yang diriwayatkan Imam al-Bukhari.")
              ],
            ),
          ),
          const ParagrafListCostum(
              no: "2",
              content:
                  "Membiasakan mengisi shaf terdepan yang masih kosong, lalu lakukan shalat “Tahiyatul Masjid” atau Shalat Qabliah Jum’at sebanyak dua rakaat."),
          const ParagrafListCostum(
              no: "3",
              content:
                  "Memperbanyak dzikir dan doa, membaca shalawat Nabi Saw. atau membaca Al-Qur’an dengan suara pelan, sebelum khatib naik mimbar"),
          const ParagrafListCostum(
              no: "4",
              content:
                  "Mendengarkan khutbah dengan seksama. Jangan berbicara, termasuk menegur jamaah lain, apalagi mengantuk atau tidur, akibatnya jum’atnya menjadi sia-sia, termasuk tidak memahami isi khutbah. Sabda Rasulullah Saw.:s"),
          const QuranWidget(
              arab:
                  "أَنَّ أَبَاهُرَيْرَةَ ، أَخْبَرَهُ: أَنَّ رَسُوْلَ اللّٰهِ صَلَّ اللّٰهُ عَلَيْهِ وَسَلَّمَ قَالَ: إِذَا قُلْتَ لِصَاحِبِكَ يَوْمَ الجُمُعَةِ: أَنْصِتْ، وَالاءِمَامُ يَخْطُبُ، فَقَدْ لَغَوْتَ   (رواه البخاري)"),
          const Padding(
            padding: EdgeInsets.only(left: 21),
            child: Terjemahan(
                content:
                    "“Sesungguhnya Abu Hurairah menceritakan kepada Sa’id bin al-Musayyab: Sesungguhnya Rasulullah Saw bersaba: Apabila engkau berbicara kepada temanmu (saat pelaksanaan) Shalat Jum’at; “diamlah” padahal imam sedang menyampaikan khutbahnya, maka Jum’atmu sia-sia (meninggalkan adab shalat jumat dan berkurang pahalanya)”.",
                riwayat: "(HR. al-Bukhāri)"),
          ),
          Heading3(title: "g. Praktik Khutbah I (Pertama)"),
          ParagrafWidget(content: "Urutan khutbah sebagai berikut"),
          ParagrafList(idlist: urutanKhutbah),
          Image.asset("assets/images/quran5.png"),
          const ParagrafListCostum(
              no: "4",
              content:
                  "Materi khutbah, hendaklah disesuaikan dengan situasi dan kondisi yang sedang aktual atau terkini, yang diperkuat dengan rujukan atau dalil yang kuat, khususnya yang bersumber dari Al-Qur’an dan Hadis."),
          const ParagrafListCostum(
              no: "5", content: "Penutup khutbah I (Pertama), contohnya:"),
          const QuranWidget(
              arab:
                  "َبارَكَ اللهُ لِيْ وَلَكُمْ فِي الْقُرْاٰنِ الْعَظِيْمِ وَنَفَعَنِى وَإِيَّاكُمْ بِمَا فِيْهِ مِنَ الْاٰيَاتِ وَالذِّكْرِالْحَكِيْمِ وَتَقَبَّلَ مِنِّيْ وَمِنْكُمْ تِلَاوَتَهُ إِنَّهُ هُوَ السَّمِيْعُ الْعَلِيْمُ اَقُوْلُ قَوْلِي هَذاَ وَاسْتَغْفِرُ وَلَكُمْ وَلِسَائِرِ الْمُسْلِمِيْنَ وَالْمُسْلِمَاتِ وَالْمُؤْمِنِينَ وَالْمُؤْمِنَاتِ فَاسْتَغْفِرُوْهُ إِنَّهُ هُوَ الْغَفُوْرُ الرَّحِيْمُ"),
          Heading3(title: "h. Praktik Khutbah II (Kedua)"),
          ParagrafList(idlist: khutbah2),
          const QuranWidget(
              arab:
                  "اَلْحَمْدُ لِلّٰهِ حَمْدًا كَثِيْرًا كَمَا آمَرَ، وَاَشْهَدُ اَنْ لَّا اِلٰهَ اِلَّا اللهُ وَحْدَهُ لاَ شَرِيْكَ لَهُ اِرْغَامًا لِمَنْ جَحَدَ بِهِ وَكَفَرَ. وَأَشْهَدُ اَنَّ سَيِّدَنَا مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ سَيِّدُ الْإِنْسِ وَالْبَشَرِ. اَللَّهُمَّ صَلِّ وَسَلِّمْ عَلٰى سَيّدِنَا مُحَمَّدٍ وَعَلٰى اٰلِهِ وَصَحْبِهِ مَا اتَّصَلَتْ عَيْنٌ بِنَظَرٍ وَأُذُنٌ بِخَبَر. أمَّا بَعْدُ: فَيَا أَيُّهَا النَّاسُ إِتَّقُوْا اللهَ وَذَرُوْا الْفَوَاحِشَ مَاظَهَرَ وَمَا بَطَنَ. وَاعْلَمُوْا اَنَّ اللهَ اَمَرَكُمْ بِأَمْرِ بَدَأَ بِنَفْسِهِ . وَشَنّٰي بِمَلاَئِكَةِ الْمُسَبِّحَةِ بِقُدْسِهِ. فَقَالَ تَعَالٰي: إِنَّ اللَّهَ وَمَلاَئِكَتَهُ يُصَلُّونَ عَلَى النَّبِيِّ يَا أَيُّهَا الَّذِيْنَ أَمَنُوْا صَلُّوْاعَلَيْهِ وَسَلِّمُوا تَسْلِيمًا"),
          const ParagrafListCostum(
              no: "3", content: "Setelah itu diakhiri dengan membaca doa"),
          const ParagrafListCostum(
              no: "4", content: "Kalimat penutup khutbah kedua, contohnya:"),
          const QuranWidget(
              arab:
                  "عِبَادَ اللهِ إِنَّ اللهَ يَأْمُرُ بِالْعَدْلِ وَالْاِحْسَانِ وَإِيتَاءِ ذِي الْقُرْبٰي وَيَنْهٰى عَنِ الْفَحْشَاءِ وَالْمُنْكَرِ وَالْبَغْيِ يَعِظُكُمْ لَعَلَّكُمْ تَذَكَّرُونَ. فَاذْكُرُوا اللهَ الْعَظِيمَ يَذْكُرْكُمْ وَاشْكُرُوهُ عَلٰى نِعَمِهِ يَزِدُكُمْ وَاسْئَلُوْهُ مِنْ فَضْلِهِ يُعْطِكُمْ وَلَذِكْرُ اللهِ أَكْبَرُ"),
          const ParagrafListCostum(
              no: "5",
              content:
                  "Khatib turun dari mimbar, dan bersamaan dengan itu, muadzin mengumandangkan ikamah."),
          const AktivitasWidget(
              activityTitle: "Aktivitas 4.5",
              contentText:
                  "Bentuk kelas Anda menjadi 5 kelompok. Lalu, setiap kelompok menyusun naskah (teks) khutbah dengan tema nilai-nilai Islam rahmatan lil ‘alamin. Hasilnya dipresentasikan, dan setiap kelompok memberi penilaian apakah temanya sudah bernilai Islam yang rahmatan lil ‘alamin!"),
          Heading3(title: "i. Persamaan dan Perbedaan Dakwah dan Khutbah"),
          ParagrafWidget(
              content: "Berikut ini, persamaan dan perbedaan keduanya, yaitu:"),
          const TabelPersamaan(),
          const Heading2(title: "3. Tablig"),
          Heading3(title: "a. Pengertian"),
          ParagrafWidget(
              content:
                  "Menurut tinjauan bahasa, kata tablig berasal dari kata ballagha بَلَّغَ يُبَلِّغُ تَبْلِيْغًا yang artinya menyampaikan atau memberitahukan pesan atau ceramah secara lisan atau perkataan. "),
          ParagrafWidget(
              content:
                  "   Makna lainnya adalah ceramah yang tidak disertai dengan rukun seperti khutbah. Bukan sekadar ceramah atau pesan biasa, tetapi sebuah ceramah yang sumbernya dari ajaran Islam yang disampaikan kepada satu orang atau banyak orang, agar mengamalkan isi pesan tersebut."),
          ParagrafWidget(
              content:
                  "   Disebabkan fokusnya kepada pengamalan isi pesan, maka tablig harus dikemas agar menarik, tidak membosankan, tidak menggurui, tidak menyimpang dari substansi dan disampaikan secara sopan. Adapun pelaku penyampai ceramah atau pesan disebut mubalig (laki-laki) atau mubaligah (perempuan)."),
          ParagrafWidget(
              content:
                  "   Namun, jika ditinjau dari pengertian istilah, tablig memiliki beberapa makna, antara lain:"),
          ParagrafList(idlist: istilahtabligh),
          ParagrafWidget(
              content:
                  "   Berdasarkan pengertian tersebut, tersimpul bahwa tablig merupakan bagian dari dakwah. Tablig lebih banyak berisi pesan atau ceramah lisan dan perkataan, sementara dakwah lebih luas, tidak hanya lisan tetapi juga perilaku dalam kehidupan sehari-hari. "),
          ParagrafWidget(
              content:
                  "   Khusus di Indonesia, konsep tablig tidak hanya berisi ceramah lisan, tetapi juga berisi kegiatan keagamaan lainnya. Misalnya kita kenal istilah tablig akbar yang biasanya dilaksanakan di tempat yang luas dan dihadiri lebih banyak peserta, serta biasanya diisi dengan dzikir bersama, sehingga terjadi perbedaan konsep atau persinggungan makna dan istilah yang dipakai yang tertanam pada benak masyarakat umum."),
          Heading3(title: "b. Dalil Adanya Tablig"),
          const QuranWidget(
              arab:
                  "الَّذِيْنَ يُبَلِّغُوْنَ رِسٰلٰتِ اللّٰهِ وَيَخْشَوْنَهٗ وَلَا يَخْشَوْنَ اَحَدًا اِلَّا اللّٰهَ ۗوَكَفٰى بِاللّٰهِ حَسِيْبًا (الاحزاب/٣٣ :٣٩) "),
          const VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F04%20al-Ahz%C4%81b%2039.mp3?alt=media&token=5d301cf5-c91c-4fe5-b91c-a1647ad5c9d3&_gl=1*zizy7x*_ga*ODY4Mjc1MjUwLjE2OTE2NDUxNjU.*_ga_CW55HF8NVT*MTY5NTg2MDg5MS41My4xLjE2OTU4NjMyOTIuNDAuMC4w"),
          const Terjemahan(
              content:
                  "(yaitu) orang-orang yang menyampaikan risalah-risalah Allah (para rasul yang menyampaikan syariat-syariat Allah kepada manusia), mereka takut kepada-Nya dan tidak merasa takut kepada siapa pun selain kepada Allah. Dan cukuplah Allah sebagai pembuat perhitungan",
              riwayat: "(Q.S. al-Ahzāb/33: 39)."),
          ParagrafWidget(
              content:
                  "   Perhatikan juga isi kandungan dari beberapa ayat Al-Qur’an berikut ini, misalnya Q.S. al-Māidah/5: 99, Q.S. ar-Ra’d/13: 40, dan Q.S. al-Nahl/16: 35 yang isinya tentang tablig."),
          Heading3(title: "c. Ketentuan Tablig"),
          ParagrafWidget(
              content:
                  "Ada beberapa ketentuan dan tara cata yang harus diperhatikan, terkait dengan pelaksanaan tablig, yaitu:"),
          const ParagrafListCostum(no: "1", content: "Ketentuan Tablig"),
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: ParagrafListAbjad(idlist: ketentuanabligh),
          ),
          const ParagrafListCostum(no: "2", content: "Tata Cara"),
          ParagrafWidget(
              content:
                  "Tata cara/strategi tablig harus merujuk teladan Rasulullah Saw. dan para sahabatnya dalam melaksanakan dakwah atau tablig. Jika tidak, tablig yang bertujuan baik, malah berubah menjadikan citra Islam tidak baik, bahkan merusak citra, tentu semua itu harus menjadi kesadaran bersama."),
          ParagrafWidget(
              content:
                  "Sejarah Islam pun telah memberi teladan dalam bertablig, yaitu:"),
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: ParagrafListAbjad(idlist: teladanTabligh),
          ),
          ParagrafWidget(
              content:
                  "   Di samping itu, ada beberapa hal yang patut dijadikan pedoman dalam tablig, yaitu kekuatan keimanan dan kesabaran. Artinya, kesuksesan tablig sangat dilandasi kuatnya iman, sekaligus dibarengi adanya pola manajemen yang handal. Hal ini dapat dicontoh dari cara dan strategi yang dilakukan para Walisongo dan tokoh lainnya dalam menyebarluaskan Islam di Indonesia, khususnya di pulau Jawa."),
          ParagrafWidget(
              content:
                  "   Hanya sayangnya, sekarang strategi ini sudah mulai ditinggalkan oleh para mubalig, sehingga realitas memberi bukti, meski tidak semua, tablig yang dilakukan lebih bersifat seremonial belaka, lebih banyak unsur humornya, melupakan tujuan dan substansi, akibatnya tampak kehilangan ruh dan jiwa, serta kurang memberi dampak positif dalam mengubah perilaku masyarakat."),
          ParagrafWidget(
              content:
                  "   Oleh sebab itu, kembalilah kepada semangat tablig yang baik dan benar. Berikut ini ada beberapa kepribadian dai yang mesti diubah, yakni: (a) Lemah Sikap atau tidak tegas, sehingga mengantarkan hancurnya kedisiplinan. (b) Lemah Hati sehingga menyebabkan rapuhnya cita-cita. (c) Lemah Pikiran, menjadikan problematika tak cepat terselesaikan, dan yang paling penting (d). Lemah Iman, yang mengakibatkan begitu mudah masuknya bujuk rayu, nafsu, dan godaan duniawi."),
          ParagrafWidget(
              content:
                  "   Itulah sebabnya, sangat perlu adanya perubahan strategi tablig dalam masyarakat modern, apalagi didasari realitas tentang adanya tantangantantangan sosial dan budaya yang semakin kompleks, sehingga model dan pola tablig relevan dengan kebutuhan zaman, akhirnya umat ini memiliki jatidiri yang mantap yang ditandai dengan ciri-ciri sebagai berikut."),
          ParagrafListAbjad(idlist: jatidiri),
          const ParagrafListCostum(no: "3", content: "Peragaan/Praktik Tablig"),
          ParagrafWidget(
              content:
                  "Setiap orang yang memilih profesi tablig, harus benar-benar menata kepribadiannya, sehingga pihak lain yang menjadi objek tablig tertarik dan bersedia ikut dengan kerelaan hati. Itu sebabnya diperlukan banyak persyaratan yang harus dipenuhi, seperti paparan yang sudah disebutkan, juga banyak menempuh jalan persuasif dan mengedepankan pendekatan budaya masyarakatnya."),
          ParagrafWidget(
              content:
                  "   Sebaliknya, hindari menempuh jalan konfrontatif, teror, dan radikal, yang akibatnya pihak lain memberi label yang kurang bagus kepada Islam dan kaum muslim; bukannya semakin dekat, tetapi malah menjauh; bukan simpati yang didapat, malah antipati dan benci. Oleh karena itu, sekali lagi penting sekali ditempuh seruan dan ajakan yang damai, sejuk, santun, dan menenteramkan."),
          ParagrafWidget(
              content:
                  "   Sebagai bagian dari peragaan atau praktik bertablig, maka ada tahapan langkah-langkah yang harus diikuti, yaitu:"),
          const ParagrafListCostum(
              no: "a)",
              content:
                  "Tahap persiapan \nRujuklah dan pelajari materi tablig, agar sesuai dengan kebutuhan jamaah atau audiens"),
          const ParagrafListCostum(
              no: "b)",
              content:
                  "Tahap pelaksanaan \nSaat tablig, maka informasi yang disampaikan harus yang praktis, singkat dan serba cepat, dengan tetap mengedepankan bahasa yang sederhana, mengajak jamaah berdiskusi dan mengandalkan logika dan akal sehat, melibatkan juga mata hati, serta menghindari gaya yang menggurui, menekan, apalagi memaksa."),
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: Column(
              children: [
                ParagrafWidget(
                    content:
                        "Islam itu kebenaran, maka materi tablig juga harus disampaikan secara terbuka, utuh, dan komprehensif, sehingga jamaah dengan kesadaran sendiri dapat menerima ajaran Islam dan menemukan sendiri kebenaran itu."),
                ParagrafWidget(
                    content:
                        "Memang cara itu terasa sulit, tetapi sangat elegan dan pantas dikedepankan, karena Islam sendiri hadir bukan di ruang hampa, tetapi sejak awal sudah berhadapan dengan beragam realitas yang umumnya berbeda, dan berdasarkan Sirah Rasulllah Saw., ternyata realitas yang berbeda tersebut mampu diadaptasi, diubah, dan dicegah sehingga sejalan dengan ajaran Islam."),
                ParagrafWidget(
                    content:
                        "Tercapainya keberhasilan memang perlu waktu, kesabaran yang tinggi, dan menggunakan beragam metode dan strategi, serta mendayagunakan sarana penunjang yang memadai/mendukung. Jangan lupa hindari upaya memaksa, apalagi menggunakan kekerasan, tidak terkesan menggurui, dan mempertimbangkan juga waktu yang tersedia. Gunakan pula metode yang menyenangkan dengan prinsip 3 F (Fun, Fresh, dan Focus), serta tidak berlebihan dalam menggunakan humor dan jenaka."),
              ],
            ),
          ),
          const ParagrafListCostum(
              no: "c)",
              content:
                  "Tahap Konsolidasi\nSebagai tahap akhir, upayakan adanya pemantapan pemahaman materi tablig dalam bentuk kesimpulan atau resume, dan hal-hal apa saja yang harus ditindaklanjuti, biasanya dikenal dengan RTL (Rencana Tindak Lanjut). \nHal ini perlu dilakukan agar setiap jamaah ada kesadaran diri untuk melakukan perbaikan dan peningkatan kualitas amal, dan tidak kalah pentingnya tidak terjadi bias pemahaman bagi jamaah atau audiens, sebelum mengakhiri kegiatan tablig."),
          const HPenerapan(),
          ParagrafWidget(
              content:
                  "Setelah menelaah materi Dakwah, Khutbah dan Tablig, diharapkan peserta didik dapat membiasakan karakter dalam kehidupan sehari-hari, sebagai berikut"),
          TabelPenerapanKarakterWidget(idlist: tabelPenKarakter4),
          const IReflek(),
          const BorderBlack(
              content:
                  "Kelas dibagi menjadi 3 kelompok, lalu silakan unduh di internet, atau referensi yang tepercaya tentang ceramah KH. Mustofa Bisri (Gus Mus), KH. Zainuddin, MZ. (alm), dan Aa Gym. Persiapkan juga buku catatan, atau laptop yang kalian miliki. Lalu pilih dari 3 kisah hidup dai atau mubaligh tersebut yang paling menggetarkan jiwa atau batin kalian, lalu masing-masing kelompok mempresentasikan hasilnya!"),
          const JRangkum(),
          Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: purpleBagroundLight,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ParagrafList(idlist: rangkuman4)),
          const KPenilai(),
          TabelPanilaianSikap(idlist: tabelPenSikap4),
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
                   Get.to(PSikap4());
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
        Heading2(title: "2. Penilainan Pengetahuan"),
        SizedBox(
          height: 4,
        ),
        Text(
          "Berilah tanda silang (X) pada huruf A, B, C, D atau E pada pernyataan di bawah ini sebagai jawaban yang paling tepat!",
         
          style: h2.copyWith(fontWeight: FontWeight.w600),
        ),
          Container(
            margin: const EdgeInsets.only(top: 4),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: black),
                color: const Color(0xFFF3F3F4),
                borderRadius: BorderRadius.circular(2)),
            height: 280, // Atur tinggi sesuai kebutuhan
            child: PilihanGandaSoal(daftarSoal: pilihanGanda4),
          ),
          const Jawablah(),
          ParagrafList(idlist: uraian4),
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
                          Get.to(PPengetahuan4());
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
                    "Aktivitas 4.6", // Use the activityTitle parameter here
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
                        "Aktivitas Peserta Didik:\nSetiap kelas dibagi menjadi 6 kelompok. Buatlah telaah tentang visi, misi, dan tujuan dari beberapa Ormas Islam di Indonesia yang dikaitkan dengan Islam yang rahmatan lil ‘alamin. Ormas tersebut adalah", // Use the contentText parameter here
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                      ParagrafList(idlist: penilaianket)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Heading3(title: "b. Penilaian Praktik"),
          const BorderBlack(
              content:
                  "Kelompok: \nKelas dibagi 6 kelompok, sesuai dengan Penilaian Proyek yang sudah dilaksanakan. Lalu mempresentasikan dan mendiskusikan pembahasan sesuai dengan tugasnya, lalu membuat kesimpulan tentang Nahdlatul Ulama (NU), Muhammadiyah, Persis, Nahdlatul Wathan (NW), Jamiatul Khairat dan Al Washliyah. sementara itu GPAI memberikan penilaian dari masing-masing kelompok.\n\nIndividual:\nSetiap kelas ada 1 peserta didik (laki-laki) yang memperagakan sebagai khatib Jum’at, sementara 1 peserta didik (perempuan) memperagakan sebagai daiyah atau mubaligah. Sementara itu, GPAI bersama peserta didik lainnya memberikan tanggapan dan penilaian"),
          Heading3(title: "c. Penilaian Portofolio"),
          const BorderBlack(
              content:
                  "Tuliskanlah semua aktivitas keagamaan kalian, baik di sekolah, rumah, maupun masyarakat pada buku Penilaian Pendidikan Agama Islam dan Budi Pekerti!"),
          const IPengaya(),
          const BorderBlack(
              content:
                  "Kalian sebagai generasi milenial, tentu memiliki idola pada seorang atau beberapa dai atau mubalig masa kini. Coba sebutkan 3 dai atau mubalig tersebut, sekaligus sebutkan 5 alasannya, kenapa kalian memilihnya! "),
          const Pembatas(),
        ],
      ),
    );
  }
}
