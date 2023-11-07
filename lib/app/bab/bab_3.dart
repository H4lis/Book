import 'package:book/app/assingnment/p_pengetahuan_3.dart';
import 'package:book/app/assingnment/p_sikap_3.dart';
import 'package:book/app/data/bab_2_model/tadabbur_model.dart';
import 'package:book/app/data/bab_3_model/list_paragraf_model3.dart';
import 'package:book/app/data/kata_kunci.dart';
import 'package:book/app/data/tabel_penerapan_karakter.dart';
import 'package:book/app/widgets/aktivitas_widget.dart';
import 'package:book/app/widgets/app_bar_widget.dart';
import 'package:book/app/widgets/bab_1_widget/tabel_penilaian_sikap.dart';
import 'package:book/app/widgets/baground_orange_kata_kunci.dart';
import 'package:book/app/widgets/border_black.dart';
import 'package:book/app/widgets/bulled_list.dart';
import 'package:book/app/widgets/heading_2.dart';
import 'package:book/app/widgets/jawablah.dart';
import 'package:book/app/widgets/list_paragraf.dart';
import 'package:book/app/widgets/paragraf_list_abjad.dart';
import 'package:book/app/widgets/paragraf_list_costum.dart';
import 'package:book/app/widgets/paragraf_widget.dart';
import 'package:book/app/widgets/quran_widget.dart';
import 'package:book/app/widgets/sampul_bab.dart';
import 'package:book/app/widgets/sub_bab.dart';
import 'package:book/app/widgets/tabel_penerapan_karakter.dart';
import 'package:book/app/widgets/tadabbur.dart';
import 'package:book/app/widgets/terjemahan_widget.dart';
import 'package:book/app/widgets/voice_play.dart';
import 'package:book/app/widgets/voice_play_orange.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../data/bab_1_model/tabel_penilaian_sikap_d.dart';
import '../data/bab_2_model/list_paragraf_model.dart';
import '../data/pilihan_ganda.dart';
import '../modules/SideMenu/views/side_menu_view.dart';
import '../shared/constant.dart';
import '../widgets/bab_1_widget/pilihanganda.dart';
import '../widgets/heading_3.dart';
import '../widgets/heading_4.dart';
import '../widgets/paragraf_italic.dart';
import '../widgets/pembatas.dart';

class Bab3 extends StatelessWidget {
  const Bab3({super.key});


  @override
  Widget build(BuildContext context) {

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'PJcxtl5c2cw', 
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
              title: "Bab 3",
              contentImage: "bab_3",
              description:
                  "Menghindari Perkelahian Pelajar, Minuman Keras, dan Narkoba"),
          const ATujuan(),
          ParagrafWidget(
              content: "Setelah mempelajarari materi ini, kalian dapat: "),
          ParagrafList(idlist: tujuanPembelajaran3),
          const BKata(),
          BagroundOrangeKataKunci(idlist: kataKunciBab3),
          const CInfo(),
          Image.asset(
            "assets/images/infografis3.jpg",
          ),
              const SizedBox(height: 10,),
                const SizedBox(height: 10,),
                 YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,  
            onReady: () {
        
            },
          ),
          const DAyo(),
          ParagrafList(idlist: ayoTadarus3),
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
                    'Aktivitas 3.1', // Use the activityTitle parameter here
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
                        "Aktivitas Peserta Didik:\nSaatnya, kita tadarus Q.S. asy-Syūrā/42: 40 dan Q.S. al-Māidah/5: 90-91, berikut ini, lalu salah satu peserta didik membacakan terjemahnya!", // Use the contentText parameter here
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                      const QuranWidget(
                          arab:
                              "وَجَزٰۤؤُا سَيِّئَةٍ سَيِّئَةٌ مِّثْلُهَا ۚفَمَنْ عَفَا وَاَصْلَحَ فَاَجْرُهٗ عَلَى اللّٰهِ ۗاِنَّهٗ لَا يُحِبُّ الظّٰلِمِيْنَ    (الشورى/٤٢: ٤٠)"),
                      const VoicePlayOrange(
                          audioUrl:
                              "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F03%20asy-Sy%C5%ABra%2042.mp3?alt=media&token=f95f6dd9-67a4-48ab-aaa6-d6803e4c25e4"),
                      const QuranWidget(
                          arab:
                              "يٰٓاَيُّهَا الَّذِيْنَ اٰمَنُوْٓا اِنَّمَا الْخَمْرُ وَالْمَيْسِرُ وَالْاَنْصَابُ وَالْاَزْلَامُ رِجْسٌ مِّنْ عَمَلِ الشَّيْطٰنِ فَاجْتَنِبُوْهُ لَعَلَّكُمْ تُفْلِحُوْنَ ٩٠ اِنَّمَا يُرِيْدُ الشَّيْطٰنُ اَنْ يُّوْقِعَ بَيْنَكُمُ الْعَدَاوَةَ وَالْبَغْضَاۤءَ فِى الْخَمْرِ وَالْمَيْسِرِ وَيَصُدَّكُمْ عَنْ ذِكْرِ اللّٰهِ وَعَنِ الصَّلٰوةِ فَهَلْ اَنْتُمْ مُّنْتَهُوْنَ ٩١   (الماۤئدة/٥: ٩١ـ٩٠)"),
                      const VoicePlayOrange(
                          audioUrl:
                              "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F03%20al-M%C4%81idah%2090%2691.mp3?alt=media&token=5c1ea99f-aaac-4449-a3f9-d22c38ef5207"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const ETadabb(),
          const AktivitasWidget(
              activityTitle: "Aktivitas 3.2",
              contentText:
                  "Amati gambar atau ilustrasi berikut ini! Lalu berilah tanggapan kalian yang dikaitkan dengan materi ajar yang dipelajari, yakni: Menjauhi Perkelahian Antarpelajar, Minuman Keras (Miras) dan Narkoba"),
          Tadabbur(idlist: tadabbur3),
          const FKisah(),
          const AktivitasWidget(
              activityTitle: "Aktivitas 3.3",
              contentText:
                  "Pahami dan renungkan artikel berikut ini, sebagai bagian dari pemahaman dari materi ajar yang akan dipelajari!"),
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
                    "Memilih Hidup",
                    style: h1.copyWith(color: orange),
                  ),
                ),
                ParagrafWidget(
                    content:
                        "   Wahai anakku! Hidup ini memang memilih, dan setiap pilihan pasti diminta pertanggungjawaban. Di sela-sela beraktifitas, kalian dapat memilih kegiatan positif (misalnya rajin menuntut ilmu, berolah raga, berteman dengan yang baik-baik saja, atau ikut kegiatan keagamaan) maupun negatif (terlibat perkelahian, sering dugem dan miras, bahkan narkoba. "),
                ParagrafWidget(
                    content:
                        "  Hanya harus disadari dan menjadi pengingat bagi semua, yakni akibat yang ditimbulkan sebagai konsekuensi pilihan yang diambil. Kalian bisa lihat sendiri, betapa banyak keterpurukan dan kehancuran hidup, akibat perkelahian dan tawuran, terlibat dalam miras dan narkoba. Itu baru sanksi dunia. Bagaimana nasib kalian di akhirat? Tidak terbayangkan kan! Semua itu, semestinya dapat menahan kita dari berbuat yang tidak benar, meskipun ada kebebasan memilih kemana langkah kaki harus diarahkan, tetapi jangan salah memilih hidup. Orang bijak menyampaikan, hidup itu perjuangan yang harus dimenangkan, bukan terpuruk di jeruji penjara, badan kurus kering, karena narkoba, atau miras yang menghempaskan cita dan asa bagi diri sendiri, keluarga, bangsa dan negara. "),
                ParagrafWidget(
                    content:
                        "   Karena itu, miliki cita dan asa yang besar, berpikir yang maju! Sebenarnya Allah Swt, telah menjadikan keberadaan kita ini sebagai bibit unggul, sehingga jangan sampai menjadi orang yang kalah, gagal dan terpuruk. Semestinya, setiap langkah yang diayunkan, usahakan merupakan langkah menuju kesuksesan dan kemenangan."),
                ParagrafWidget(
                    content:
                        "   Perhatikan sekitar kalian! Ada rekan, sahabat, atau anggota keluarga yang derajat dan martabatnya naik turun, akibat pilihan hidupnya. Itulah hidup. Kenapa naik, karena kesesuaian hidupnya dengan aturan Allah Swt. dan prinsip hidup yang dijalani memang benar. Sebaliknya kenapa turun, karena hidup yang dijalani tidak sesuainya dengan aturan dan norma hidup. "),
                ParagrafWidget(
                    content:
                        "Diadaptasi dari: Yesi Elsandra/yelsandra@yahoo.com"),
                ParagrafItalic(content: "Sumber: eramuslim")
              ],
            ),
          ),
          const GWawasan(),
          const AktivitasWidget(
              activityTitle: "Aktivitas 3.4",
              contentText:
                  "Bentuk kelas kalian menjadi 3 kelompok. Lalu, setiap kelompok mendapatkan sub-materi dari materi ajar yang akan dipelajari, yakni Menjauhi Perkelahian Antarpelajar; Miras dan Narkoba, agar dikaji, dipahami dan dipelajari. Hasilnya dipresentasikan!"),
          ParagrafWidget(
              content:
                  "Berikut ini, mari kita kaji bersama tentang ketiga hal tersebut:"),
          const Heading2(title: "1. Perkelahian Antarpelajar"),
          Heading3(title: "a. Pelajar yang dicari Islam"),
          ParagrafWidget(
              content:
                  "Islam itu menyelamatkan dan mendamaikan dunia, (termasuk bagi para pelajar), bukan membuat keonaran, perilaku menyimpang, apalagi melakukan tawuran dan perkelahian. Islam itu juga datang dengan solusi, bukan menambah problema. Tatap dunia ini dengan jernih, maka kalian akan mendapatkan jalan hidup yang menakjubkan dan mencengangkan."),
          ParagrafWidget(
              content:
                  "   Di dunia pendidikan, khususnya para pelajar, sudah banyak tinta emas ditorehkan oleh para pelajar muslim dengan segenap prestasi yang diraihnya. Kenapa mereka bisa begitu? Jawabannya karena Islam mengilhami dan menginspirasi seluruh tatanan hidupnya, agar hidup itu bermanfaat sebanyak-banyaknya untuk orang lain. Seperti yang disabdakan oleh Rasulullah Saw., yakni: Sebaik-baik manusia adalah yang paling banyak manfaatnya untuk orang lain"),
          ParagrafWidget(
              content:
                  "   Prestasi itu tidak hanya berupa capaian yang memiliki level dunia, nasional, provinsi atau kabupaten kota, tetapi hidup dengan benar berlandaskan ajaran Islam bagi diri dan lingkungan terkecil, termasuk di sekolah juga, merupakan prestasi yang membanggakan. Buat apa berprestasi besar, sementara shalat tidak dilaksanakan. Tampan bukan main, bahkan menjadi rebutan para gadis, tetapi tidak mampu membaca Al-Qur’an dengan benar."),
          ParagrafWidget(
              content:
                  "   Buat apa berkelahi dan terlibat tawuran, apa untungnya? Tidak ada kan! Bahkan kerugian yang didapatkan, termasuk sanksi akhirat sudah menunggu. Dunia ini penuh problema, jangan ditambah lagi dengan cara melarikan diri dari masalah. Jika ada masalah, cari solusinya tahap demi tahap, jika belum juga selesai, tetaplah optimis seraca memohon kepada Allah agar memberikan solusi terbaik, tetap bersandar kepada Allah Swt. Apapun keadaannya, susah senang dan sedih gembira selalu bersama Allah Swt. Jika itu bisa kalian lakukan, niscaya dunia akhirat sudah berada di genggaman kalian. "),
          Heading3(title: "b. Definisi Perkelahian dan Tawuran Pelajar"),
          ParagrafWidget(
              content:
                  "Ada beberapa istilah yang sering dipakai untuk mengidentifikasi perilaku menyimpang yang biasanya dilakukan oleh pelajar, yaitu perkelahian dantawuran. Keduanya bagian dari problema dunia pendidikan, utamanya terjadi di kota-kota besar, dan harus dicari solusi yang tepat, agar perilaku ini tidak dijadikan kebiasaan yang lumrah sebagai bagian dari kenakalan pelajar atau remaja."),
          ParagrafWidget(
              content:
                  "   Perkelahian antarpelajar atau remaja adalah suatu bentuk tindakan kekerasan atau agresi yang dilakukan oleh suatu kelompok pelajar dengan kelompok pelajar lain yang berusaha untuk menyingkirkan pihak lawan dengan menghancurkan atau membuat pihak mereka tidak berdaya."),
          ParagrafWidget(
              content:
                  "   Sementara makna dari tawuran pelajar adalah perkelahian yang melibatkan banyak pelajar, atau perkelahian yang dilakukan oleh sekelompok orang yang mana perkelahian tersebut dilakukan oleh orang yang sedang berstatus sebagai pelajar. Secara psikologis, perkelahian yang melibatkan pelajar usia remaja digolongkan sebagai salah satu bentuk kenakalan remaja (juvenile delinquency)."),
          ParagrafWidget(
              content:
                  "   Kenakalan pelajar atau remaja, menurut Sarlito W. Sarwono adalah tindakan oleh seseorang yang belum dewasa yang sengaja melanggar hukum dan yang diketahui oleh anak itu sendiri bahwa jika perbuatannya itu sempat diketahui oleh petugas hukum ia bisa dikenai hukuman."),
          ParagrafWidget(
              content:
                  "   Kenakalan remaja, termasuk perkelahian pelajar, dapat dibagi menjadi 2 jenis, yaitu: "),
          ParagrafList(idlist: kenRemaja),
          Heading3(title: "c. Faktor Penting Adanya Perkelahian Pelajar"),

          ParagrafWidget(
              content:
                  "Jika kita sepakat bahwa perkelahian pelajar menjadi bagian dari kenakalan remaja, termasuk kelainan perilaku remaja pada umumnya, maka banyak faktor penting adanya perkelahian pelajar, antara lain:"),
         ParagrafList(idlist: perPelajar),
          Heading3(title: "d. Ikhtiar Mencegah Perilaku Menyimpang"),
          ParagrafWidget(
              content:
                  "Perilaku menyimpang, termasuk perkelahian pelajar, harus segera dihentikan, jangan dianggap remeh dan lumrah, agar tidak terjadi skala yang lebih besar. Ingat kebakaran besar, dimulai dari titik api yang kecil. Berikut ini beberapa upaya pencegahan yang dapat dilakukan, yaitu:"),
          ParagrafList(idlist: menMenyimpang),
          Heading3(title: "e. Penanganan Pelajar yang Menyimpang"),
          ParagrafWidget(
            content:
                "Minimal ada 5 penanganan terhadap pelajar yang menyimpang, yaitu: ",
          ),
          ParagrafList(idlist: menMenyimpang),
          ParagrafWidget(
              content:
                  "   Berdasarkan semua paparan tersebut, Islam mengambil sudut pandang yang berbeda tentang perkelahian pelajar. Kuncinya kepada posisi balig, jika seseorang itu sudah balig, maka semua perbuatanya (baik dan buruk) menjadi tanggung jawabnya. Tidak seperti hukum positif di Indonesia, yang biasanya sanksi atas perbuatan dikenakan jika usianya antara 17 atau 18 tahun. "),
          ParagrafWidget(
              content:
                  "   Sebab itu, sejak dini Islam mengarahkan orang tua agar membimbing dan mendidik puta putrinya sejak kecil tentang al-ahkamul al-khamsah, yakni 5 hukum, meliputi: wajib, sunnah, mubah, makruh dan haram. Melalui jalan tersebut, sejak kecil anak-anak diajarkan untuk tidak melakukan tindak kekerasan, termasuk perkelahian atau tawuran pelajar. Ajaran Islam dengan tegas tidak pernah mengajarkan kekerasan (anarkis). "),
          ParagrafWidget(
              content:
                  "   Apapun alasannya, mengambil jalan kekerasan, tidak dibenarkan dalam Islam. Tindakan kekerasan itu, bukan perwujudan dari Islam. Jika ingin membela kebenaran, harus menggunakan cara-cara yang benar juga. Tidak asal bela saja, sementara kebenaran disampingkan. Sebab, sebagai pelajar muslim, kita semua diingatkan dengan visi dan misi Islam sebagai agama yang damai, santun, dan menjadi rahmat untuk semesta alam (Islam yang rahmatan lil ‘ālamin), sebagaimana firman Allah Swt:"),
          const QuranWidget(
              arab:
                  "وَمَآ اَرْسَلْنٰكَ اِلَّا رَحْمَةً لِّلْعٰلَمِيْنَ    (الانبياۤء/ا٢: ١٠٧)"),
          const VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F03%20al-Anbiy%C4%81%E2%80%99%20107.mp3?alt=media&token=58140e49-111a-4822-bdb0-35fe51fa8973"),
          const Terjemahan(
              content:
                  " dan tiadalah Kami mengutus kamu (Muhammad), melainkan untuk (menjadi) rahmat bagi semesta alam.",
              riwayat:
                  "(Q.S. al-Anbiyā’/21: 107)"),
          ParagrafWidget(
              content:
                  "   Sekarang ini, Islam dihadapkan pada problema besar, yakni membumikan sekaligus mewujudkan Islam sebagai rahmat bagi alam semesta. Pertanyaan yang segera muncul adalah apa kiat dan strateginya, sehingga Islam itu benar-benar mampu menjawab realitas problematika kemanusian, damai untuk semua, dan menebar keselamatan dan ketenteraman untuk sesama?"),
          ParagrafWidget(
              content:
                  "   Tentu, bukan persoalan mudah untuk menjawab problematika tersebut, namun yang terpenting adalah komitmen semua umat Islam, apapun profesinya (termasuk pelajar muslim), memerankan visi dan misinya dengan benar--di tengah problematika dunia yang semakin kompleks--sejalan dengan risalah Islam seperti yang pernah dicontohkan oleh Rasulullah Saw. melalui Piagam Madinah."),
          ParagrafWidget(
              content:
                  "   Melalui Piagam Madinah inilah, Islam mampu menghadirkan kedamaian, ketenteraman dan harmoni yang tidak menimbulkan luka, apalagi merusak. Sebuah manajemen hidup yang saling berdampingan secara harmonis antar satu sama lain, tanpa perlu mengorbankan nyawa, melukai fisik dan jiwa, merusak harta benda, dan prinsip-prinsip keagamaan yang sudah disepakati bersama."),
          const Heading2(title: "2. Minuman Keras (Miras)"),
          Heading3(title: "a. Pengertian"),
          ParagrafWidget(
              content:
                  "Khamr (خمر )adalah jenis minuman dan makanan yang dapat memabukkan dan menghilangkan kesadaran seseorang. Makna lainnya adalah segala apapun yang memabukkan atau merusak akal sehat. Berlandaskan pengertian tersebut, segala jenis narkoba termasuk makna dari khamr. Rasulullah Saw. bersabda: “Setiap yang memabukkan adalah khamr, dan setiap khamr adalah diharamkan”. (HR. Ahmad dan Abu Daud)"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Text(
                  "   Termasuk jenis khamr adalah alkohol yang merupakan zat kimia yang dipergunakan untuk beragam keperluan di dunia medis, antara lain disinfektan, pembersih, pelarut, bahan bakar, dan sebagai campuran zat kimia lainnya. Penggunaan alkohol dalam makna terakhir, tidak masuk dalam kategore khamr, dan itu berarti diperbolehkan (tidak haram)",
                  style: regular_paragraf,
                  textAlign: TextAlign.justify, // Atur sesuai kebutuhan
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/quote31.png",
                width: 110,
              )
            ],
          ),
          ParagrafWidget(
              content:
                  "   Sebaliknya, jenis-jenis obat psikotropika dan narkotika, meski tidak mengandung alkohol, ia tetap haram digunakan. Sebab, dampak negatifnya sangat buruk sekali, baik dilihat dari sisi akal pikiran, kesehatan, harta benda maupun kepribadian bagi semua."),
          ParagrafWidget(
              content:
                  "   Itulah sebabnya khamr menurut istilah Al-Qur’an disebut رجس/rijs (perilaku yang sangat buruk, jijik, kotor, bahkan najis). Perhatikan isi kandungan Q.S. al-Maidah/5: 90."),
          ParagrafWidget(
              content:
                  "   Begitu besarnya kerugian akibat khamr, antara lain: menjadi sumber penyakit, merusak saraf dan mental, bersifat racun/meracuni, merusak liver, merusak akhlak dan sumber segala kerusakan."),
          ParagrafWidget(
              content:
                  "   Itulah sebabnya, Islam mengelompokkan perilaku tersebut, sebagai bagian dari perbuatan setan, dan Al-Qur’an secara tegas menyebutkan bahwa setan itu musuh utama manusia (Q.S. al-Isrā’/17: 26-27). Itulah sebabnya, perilaku tersebut harus dihindari dan dijauhi, jangan pernah untuk mencoba-coba, khususnya pada khamr."),
          Heading3(
              title: "b. Khamr Berdasarkan Telaah Q.S. al-Māidah/5: 90-91."),
          Heading4(title: "1. Bacaan"),
          const QuranWidget(
              arab:
                  "يٰٓاَيُّهَا الَّذِيْنَ اٰمَنُوْٓا اِنَّمَا الْخَمْرُ وَالْمَيْسِرُ وَالْاَنْصَابُ وَالْاَزْلَامُ رِجْسٌ مِّنْ عَمَلِ الشَّيْطٰنِ فَاجْتَنِبُوْهُ لَعَلَّكُمْ تُفْلِحُوْنَ ٩٠ اِنَّمَا يُرِيْدُ الشَّيْطٰنُ اَنْ يُّوْقِعَ بَيْنَكُمُ الْعَدَاوَةَ وَالْبَغْضَاۤءَ فِى الْخَمْرِ وَالْمَيْسِرِ وَيَصُدَّكُمْ عَنْ ذِكْرِ اللّٰهِ وَعَنِ الصَّلٰوةِ فَهَلْ اَنْتُمْ مُّنْتَهُوْنَ ٩١   (الماۤئدة/٥: ٩١ـ٩٠)"),
          const VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F03%20al-M%C4%81idah%2090%2691.mp3?alt=media&token=5c1ea99f-aaac-4449-a3f9-d22c38ef5207"),
          Heading4(title: "2. Terjemah Ayat"),
          const Terjemahan(
              content:
                  "Wahai orang-orang yang beriman! Sesungguhnya minuman keras, berjudi, (berkurban untuk) berhala, dan mengundi nasib dengan anak panah, adalah perbuatan keji dan termasuk perbuatan setan. Maka jauhilah (perbuatan-perbuatan) itu, agar kamu beruntung",
              riwayat: "(Q.S. al-Māidah/5: 90)"),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Dengan minuman keras dan judi itu, setan hanyalah bermaksud menimbulkan permusuhan dan kebencian di antara kamu, dan menghalang-halangi kamu dari mengingat Allah dan melaksanakan shalat, maka tidakkah kamu mau berhenti?.',
                  style: regular_paragraf.copyWith(fontStyle: FontStyle.italic),
                ),
                TextSpan(
                    text: '(Q.S. al-Māidah/5: 91)', style: regular_paragraf),
              ],
            ),
            textAlign: TextAlign.justify,
          ),
          Heading4(title: "3. Asbabun Nuzul"),
          ParagrafWidget(
              content:
                  "Diriwayatkan dari Abu Hurairah r.a.: Saat Rasulullah Saw. datang di Madinah, masih banyak yang meminum khamr dan makan dari hasil judi. Mereka bertanya tentang kedua hal tersebut, maka turunlah Q.S. al-Baqarah/2: 219. Dipahami oleh sebagian mereka bahwa itu hanya dosa besar, bukan haram."),
          ParagrafWidget(
              content:
                  "   Karena dipahami seperti itu, kebiasaan buruk ini masih tetap dilanjutkan. Ketika ada kaum muhajirin menjadi imam shalat dalam keadaan mabuk, terjadilah kesalahan dalam membaca Al-Qur’an. Lalu turunlah Q.S. al-Nisā’/4: 43 yang berisi larangan mengerjakan shalat dalam keadaan mabuk."),
          ParagrafWidget(
              content:
                  "   Meskipun sudah turun ayat ini, yang memberi isyarat lebih jelas dan tegas, agar dihindari, dijauhi dan tidak dilakukan, kebiasaan buruk itu masih juga dilakukan. Akhirnya turunlah Q.S. al-Māidah/5: 90-91, yang menegaskan keharaman khamr sehingga mereka pun berkata, ‘Ya Allah, kami (bertekad) berhenti dari meminumnya’."),
          ParagrafWidget(
              content:
                  "   Selanjutnya, mereka bertanya kepada Rasulullah Saw.: bagaimana orang-orang terdahulu yang terbunuh di jalan Allah Swt. atau mereka yang meninggal di tempat tidur, padahal dahulunya, mereka itu suka meminum khamr atau makan hasil perjudian, padahal keduanya kini telah ditetapkan sebagai perbuatan keji dan perbuatan setan. Lalu turunlah Q.S. al-Māidah {5}: 93 yang menjelaskan bahwa apa yang telah dilakukan umat muslim sebelum datangnya larangan ini tidak dinilai sebagai suatu dosa."),
          const Heading2(title: "c. Kandungan Isi"),
          Heading4(title: "Isi dan kandungan ayat-ayat ini, antara lain:"),
          ParagrafList(idlist: kanIsi3),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 20,
                child: Text(
                  "8.",
                  style: regular_paragraf,
                ),
              ),
              Expanded(
                child: Text(
                  "Betapa pun majunya zaman sekarang ini, yang namanya berhala modern masih menjangkiti masyarakat luas, tak terkecuali sebagian umat Islam. Itulah sebabnya, ayat ini juga mengingatkkan tentang peran akal atau rasio dan kalbu (hati nurani) yang sangat penting. Jangan sampai terjadi benda yang tidak bernyawa (berhala) yang tidak membawa manfaat atau madharat sedikit pun, ditahbiskan memiliki sifat-sifat ketuhanan, tentu sikap dan perilaku tersebut sangat bodoh dan irasional.",
                  textAlign: TextAlign.justify,
                  style: regular_paragraf,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/quote32.png",
                width: 110,
              )
            ],
          ),
          Heading3(title: "d. Sikap terhadap Khamr"),
          ParagrafWidget(
              content:
                  "Begitu berbahayanya khamr dalam kehidupan pribadi, keluarga, masyarakat, termasuk kelangsungan bangsa dan negara, maka sikap tepat yang perlu dilakukan adalah:"),
          ParagrafList(idlist: sikKhamr),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 20,
                child: Text(
                  "4.",
                  style: regular_paragraf,
                ),
              ),
              Expanded(
                child: Text(
                  "Mengedepankan pola hidup bersih lahir batin; menjauhi sikap dan perilaku yang menjadikan kehidupan rugi secara cepat dan drastis; tetap menjaga akalnya, agar tetap sehat (tidak dikotori dengan khamr; mencari rezeki yang halal dan berkah; serta timbulnya kesadaran sendiri untuk menjalankan aturan agama secara baik dan benar.",
                  textAlign: TextAlign.justify,
                  style: regular_paragraf,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/quote33.png",
                width: 107,
              )
            ],
          ),
          ParagrafWidget(
              content:
                  "   Begitu besarnya kerugian, akibat khamr, termasuk narkoba, maka Islam mengelompokkan perilaku tersebut, sebagai bagian dari perbuatan setan, dan Al-Qur’an dengan tegas menyatakan bahwa setan itu musuh utama manusia (Q.S. al-Isrā’/17: 26-27). Itulah sebabnya, perilaku tersebut harus dihindari dan dijauhi, jangan pernah untuk mencoba-coba, khususnya pada khamr (miras)."),
          const Heading2(title: "3. Narkoba"),
          Heading3(title: "a. Narkoba Ditinjaui dari Islam "),
          ParagrafWidget(
              content:
                  "Istilah narkoba, di dalam Al-Qur’an memang tidak ditemukan padanannya. Meskipun begitu, tidak berarti Islam tidak menjelaskannya. Istilah ini harus didekati melalui qiyas, yakni satu masalah yang belum ada nash-nya, dicarikan padanan dengan masalah yang sudah ada nashnya, disebabkan persamaan illat (sebab, landasan, motivasi hukum). Dalam hal narkoba, maka disamakan dengan khamr karena sama-sama memabukkan dan membahayakan atau merugikan. Oleh karena itu, narkoba disamakan dengan khamr"),
          ParagrafWidget(
              content:
                  "   Khamr (خمر ) adalah jenis minuman dan makanan yang dapat memabukkan dan menghilangkan kesadaran seseorang. Pengertian yang lain adalah segala jenis apapun yang memabukkan atau merusak akal sehat. Itulah sebabnya, segala jenis narkoba termasuk makna dari Khamr. \nHal tersebut sejalan dengan sabda Rasulullah Saw.:"),
          const QuranWidget(
              arab:
                  "عَنِ ابْنِ عُمَرَ قَالَ: قَالَ رَسُوْلُ اللّٰهِ صَلَّ اللَّهُ عَلَيْهِ وَسلَّمَ: كُلُّ مُسْكِرٍخَمْرٌوَكُلُّ مُسْكِرٍ حَرَامٌ(رواه ابو داود)"),
          const Terjemahan(
              content:
                  "Dari Ibnu ’Umar dia berkata, Rasulullah Saw. bersabda: “Setiap yang memabukkan adalah khamr, dan setiap yang memabukkan adalah diharamkan”.",
              riwayat: "(HR. Abu Daud)."),
          ParagrafWidget(
              content:
                  "   Begitu juga, jenis-jenis obatan psikotropika dan narkotika, meski tidak mengandung alkohol, ia tetap haram digunakan. Sebab, dampak negatifnya sangat buruk sekali, baik dilihat dari sisi akal pikiran, kesehatan, harta benda maupun kepribadian bagi semua. Sebab itu, khamr menurut istilah Al-Qur’an disebut rijs (perilaku yang sangat buruk, jijik, kotor, bahkan najis)."),
          ParagrafWidget(
              content:
                  "   Sebagai bagian untuk memperjelas pemahaman kita tentang narkoba, mari kita telaah ayat-ayat yang berbicara tentang khamr. Terdapat urutan turunnya ayat-ayat yang berbicara tentang khamr, yakni ada 4 ayat yang dapat disimpulkan sebagai berikut:"),
          ParagrafList(idlist: narkoba),
          ParagrafWidget(
              content:
                  "   Begitu besarnya kerugian dan madharat akibat khamr/narkoba, maka Islam mengelompokkan perilaku tersebut, sebagai bagian dari perbuatan setan, dan Al-Qur’an dengan tegas menyebutkan bahwa setan itu musuh utama manusia (Q.S. al-Isrā’ {17}: 26-27). Itulah sebabnya, perilaku tersebut harus dihindari dan dijauhi, jangan pernah mendekati apalagi berusaha mencoba-coba."),
          Heading3(title: "b. Narkoba Ditinjaui dari Hukum Indonesia"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 20,
                child: Text(
                  "1.",
                  style: regular_paragraf,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pengertian",
                      textAlign: TextAlign.justify,
                      style: regular_paragraf,
                    ),
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Narkoba',
                              style: regular_paragraf.copyWith(
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: ' adalah singkatan dari ',
                              style: regular_paragraf),
                          TextSpan(
                              text: 'nar',
                              style: regular_paragraf.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: ' = Narkoba;', style: regular_paragraf),
                          TextSpan(
                              text: ' ko',
                              style: regular_paragraf.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.italic)),
                          TextSpan(
                              text: ' Psikotropika; dan',
                              style: regular_paragraf),
                          TextSpan(
                              text: ' ba',
                              style: regular_paragraf.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.italic)),
                          TextSpan(
                              text:
                                  ' Bahan-bahan adiktif (misalnya alkohol, rokok, kopi, dan lain sebagainya). ',
                              style: regular_paragraf),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Narkotika: ',
                                    style: regular_paragraf.copyWith(
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text:
                                        ' adalah zat atau obat yang berasal dari tanaman atau bukan tanaman, baik sintesis maupun semi sintetis, yang menyebabkan penurunan atau perubahan kesadaran, hilangnya rasa, mengurangi sampai menghilangkan rasa nyeri, dan dapat menimbulkan ketergantungan, yang dibedakan ke dalam golongan-golongan (sebagaimana terlampir dalam UU Nomor 35 Tahun 2009 tentang Narkotika).',
                                    style: regular_paragraf),
                                TextSpan(text: ' ', style: regular_paragraf),
                              ],
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "assets/images/quote34.png",
                          width: 107,
                        )
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Psikotropika ',
                              style: regular_paragraf.copyWith(
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                              text:
                                  'adalah zat atau obat yang berasal dari tanaman atau bukan tanaman, baik sintesis maupun semi sintetis, yang menyebabkan penurunan atau perubahan kesadaran, hilangnya rasa, mengurangi sampai menghilangkan rasa nyeri, dan dapat menimbulkan ketergantungan, yang dibedakan ke dalam golongan-golongan (sebagaimana terlampir dalam UU Nomor 35 Tahun 2009 tentang Narkotika).',
                              style: regular_paragraf),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Zat Adiktif ',
                              style: regular_paragraf.copyWith(
                                  fontWeight: FontWeight.w600)),
                          TextSpan(
                              text:
                                  'adalah obat serta bahan-bahan aktif yang apabila dikonsumsi oleh organisme hidup, maka dapat menyebabkan kerja biologi serta menimbulkan ketergantungan atau adiksi yang sulit dihentikan dan berefek ingin menggunakannya secara terus menerus.',
                              style: regular_paragraf),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    ParagrafWidget(
                        content:
                            "Tersedianya zat yang berkhasiat menghilangkan rasa sakit, atau menimbulkan perubahan suasana batin dan perilaku, merupakan bagian dari kemurahan Allah Swt. yang menciptakan rasa sakit atau letih, dan pada waktu yang sama menyediakan obat atau penawarnya."),
                    ParagrafWidget(
                        content:
                            "Hanya yang menjadi masalah, jika zat tersebut disalahgunakan (digunakan secara berlebihan dan berulangka kali di luar tujuan pengobatan, atau tanpa melalui konsultasi dan pengawasan dokter) akan menimbulkan dampak ketergantungan atau kecanduan. Ketergantungan kepada zat tertentu, dapat menimbulkan gangguan jasmani, rohani, termasuk penderitaan yang mengakibatkan kematian."),
                    ParagrafWidget(
                        content:
                            "Manusia, apalagi sebagai orang beriman, yang diberikan anugerah keimanan dan akal pikir yang sehat, seharusnya mampu menghindari narkoba. Dua sampai tiga dasawarsa terakhir, penggunaan dan peredaran narkoba secara ilegal di berbagai belahan dunia termasuk di Indonesia menunjukkan peningkatan yang tajam, merambah semua kalangan, tidak terkecuali di dunia pendidikan, serta meminta banyak korban berjatuhan. "),
                    ParagrafWidget(
                        content:
                            "Di sisi lain, penyalahgunaan narkoba juga berkaitan dengan beragam tindak kejahatan, kecelakaan lalu lintas, kecelakaan kerja, putus sekolah, PHK (Pemutusan Hubungan Kerja), hancurnya masa depan, termasuk di dalamnya penularan HIV/AIDS."),
                    Row(
                      children: [
                        Expanded(
                          child: ParagrafWidget(
                              content:
                                  "Begitu juga, dampak negatif lain, sampai pada rusaknya organ vital seperti: otak, jantung, paru-paru, hati, ginjal, organ reproduksi, serta beragam gangguan rohani, seperti perasaan, pikiran, kepribadian, sikap dan perilaku. Semua itu, menjadi sebab kita dilarang menyalahgunakan narkoba yang tidak sesuai dengan ketentuan medis dan melanggar hukum."),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "assets/images/quote35.png",
                          width: 107,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            SizedBox(
              width: 20,
              child: Text(
                "2.",
                style: regular_paragraf,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Penyalahgunaan Narkoba",
                    style: regular_paragraf,
                  ),
                  ParagrafWidget(
                      content:
                          "Penyalahgunaan Narkoba adalah penggunaan narkoba di luar keperluan medis, tanpa pengawasan dokter, dan merupakan perbuatan melanggar hukum (Pasal 59, UU Nomor 5 Tahun 1997 tentang Psikotropika; serta Pasal 84, 85, dan 86 UU Nomor 22 Tahun 1997 tentang Narkotika."),
                  ParagrafWidget(
                      content:
                          "Penyalahgunaan Narkoba merupakan gangguan perilaku dan perbuatan anti sosial, seperti: berbohong, membolos, malas, sex bebas, mencuri, melanggar aturan, tidak disiplin, merusak, melawan orang tua dan guru, suka mengancam dan berkelahi, sehingga mengganggu ketertiban, ketenteraman dan keamanan bagi banyak pihak. "),
                  ParagrafWidget(
                      content:
                          "Penyalahgunaan Narkoba meliputi: taraf coba-coba, hiburan, penggunaan secara teratur, sampai taraf ketergantungan. Boleh jadi, baru taraf coba-coba, tetapi langsung ketergantungan, karena sifat narkoba yang mempunyai daya ketergantungan yang tinggi."),
                  ParagrafWidget(
                      content:
                          "Penyalahgunaan Narkoba dilakukan dengan cara ditelan, disuntikkan dengan jarum suntik, rokok, dihisap dengan hidung, semua cara itu tergantung jenis narkoba yang digunakan. Jika dengan jarum suntik, yang dipakai beramai-ramai bisa menjadi sebab penularan HIV/AIDS, Hepatitis B dan C, termasuk penyakit mematikan yang sampai sekarang belum ada obatnya"),
                  Row(
                    children: [
                      Expanded(
                        child: ParagrafWidget(
                            content:
                                "Sekali mencoba narkoba, menimbulkan keinginan untuk mencoba lagi, sampai ketagihan dan menderita ketergantungan. Sebab itu, harus berani menyatakan tidak! jauhi dan hindari! Umumnya, baru muncul keinginan menjauhi, tetapi sudah terlambat, seperti dicengkeram sesuatu yang tidak bisa melepaskan lagi."),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/images/quote36.png",
                        width: 107,
                      )
                    ],
                  ),
                  ParagrafWidget(
                      content:
                          "Ketergantungan narkoba menimbulkan gejala putus obat (para pecandu biasa menyebut “sakaw” yang maknanya ‘sakit’. Keadaan tersebut, sangat menyakitkan dan menimbulkan penderitaan yang luar biasa. Disebabkan harga narkoba itu sangat mahal, maka biaya merawatnya sangat tinggi, sehingga andaikata orang tua/keluarganya kaya, niscaya semuanya akan terkuras habis dan bangkrut, apalagi bagi yang berstatus miskin. ")
                ],
              ),
            )
          ]),
          Heading4(title: "3.    Berbagai Jenis Narkoba yang disalahgunakan"),
          Heading3(title: "a.   Jenis Narkotika"),
          Heading4(title: "Jenis ini, antara lain:"),
          BulledList(idlist: jenNarkotika),
          Heading3(title: "b. Jenis Psikotropika"),
          Heading4(title: "Jenis ini, antara lain:"),
          BulledList(idlist: jenPsikotropika),
          
          Heading3(title: "c. Jenis Zat Adiktif"),
          Heading4(title: "Jenis ini, meliputi:"),
          Row(
            children: [
              Expanded(child: BulledList(idlist: jenZat)),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/quote37.png",
                width: 107,
              )
            ],
          ),
          BulledList(idlist: jenZat2),
          Heading4(title: "4. Pencegahan Penyalahgunaan Narkoba"),
          ParagrafWidget(
              content:
                  "Banyak cara yang dapat dilakukan, agar tidak terjadi penyalahgunaan narkoba, baik yang berasal dari internal pribadi, orang tua/keluarga, maupun masyarakat. Khusus dari diri sendiri, hal yang dapat dilakukan, antara lain:"),
       
       BulledList(idlist: penyNarkoba),
          ParagrafWidget(
              content:
                  "   Data berikut ini (meskipun data ini agak lama, tentu lebih memprihatinkan lagi jika ditelaah data terbaru), menggambarkan betapa narkoba, sudah sangat membahayakan bagi kelangsungan negara Indonesia. BNN (Badan Narkotika Nasional) sendiri bertekad Indonesia harus bebas narkotika tahun 2015 (tekad yang sangat meleset), karena buku ini disusun tahun 2020."),
          Heading4(
              title:
                  "Data ini diperoleh dari Editorial Media Indonesia tanggal 31 Mei 2012, yaitu: "),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bagroundDarkOrange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: 'INDONESIA ',
                          style: regular_paragraf.copyWith(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic)),
                      TextSpan(
                        text:
                            'dalam situasi darurat narkoba. Serbuan barang laknat itu dari luar negeri kian menjadi-jadi. Peredarannya semakin menggila dan menjerat seluruh lapisan masyarakat. ',
                        style: regular_paragraf.copyWith(
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "\nKini, tidak ada satu pun tempat di negeri ini yang steril dari narkoba. Indonesia yang dulu cuma dijadikan transit oleh sindikat internasional sekarang naik kelas menjadi destinasi penjualan. Narkoba bahkan mulai diproduksi di dalam negeri. \n\nSerbuan narkoba dari mancanegara bak banjir bandang. Pada pertengahan Mei lalu, misalnya, sabu asal China seberat 351 kg senilai sekitar Rp702 miliar disita jajaran Polda Metro Jaya. Sabu yang bisa meracuni lebih dari 3 juta jiwa itu sempat lolos dari Pelabuhan Tanjung Priok.\n\nDua pekan berselang, giliran Badan Narkotika Nasional (BNN) menyita hampir 1,5 juta butir ekstasi. Nilai pil gedhek yang juga berasal dari China itu tak tanggung-tanggung pula, lebih dari Rp 400 miliar. \n\nDari dua kasus yang terungkap itu saja cukup membuat kita geleng-geleng kepala. Belum lagi penangkapan-penangkapan yang lain.\n\nNarkoba yang diperkirakan lolos jauh lebih besar. Data BNN menunjukkan 49,5 ton sabu, 147 juta butir ekstasi, 242 ton ganja, dan hampir 2 ton heroin lepas dari jerat petugas sepanjang 2011. Barang haram bermacam jenis itu mengalir deras, membius pecandu, dan mencari mangsa baru.\n\nBagi mafia narkoba internasional, Indonesia ibarat surga. Ratusan juta penduduk merupakan pasar empuk untuk mengeruk fulus. Tak kurang dari Rp1 triliun setiap hari mereka kantongi dengan tumbal 15 ribu warga Indonesia setiap tahun mati. \n\nIronisnya, penegak hukum terus saja lembek menghadapi keberingasan sindikat narkoba. Sengaja atau tidak, kemudahan demi kemudahan diobral buat para penghancur masa depan bangsa itu. Masih sering kita dapati hakim memvonis ringan bandar, padahal undang-undang mengamanatkan kepada mereka untuk menghukum seberat-beratnya pelaku kejahatan narkoba. \n\nTerpidana narkotika juga nyaman di balik jeruji besi. Penjara yang semestinya membuat mereka jera malah menjadi tempat paling aman untuk mengendalikan bisnis terlarang itu \n\nPenjahat narkotika kini bahkan punya benteng terakhir bernama grasi. Contohnya pun belum lama terpampang, yakni ketika Schapelle Corby mendapat hadiah pengurangan hukuman lima tahun oleh Presiden Susilo Bambang Yudhoyono. \n\nBerkali-kali kita diingatkan bahwa narkoba merupakan extraordinary crime, kejahatan luar biasa, sehingga mutlak disikapi dengan ketegasan yang luar biasa pula. Narkoba merupakan malapetaka yang nyata, tetapi penegak hukum hingga Presiden malah lunglai memberangusnya. \n\nDalam lirik tembang Koes Plus, orang bilang tanah kita tanah surga karena keindahan dan kesuburan alamnya. Sayang, Indonesia kini juga menjadi surga narkoba. Lebih celaka lagi, surga itu ikut diciptakan pengelola negara yang semestinya menghadirkan neraka bagi penjahat narkotika.",
                  style: regular_paragraf.copyWith(fontStyle: FontStyle.italic),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ParagrafWidget(
              content:
                  "   Narkoba menjadi hal serius. Jika tidak ditangani komprehensif (terpadu dan menyeluruh), bukan hanya mengakibatkan kerugian ekonomi, tetapi juga  degradasi sumber daya manusia, lost generation, termausk juga kejahatan ikutannya seperti korupsi, pencucian uang, pejambretan, hingga  perampokan. Belum lagi persebaran HIV AIDS dan Hepatitis."),
          ParagrafWidget(
              content:
                  "   Perlu kita sadari bersama, bahwa lokasi Indonesia sangat strategis dalam peredaran narkoba internasional, sehingga risiko narkoba yang bakal masuk ke Indonesia pun semakin besar. Mengutip data dari BNN, khususnya dari Direktorat Tindak Pidana Narkoba, per Maret 2012 telah disita ganja dengan total 23.891.244,25 gr, pohon ganja (stalks) 1.839.664, luas area penanaman ganja 305,83 Ha, dan bibit ganja 4,38 gr. Data ini, menjadi realitas yang sangat memprihatinkan dan menyesakkan dada bagi siapa saja yang mencintai Indonesia."),
          ParagrafWidget(
              content:
                  "   Berdasarkan gambaran tersebut, setiap kita, siapa pun orangnya, harus menyadari madharat/bahaya besar khamr, karena bahaya latennya melingkupi keluarga kita, yang terkena tidak mengenal batas usia, jenis profesi, bahkan agama."),
          ParagrafWidget(
              content:
                  "   Sebab itu, Islam memberi solusi yang integratif dan komprehensif, baik dilihat dari sanksi hukum; narkoba di dunia, serta ketetapan pidana yang terkait dengan narkoba yang dikelompokkan menjadi 10. Mereka itu adalah produsen, distributor, pemakai, kurir, penjual, pemesan, pembayaran dan pemakai hasil narkoba."),
          const AktivitasWidget(
              activityTitle: "Aktivitas 3.5",
              contentText:
                  "Kelas dibagi menjadi 3 kelompok, lalu silakan pelajari data penyalahgunaan narkoba di kalangan pelajar, lalu bagaimana dampak negatifnya bagi dunia pendidikan di Indonesia menyongsong Generasi Emas Indonesia. Persiapkan juga buku catatan, atau laptop yang kalian miliki untuk presentasi. Lalu setelah mengetahui data yang ada, apa yang harus kalian lakukan, agar tidak terjadi penyalahgunaan narkoba bagi diri sendiri, keluarga dan lingkungan sekolah kalian!"),
          const HPenerapan(),
          ParagrafWidget(
              content:
                  "Setelah menelaah materi Menjauhi Perkelahian Antarpelajar, Miras dan Narkoba, diharapkan peserta didik dapat membiasakan karakter dalam kehidupan sehari-hari, sebagai berikut."),
          TabelPenerapanKarakterWidget(idlist: tabelPenKarakter3),
          const IReflek(),
          const BorderBlack(
              content:
                  "Perkelahian pelajar, kata sebagian orang menjadi hal yang lumrah, meskipun jika ditelaah dari sudut pandang Islam, perbuatan itu harus dipertanggungjawabkan, karena pelakunya sudah balig. \n\nDi setiap kelas, pasti ada yang menjadi pengurus OSIS, maka dibantu Ketua cobalah menyusun makalah sebanyak 3 lembar saja, boleh ditulis tangan atau cara yang lain tentang apa faktor, mengapa, siapa dan tempatnya di mana, sehingga terjadi perkelahian pelajar di internal atau eksternal sekolah kalian! Hasilnya dipresentasikan, sementara guru dan perwakilan kelas menilai dan memberi tanggapan atas presentasi yang dilakukan!"),
          const JRangkum(),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: purpleBagroundLight,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const ParagrafListCostum(
                    no: "1",
                    content:
                        "Perkelahian pelajar, dapat dibagi menjadi 2 jenis, yaitu: (1) Delikuensi Situasional, yakni perkelahian terjadi karena adanya situasi yang mengharuskan mereka untuk berkelahi, dan (2) Delikuensi Sistematik, yakni: para pelajar yang terlibat dalam perkelahian itu berada di dalam suatu organisasi tertentu atau Geng.\nFaktor penting adanya perkelahian pelajar, antara lain: "),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ParagrafListAbjad(idlist: fakPerkelahian),
                  
                ),

                const ParagrafListCostum(
                    no: "2",
                    content:
                        "Khamr adalah jenis minuman dan makanan yang dapat memabukkan dan menghilangkan kesadaran seseorang. Makna lain adalah segala apapun yang memabukkan atau merusak akal sehat. Berlandaskan pengertian tersebut, segala jenis narkoba, minuman keras termasuk makna dari khamr"),
                const ParagrafListCostum(
                    no: "3",
                    content:
                        "Termasuk jenis khamr adalah alkohol yang merupakan zat kimia yang dipergunakan untuk beragam keperluan di dunia medis, antara lain disinfektan, pembersih, pelarut, bahan bakar, dan sebagai campuran zat kimia lainnya. Penggunaan alkohol dalam makna terakhir, tidak masuk dalam kategore khamr, dan itu berarti diperbolehkan (tidak haram)"),
                const ParagrafListCostum(
                    no: "4",
                    content:
                        "Tidak pernah coba-coba memakai atau meminum khamr, karena bahaya dan madharatnya sangat besar, baik bagi diri sendiri, keluarga, masyarakat, bangsa dan negara. Khamr termasuk rijs, yakni sikap dan perbuatan yang amat sangat tercela, buruk, keji, jijik, kotor, bahkan bisa bermakna najis."),
             
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
          child: RichText(text: TextSpan(
            style: regular_paragraf,
            children: <TextSpan>[
              const TextSpan(text: "Narkoba adalah singkatan dari "),
              TextSpan(text: "nar ", style: regular_paragraf.copyWith(fontWeight: FontWeight.w600,fontStyle:FontStyle.italic), ),
              const TextSpan(text: "= Narkoba; "),
              TextSpan(text: "ko ",style: regular_paragraf.copyWith(fontWeight: FontWeight.w600,fontStyle:FontStyle.italic)),
              const TextSpan(text: "= Psikotropika; dan "),
              TextSpan(text: "ba ",style: regular_paragraf.copyWith(fontWeight: FontWeight.w600,fontStyle:FontStyle.italic)),
              const TextSpan(text: "= Bahan-bahan adiktif (alkohol, rokok, kopi, dan lain sebagainya). "),
            ]
          ), textAlign: TextAlign.justify,)
        )
      ],
    ),
          
                const ParagrafListCostum(
                    no: '6',
                    content:
                        'Narkotika adalah zat atau obat yang berasal dari tanaman atau bukan yang menyebabkan penurunan atau perubahan kesadaran, hilangnya rasa, mengurangi sampai menghilangkan rasa nyeri, dan dapat menimbulkan ketergantungan.'),
                const ParagrafListCostum(
                    no: '7',
                    content:
                        'Psikotropika adalah zat atau obat, baik alamiah maupun sintetis yang berkhasiat psikoaktif melalui pengaruh selektif pada susunan saraf pusat yang menyebabkan perubahan khas pada aktivitas mental dan perilaku.'),
                const ParagrafListCostum(
                    no: '8',
                    content:
                        'Zat Adiktif adalah obat serta bahan-bahan aktif yang jika dikonsumsi oleh organisme hidup, menyebabkan kerja biologi serta menimbulkan ketergantungan atau adiksi yang sulit dihentikan dan berefek ingin menggunakannya secara terus menerus'),
                const ParagrafListCostum(
                    no: '9',
                    content:
                        'Segala jenis obat psikotropika dan narkotika, meski tidak mengandung alkohol, ia tetap haram digunakan. Sebab, dampak negatifnya sangat buruk sekali, baik dilihat dari sisi akal pikiran, kesehatan, harta benda maupun kepribadian bagi semua.')
              ],
            ),
          ),
          const KPenilai(),

          TabelPanilaianSikap(idlist: tabelPenSikap3),
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
                   Get.to(PSikap3());
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
            child: PilihanGandaSoal(daftarSoal: pilihanGanda3),
          ),
          const Jawablah(),
          const ParagrafListCostum(
              no: "1",
              content:
                  "Sebutkan 3 usaha, agar tidak terjadi perilaku menyimpang di kalangan pelajar?"),
          const ParagrafListCostum(
              no: "2",
              content: "Perhatikan dengan cermat Q.S. al-Māidah/5: 90 ini!"),
          const QuranWidget(
              arab:
                  "يٰٓاَيُّهَا الَّذِيْنَ اٰمَنُوْٓا اِنَّمَا الْخَمْرُ وَالْمَيْسِرُ وَالْاَنْصَابُ وَالْاَزْلَامُ رِجْسٌ مِّنْ عَمَلِ الشَّيْطٰنِ فَاجْتَنِبُوْهُ لَعَلَّكُمْ تُفْلِحُوْنَ   (الماۤئدة/٥ :٩٠) "),
          const VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F03%20al-M%C4%81idah%2090.mp3?alt=media&token=9a4c2955-7138-4ef9-9996-c0d86324a248"),
          ParagrafWidget(
              content: "        Sebutkan 3 isi dan kandungan ayat tersebut!"),
          const ParagrafListCostum(
              no: "3",
              content:
                  "Sebutkan masing-masing dari jenis narkotika dan psikotropika?"),
          const ParagrafListCostum(
              no: "4",
              content:
                  "Di antara 2 jenis zat adiktif adalah nikotin dan alkohol, jelaskan secara singkat dampak negatif bagi yang menggunakan! "),
          const ParagrafListCostum(
              no: "5",
              content: "Sebutkan 5 cara mencegah penyalahgunaan narkoba?"),
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
                          Get.to(PPengetahuan3());
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
          const AktivitasWidget(
              activityTitle: "Aktivitas 3.6",
              contentText:
                  "Setiap kelas dibagi menjadi 6 kelompok. Buatlah telaah tentang data terakhir (2020) pelajar 6 provinsi Indonesia yang enyalahgunakan narkoba. Setiap kelompok melakukan telaah di povinsi: \n1.  Kelompok I di provinsi DKI Jakarta\n2. Kelompok II di provinsi Bali\n3. Kelompok III di provinsi Sumatera Utara (Sumut)\n4. Kelompok IV di provinsi Kalimantan Barat (Kalbar)\n5. Kelompok V di provinsi Sulawesi Tenggara (Sultra)\n6. Kelompok VI di provinsi Papua\n"),
          Heading3(title: "b. Penilaian Praktik"),
          const BorderBlack(
              content:
                  "Kelompok: \nKelas dibagi 6 kelompok, sesuai dengan Penilaian Proyek yang sudah dilaksanakan. Lalu dipresentasikan dan didiskusikan sesuai dengan tugasnya, lalu membuat kesimpulan tentang kondisi narkoba di 6 provinsi tersebut, sementara itu GPAI memberikan penilaian dari masing-masing kelompok.\n\nIndividual: \nSetiap peserta didik di masing-masing kelas, membuat telaah tentang data perkelahian pelajar di kabupaten/kotanya. Hasilnya dikumpulkan 10 hari ke depan! Sementara itu, GPAI bersama siswa lainnya memberikan tanggapan dan penilaian dari presentasi 6 kelompok dari masing-masing kelas."),
          Heading3(title: "c. Penilaian Portofolio"),
          const BorderBlack(
              content:
                  "Tuliskanlah semua aktivitas keagamaan kalian, baik di sekolah, rumah, maupun masyarakat pada buku \"Penilaian Pendidikan Agama Islam dan Budi Pekerti!\""),
          const IPengaya(),
          const BorderBlack(
              content:
                  "Miras merupakan nenek moyang (induk) dari segala kejahatan dan kemaksiatan. Coba buktikan kebenarannya, baik dikaji dari sudut nash(dalil naqli) maupun realitas masa kini. Jawabannya harus kisah nyata.\n\nBoleh ditulis tangan, atau cara yang lain. Cukup 2-3 lembar saja. Sumber rujukannya harus ditulis lengkap! "),
          const Pembatas(),
        ],
      ),
    );
  }
}
