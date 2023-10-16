import 'package:book/app/data/bab_1_model/tabel_penilaian_sikap_d.dart';
import 'package:book/app/data/bab_2_model/tadabbur_model.dart';
import 'package:book/app/data/tabel_penerapan_karakter.dart';
import 'package:book/app/widgets/aktivitas_widget.dart';
import 'package:book/app/widgets/app_bar_widget.dart';
import 'package:book/app/widgets/bab_1_widget/pilihanganda.dart';
import 'package:book/app/widgets/baground_orange_kata_kunci.dart';
import 'package:book/app/widgets/border_black.dart';
import 'package:book/app/widgets/heading_1.dart';
import 'package:book/app/widgets/heading_2.dart';
import 'package:book/app/widgets/heading_3.dart';
import 'package:book/app/widgets/list_paragraf.dart';
import 'package:book/app/widgets/paragraf_italic.dart';
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
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../data/bab_2_model/list_paragraf_model.dart';
import '../data/kata_kunci.dart';
import '../data/pilihan_ganda.dart';
import '../modules/SideMenu/views/side_menu_view.dart';
import '../shared/constant.dart';
import '../widgets/bab_1_widget/tabel_penilaian_sikap.dart';
import '../widgets/heading_4.dart';
import '../widgets/jawablah.dart';
import '../widgets/pembatas.dart';
import '../widgets/refleksi.dart';

class Bab2 extends StatelessWidget {
  const Bab2({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'xbiScpFK3gs', 
      flags: YoutubePlayerFlags(
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
              title: "Bab 2",
              contentImage: "bab_2",
              description:
                  "Bukti Beriman: Memenuhi Janji, Mensyukuri Nikmat, Memelihara Lisan, Menutupi Aib Orang Lain"),
         ATujuan(),
          ParagrafWidget(content: "Peserta didik dapat: "),
          ParagrafList(idlist: tujuanPembelajaran),
         BKata(),
          BagroundOrangeKataKunci(idlist: kataKunciBab2),
       CInfo(),
          Image.asset(
            "assets/images/infografis2.png",
          ),
              SizedBox(height: 10,),
                SizedBox(height: 10,),
                 YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,  
            onReady: () {
        
            },
          ),
    DAyo(),
          ParagrafList(idlist: ayoTadarus),
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
                    "Aktivitas 2.1", // Use the activityTitle parameter here
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
                        "Aktivitas Peserta Didik:\nSaatnya, kita tadarus Q.S. al-Māidah/5: 1, Q.S al-Hujurāt/49: 12 berikut ini, lalu salah satu peserta didik membacakan terjemahnya!", // Use the contentText parameter here
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                      QuranWidget(
                          arab:
                              "يٰٓاَيُّهَا الَّذِيْنَ اٰمَنُوْٓا اَوْفُوْا بِالْعُقُوْدِۗ اُحِلَّتْ لَكُمْ بَهِيْمَةُ الْاَنْعَامِ اِلَّا مَا يُتْلٰى عَلَيْكُمْ غَيْرَ مُحِلِّى الصَّيْدِ وَاَنْتُمْ حُرُمٌۗ اِنَّ اللّٰهَ يَحْكُمُ مَا يُرِيْدُ   (الماَئدة/٥:ا)"),
                      VoicePlayOrange(
                          audioUrl:
                              "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F02%20al-Maidah%2001.mp3?alt=media&token=911a3f1e-f751-420d-8bdb-88b50692e917"),
                      QuranWidget(
                          arab:
                              "يٰٓاَيُّهَا الَّذِيْنَ اٰمَنُوا اجْتَنِبُوْا كَثِيْرًا مِّنَ الظَّنِّۖ اِنَّ بَعْضَ الظَّنِّ اِثْمٌ وَّلَا تَجَسَّسُوْا وَلَا يَغْتَبْ بَّعْضُكُمْ بَعْضًاۗ اَيُحِبُّ اَحَدُكُمْ اَنْ يَّأْكُلَ لَحْمَ اَخِيْهِ مَيْتًا فَكَرِهْتُمُوْهُۗ وَاتَّقُوا اللّٰهَ ۗاِنَّ اللّٰهَ تَوَّابٌ رَّحِيْمٌ    (الحجرٰت/٩٤: ١٢)"),
                      VoicePlayOrange(
                          audioUrl:
                              "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F02%20al-Hujur%C4%81t%2012.mp3?alt=media&token=a7de73fa-36cb-4436-91f2-80ba1b7bd071")
                    ],
                  ),
                ),
              ],
            ),
          ),
     ETadabb(),
          const AktivitasWidget(
              activityTitle: "Aktivitas 2.2",
              contentText:
                  "Amati gambar atau ilustrasi berikut ini! Lalu berilah tanggapan kalian yang dikaitkan dengan materi ajar yang dipelajari, yakni: Memenuhi Janji, Mensyukuri Nikmat, Memelihara Lisan, dan Menutupi Aib Orang Lain."),
          Tadabbur(idlist: tadabburdua),
        FKisah(),
          const AktivitasWidget(
              activityTitle: "Aktivitas 2.3",
              contentText:
                  "Pahami dan renungkan artikel berikut ini, sebagai bagian dari pemahaman dari materi ajar yang akan dipelajari!"), //
          const SizedBox(
            height: 10,
          ),
          Container(
        padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bagroundDarkOrange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Menyebarkan Salam",
                        style: h1.copyWith(color: orange),
                      ),
                      Text(
                        "Oleh: Busman Edyar",
                        style: regular_paragraf.copyWith(
                            fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
              RichText(
  text: TextSpan(
    style: regular_paragraf,
    children: <TextSpan>[
      TextSpan(
        text: '   Rasulullah Saw. bersabda, ',
        style: regular_paragraf,
      ),
      TextSpan(text: "\"Kalian tak akan masuk surga, sampai kalian beriman dan saling mencintai. Maukah kalian aku tunjukkan satu amalan, jika dilakukan membuat kalian saling mencintai? Itu adalah sebarkan salam\"", style: regular_paragraf.copyWith(fontStyle: FontStyle.italic)),
      
      TextSpan(
        text: ' (HR. Muslim).',
 
      ),
    
    ],
  ),
  textAlign: TextAlign.justify,
),
ParagrafWidget(content: "   Berlandaskan Hadis tersebut, selain iman, syarat masuk surga adalah adanya suasana yang saling mencintai antarsesama manusia. Saling mencintai baru terasa, apabila salam sudah disebarkan. Bahkan, terhadap orang yang belum dikenal. Rasulullah juga bersabda, ‘’Berikan salam kepada orang yang kalian kenal, dan orang yang tidak dikenal.’’ (HR. Al-Bukhari dan Muslim).")
        ,    ParagrafWidget(content: "   Menyebarkan salam berarti menyebarkan kedamaian. Sebab, kata salam mengandung makna kedamaian, keselamatan, dan keamanan. Karena itu, orang yang mengucapkan salam, hakikatnya mengucapkan doa kepada pihak yang diberi salam, agar senantiasa mendapat kedamaian, kasih sayang, dan berkah dari Allah Swt.")
        ,    ParagrafWidget(content: "   Setiap muslim yang mengucapkan salam, akan diganjar dengan kebaikan (pahala). Setiap ucapan, ‘’Assalamu ‘alaikum.’’ Sabda Rasulullah Saw., ‘’Orang ini mendapat 10 kebaikan.’’ Jika ada yang mengucapkan, ‘’Assalamu’alaikum wa rahmatullah.’’ Orang ini, mendapat 20 kebaikan.’’ Begitu juga, jika ada lagi yang mengucapkan, ‘’Assalamu ‘alaikum warahmatullah wa barakatuh.’’ Orang terakhir ini mendapat 30 kebaikan.’’ (HR. Ibnu Hibban dari Abu Hurairah).")
        ,    ParagrafWidget(content: "   Begitu pentingnya menyebarkan salam, sehingga yang berkendara memberi salam kepada yang berjalan kaki. Orang yang berjalan kaki, mengucapkan salam kepada yang duduk. Dua orang yang bertemu di jalan dan saling memberikan salam, maka yang lebih dahulu memulai, itu lebih utama. (HR. al-Bazzar dan Ibnu Hibban).")
        ,    ParagrafWidget(content: "   Jika sehari-hari, kita sudah terbiasa mengucapkan salam, seharusnya tidak ada lagi yang sampai hati berbuat zalim, menipu, membuka aib orang lain. Sebab, semua perilaku tersebut sangat bertentangan dengan hakikat salam. Yakni, memberikan kedamaian, ketenteraman dan keselamatan, termasuk memohon keberkahan dari Allah Swt.")
        ,    ParagrafWidget(content: "   Begitulah, melalui hakikat dan makna salam, semua kegiatan diarahkan untuk mewujudkan keselamatan, kedamaian, atau memenuhi janji (sebagai bagian dari syukur nikmat), bukan mengumbar lidah untuk menyakiti, membuka aib, atau bentuk kezaliman yang lain")
        ,    ParagrafItalic(content: "Disadur dari Republika (dipublikasikan pada 6 Juli 2005)")
  
              ],
            ),
          ),
          const Heading1(numbering: "G", title: "Wawasan Keislaman"),
          const AktivitasWidget(
              activityTitle: "Aktivitas 2.4",
              contentText:
                  "Bentuk kelas kalian menjadi 4 kelompok. Lalu, setiap kelompok mendapatkan sub-materi dari materi ajar yang akan dipelajari, yakni Memenuhi Janji, Mensyukuri Nikmat, Memelihara Lisan, dan Menutupi Aib Orang Lain, agar dikaji, dipahami dan dipelajari. Hasilnya dipresentasikan!"),
          ParagrafWidget(
              content:
                  "   Secara garis besar, Dinul Islam terdiri dari 3 pokok (rukun) ajaran, yaitu: Pertama: Akidah, yaitu pokok-pokok ajaran tentang keimanan yang dikenal dengan sebutan 6 Rukun Iman. Kedua; Syariah, yakni pokok-pokok ajaran tentang hukum Islam yang dikenal dengan istilah 5 Rukun Islam. Selanjutnya yang Ketiga: Akhlak, yaitu etika atau moralitas hidup manusia yang bersumber dari wahyu Allah Swt."),
          ParagrafWidget(
              content:
                  "   Ketiganya (Akidah, Syariah dan Akhlak) harus menyatu dan tidak boleh terpisah. Akidah (Iman) menghasilkan Syariah (Islam), dan Syariah tidak melupakan Akhlak (Ihsan). Tentunya, penyatuan tersebut memiliki makna yang amat dalam, bahwa kepribadian muslim itu ditopang oleh Iman, Islam dan Akhlak.") //
          ,

        
        RichText(text:TextSpan(
          style: regular_paragraf,
          children: <TextSpan>[
            TextSpan(
              text: "   M. Quraish Shihab dalam karyanya ”Mutiara Hati” memaparkan bahwa ",

            ),
            TextSpan(text: "iman itu bertingkat-tingkat yang secara berturut-turut dimulai pengetahuan yang disertai rasa takut, harapan, kekaguman, keyakinan, lalu cinta yang ditandai hubungan harmonis, dan puncaknya adalah leburnya hati dan pikiran. Iman adalah ketundukan hati kepada kebenaran, ketulusan lisan dalam pembenaran, dan patuhnya anggota tubuh dalam kebenaran\”.",style: regular_paragraf.copyWith(fontStyle: FontStyle.italic))
          ],
        
        ),textAlign: TextAlign.justify,),

          ParagrafWidget(
              content:
                  "   Al-Qur’án menggariskan, misalnya yang tersurat dalam Q.S. al-A’rāf/7: 96, Q.S. Ibrahīm/14: 23, dan Q.S. Yūnus/10: 9, bahwa orang beriman yang dibarengi dengan amal shaleh (sebagai realisasi Syariah dan Akhlak), dijanjikan kehidupan dunianya penuh dengan kebahagiaan, keberkahan, kemuliaan, dan di akhirat nanti dimasukkan ke dalam surga. Di samping itu, Rasulullah Saw. juga bersabda:"),
          // const VoicePlay(),
          QuranWidget(
              arab:
                  "اَلْاءِيْمَانُ بِضْعٌ وَسِتُّوْنَ شُعْبَةً وَالْحَيَاءُ شُعْبَةً مِنَ الْاءِيْمَانِ   (رواه البخاري)"),
          const Terjemahan(
              content:
                  "Iman itu memiliki 63 cabang, sedangkan malu menjadi bagian dari cabang iman. ",
              riwayat: "(HR. al-Bukhāri)"),
          ParagrafWidget(
              content:
                  "   Hadits ini menjelaskan, bahwa iman itu memiliki 63 cabang (bagian). Di antara cabang iman yang dibahas, sesuai materi ajar ada 4, yakni: (1) Memenuhi Janji, (2) Mensyukuri Nikmat, (3) Memelihara Lisan, dan (4) Menutupi Aib Orang Lain. Berikut ini, mari kita kaji bersama tentang keempat cabang iman tersebut:"),
          const Heading2(title: "1. Memenuhi Janji"),
          Heading4(title: "a. Pengertian"),
          ParagrafWidget(
              content:
                  "Salah satu bukti berimannnya seseorang adalah memenuhi janji, dan ia menjadi bagian dari akhlak terpuji yang seharusnya menghiasi pribadi setiap orang beriman. Adapun padanan kata Janji dalam bahasa Arab adalah ‘aqad’ (عقد). Melalui kata ini, muncul kata yang sering kita dengar, yakni akad, akidah, atau akad nikah. "),

          ParagrafWidget(
              content:
                  "   Menurut bahasa, akad berarti perjanjian atau ikatan yang kuat. Jadi memenuhi janji merupakan kewajiban dan menjadi tanda orang itu beriman atau tidak. Itu sebabnya, jika dikaitkan dengan makna bahasa, maka janji itu harus ditepati dan dipenuhi, dan kita diingatkan bahwa setiap janji akan diminta pertanggung jawaban, sebagaimana Firman Allah Swt.:"),
          QuranWidget(
              arab:
                  " وَاَوْفُوْا بِالْعَهْدِۖ اِنَّ الْعَهْدَ كَانَ مَسْـُٔوْلًا (الاسراَء/١٧: ٣٤) ..."),
          VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F02%20al-Isra%2034.mp3?alt=media&token=bfdff096-c7de-4d5b-bee9-1baa5c299bf7"),
          const Terjemahan(
              content:
                  "….dan penuhilah janji, karena janji itu pasti diminta pertanggung–jawabannya.",
              riwayat: "(Q.S. al-Isrā’/17: 34)."),
          ParagrafWidget(
              content:
                  "Perhatikan juga, isi dan kandungan Q.S. al-Māidah/5: 1 dan Q.S. an-Nisā’/4: 32)."),
          ParagrafWidget(
              content:
                  "   Memenuhi janji menjadi faktor penting keberhasilan dan kesuksesan seseorang. Begitu juga sebaliknya. Coba amati di sekeliling kalian, orang yang selalu menepati janjinya, akan dipercaya semua orang; selalu dicari keberadaannya, karena jiwa amanahnya sudah membekas di hati banyak orang. Jika tidak ada modal, banyak menyodori untuk membantunya, dan masih banyak lagi keuntungan yang didapatkan. Belum lagi di akhirat nanti."),

          ParagrafWidget(
              content:
                  "   Sebaliknya, orang tidak menepati janji, hidupnya sangat mengenaskan, tidak dipercaya orang. Boleh jadi, ada orang yang bisa mengelabui semua orang, tetapi si pelaku ini, tidak akan bisa kembali kepada orang-orang yang sudah ditipu, apalagi di zaman sekarang ini, dunia komunikasi begitu mudahnya dapat diakses, hancur sudah karirnya, dan sangat sulit mengembalikan reputasi yang sudah dibangun bertahun-tahun."),
          ParagrafWidget(
              content:
                  "   Itu sebabnya, jika ditinjau dari sudut pandang Islam, memenuhi janji harus diperhatikan dengan sungguh-sungguh. Jika tidak! Seseorang itu, sudah terlibat dalam dosa. Sementara dosa sendiri, mengakibatkan suram dan terhalangnya kegiatan yang sudah dirancang. Artinya susah dan sulit mencapai keberhasilan. Lalu, kita diingatkan, bahwa salah satu tanda orang munafik adalah tidak amanah akan janji yang sudah diikrarkan."),

          const SizedBox(
            height: 8,
          ),
          Heading4(title: "b. Pembagian Janji"),
          ParagrafWidget(content: "Janji terbagi menjadi 2 bagian, yaitu:"),
          Heading4(title: "1. Janji kepada Allah Swt."),
          ParagrafWidget(
              content:
                  "Mungkin terasa ganjil dan ada yang bertanya, kapan saya berjanji kepada Allah Swt. Jawabannya, ternyata sudah dijelaskan di dalam Al-Qur’an, bahwa semua manusia tak terkecuali pernah melakukan penjanjian kepada Allah Swt. (di alam ruh/rahim) dan bentuk janjinya adalah nanti jika sudah di dunia akan mengimani Allah sebagai Rabb-Nya dan berjanji menjadi hamba-Nya yang taat. Sebagaimana firmannya:"),
          QuranWidget(
              arab:
                  "وَاِذْ اَخَذَ رَبُّكَ مِنْۢ بَنِيْٓ اٰدَمَ مِنْ ظُهُوْرِهِمْ ذُرِّيَّتَهُمْ وَاَشْهَدَهُمْ عَلٰٓى اَنْفُسِهِمْۚ اَلَسْتُ بِرَبِّكُمْۗ قَالُوْا بَلٰىۛ شَهِدْنَا ۛاَنْ تَقُوْلُوْا يَوْمَ الْقِيٰمَةِ اِنَّا كُنَّا عَنْ هٰذَا غٰفِلِيْنَۙ    (الاعراف/٧: ١٧٢)"),
          VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F02%20al-A%E2%80%99raf7%20172.mp3?alt=media&token=8a15a2a3-abe9-4ab5-acc4-19bfb8c81bb1"),
          const Terjemahan(
              content:
                  "Dan (ingatlah) ketika Tuhanmu mengeluarkan dari sulbi (tulang belakang) anak cucu Adam keturunan mereka dan Allah mengambil kesaksian terhadap roh mereka (seraya berfirman), “Bukankah Aku ini Tuhanmu?” Mereka menjawab, “Betul (Engkau Tuhan kami), kami bersaksi.” (Kami lakukan yang demikian itu) agar di hari Kiamat kamu tidak mengatakan, “Sesungguhnya ketika itu kami lengah terhadap ini.\"",
              riwayat: " (Q.S. al-A’rāf/7: 172)"),
          ParagrafWidget(
              content:
                  "   Ayat ini dengan jelas menyampaikan bahwa setiap manusia saat berada di alam ruh/rahim sudah menyampaikan janji setia untuk bertauhid dan menjalani hidup di dunia yang didasari fitrah, karena fitrah itu sebenarnya jati diri manusia (pahami juga isi kandungan Q.S. ar-Rum/30: 30). "),
          ParagrafWidget(
              content:
                  "   Misalnya saat kita melakukan kebaikan (amal shaleh), hati menjadi tenteram, sebaliknya setiap melakukan keburukan atau dosa, kebimbangan dan keresahan hati yang didapat. Itulah fitrah yang seharusnya memandu setiap langkah manusia dalam kehidupan sehari-hari."),

          Heading4(title: "2. Janji kepada sesama manusia."),
          ParagrafWidget(
              content:
                  "   Janji kepada manusia adalah janji-janji yang sudah dibuat dan disepakati, baik sebagai pribadi maupun dengan lembaga atau pihak lain. Melalui janji-janji inilah reputasi dan nama baik dipertaruhkan. Sekali atau beberapa kali janji tidak ditepati, tanggung sendiri akibatnya. Seperti paparan di muka, sulit sekali menumbuhkan kepercayaan, jika orang atau pihak lain sudah pernah dicederai atau dilukai, akibat janji yang tidak ditepati."),

          ParagrafWidget(
              content:
                  "   Hanya Islam menggariskan, bahwa tidak semua janji itu ditunaikan. Janji yang dibuat di antara sesama manusia, seperti perdagangan, perniagaan, pernikahan dan sebagainya, silakan ditunaikan, asalkan tidak ada penjanjian yang bertentangan dengan syariat Islam. Seperti Sabda Rasulullah Saw.: “Setiap syarat (ikatan janji) yang tidak sesuai dengan Kitabullah, menjadi batil, meskipun seratus macam syarat.” (HR. Al-Bukhari dan Muslim)."),

          const SizedBox(
            height: 4,
          ),
          Heading4(title: "c. Balasan Memenuhi Janji"),
          ParagrafWidget(
              content:
                  "Jika kalian melihat dengan cermat, keadaan di sekitar kalian, nampak jelas balasan orang yang memenuhi janji, dan orang yang tidak memenuhi janji. Orang yang berhasil, tentu memiliki prinsip hidup yang kuat dan kokoh, termasuk memenuhi janji. Sebaliknya, orang yang terpuruk dan terhempas, biasanya hidupnya kurang kuat dalam memegang prinsip. Saatnya kalian memilih yang mana?"),
          ParagrafWidget(
              content:
                  "   Al-Qur’an sering memberi tamtsil atau contoh untuk dijadikan pelajaran. Misalnya yang terjadi pada Bani Israil yang sering mengingkari janjinya, akibatnya ketidaktentraman hidup yang didapat, bahkan nilai-nilai keimanan diingkari juga, termasuk memusuhi dan dan membunuh sebagian para rasul yang diutus kepada mereka. Tentu kisah buruk ini, semestinya jangan dicontoh. Pahami lebih lanjut Q.S. al-An’ām/6: 152 dan Q.S ar-Ra’d/13: 20."),

          ParagrafWidget(
              content: "Berikut ini, manfaat memenuhi janji, antara lain: "),

          ParagrafList(idlist: memJanji),
          const Heading2(title: "2. Mensyukuri Nikmat"),

          Heading3(title: "a. Pengertian"),
          ParagrafWidget(
              content:
                  "Ada 2 kata dasar yang digunakan, yakni: Syukur dan Nikmat. Syukur, menurut bahasa berarti membuka atau menampakkan. Lawan dari syukur adalah kufur yang berarti menutup dan menyembunyikan. Perhatikan Q.S. Ibrahīm/14: 7, yaitu: "),
          QuranWidget(
              arab:
                  "وَاِذْ تَاَذَّنَ رَبُّكُمْ لَىِٕنْ شَكَرْتُمْ لَاَزِيْدَنَّكُمْ وَلَىِٕنْ كَفَرْتُمْ اِنَّ عَذَابِيْ لَشَدِيْدٌ    (ابرٰهيم /١٤: ٧)"),
          VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F02%20Ibrah%C4%ABm%207.mp3?alt=media&token=07ae6498-a93a-4b7b-b49f-ca71b9be5238"),
          const Terjemahan(
              content:
                  "Dan (ingatlah) ketika Tuhanmu memaklumkan, “Sesungguhnya jika kamu bersyukur, niscaya Aku akan menambah (nikmat) kepadamu, tetapi jika kamu mengingkari (nikmat-Ku), maka pasti azab-Ku sangat berat.”",
              riwayat: "(Q.S. Ibrahīm/14: 7)."),

          ParagrafWidget(
              content:
                  "   Syukur merupakan bentuk keridhaan atau pengakuan terhadap rahmat Allah Swt. dengan setulus hati. Makna lainnya adalah pujian atau pengakuan terhadap segala nikmat Allah Swt. yang dibuktikan dengan kerendahan hati dan ketulusan menerimanya yang diwujudkan melalui ucapan, sikap, dan perilaku."),
          ParagrafWidget(
              content:
                  "   Sementara makna nikmat, menurut bahasa adalah pemberian, anugerah, kebaikan, dan kesenangan yang diberikan manusia, baik berupa rezeki, harta, keluarga, maupun segala kesenangan yang lain. Seringkali kita diingatkan oleh khatib atau dai, bahwa nikmat terbesar itu adalah Iman dan Islam, termasuk juga nikmat sehat wal ‘afiat."),
          ParagrafWidget(
              content:
                  "   Berdasarkan penjelasan tersebut, mensyukuri nikmat adalah berterima kasih kepada Allah Swt. atas segala nikmat yang telah dianugerahkan kepada kita. Caranya adalah menggunakan segala nikmat tersebut, sesuai dengan tujuan nikmat itu diberikan. Misalnya nikmat tangan, mata, dan kaki, semuanya digunakan untuk hal-hal yang benar menurut Allah Swt, bukan keinginan nafsu, syahwat, apalagi perbuatan maksiat."),
          ParagrafWidget(
              content:
                  "   Contoh tidak baik dilakukan umat Yahudi, yang dikisahkan oleh Al-Qur’an (misalnya dalam Q.S. al-Baqarah/2: 49, dan Q.S. al-Qashas/28: 4), sebagai umat yang paling kufur nikmat. Bersama Nabi Musa a.s. umat Yahudi menikmati begitu banyak nikmat, khususnya nikmat keberhasilan menghadapi Fir’aun dan bala tentaranya yang menindas dan membunuh setiap anak laki-lakinya yang baru lahir. Lalu Allah Swt. menyelamatkan mereka, namun semua itu diingkari, bahkan di satu masa, sampai berani membunuh nabi mereka. "),
          ParagrafWidget(
              content:
                  "   Melalui gambaran ini, kita sebagai umat Islam diingatkan, agar jangan menjadi umat yang kufur nikmat. Jadilah umat atau pribadi yang pandai mensyukuri nikmat (Q.S al-Baqarah/2: 152 dan 172). Sadar dan paham bahwa begitu banyak nikmat Allah Swt. yang sudah dianugerahkan kepada kita. "),
          ParagrafWidget(
              content:
                  "   Hanya sayangnya, seringkali kita memahami nikmat itu hanya berupa harta benda, uang, dan fasilitas mewah lainnnya, padahal yang termasuk nikmat adalah hidup sehat, keluarga bahagia, menjalankan shalat secara istiqamah, terhindar dari segala cobaan, terhalang melakukan dosa dan kemaksiatan."),
          const Heading2(title: "b. Perwujudan Syukur"),
          ParagrafWidget(
              content:
                  "Tidak terhitung banyaknya nikmat yang sudah kita terima (Perhatikan isi kandungan Q.S. Ibrahīm/14: 34), lalu bagaimana caranya mewujudkan bahwa kita menjadi pribadi yang bersyukur? Jawabannya adalah syukur harus dilakukan dengan 3 hal, yakni: melalui lisan, hati, dan anggota badan."),
          ParagrafWidget(
              content:
                  "   Pribadi yang bersyukur kepada Allah Swt., ditandai dengan pengakuan, kerelaan, dan kepuasan hati atas segala nikmat yang diterima, dilanjutan dengan lisan yang selalu mengucapkan syukur, misalnya banyak-banyak mengucapkan hamdalah dan kalimat-kalimat pujian yang disampaikan (Q.S. ad-Dhuhā/93: 11). Setelah itu, semua nikmat tersebut diwujudkan dan difungsikan oleh anggota tubuhnya dalam ketaatan hanya kepada Allah Swt.s"),
          ParagrafWidget(
              content:
                  "  Imam al-Ghazali membagi syukur itu, menjadi 3 bagian, yaitu: ilmu, hal(keadaan), dan amal (perbuatan). Melalui ilmunya, seseorang menyadari bahwa segala nikmat yang diterima itu semata-mata berasal dari Allah Swt. Keadaannya menyatakan kegembiraan. Selanjutnya, amal perbuatannya sesuai dan sejalan dengan fungsi nikmat tersebut diberikan."),
          ParagrafWidget(
              content:
                  "  Tersimpul bahwa, wujud syukur harus menyatu antara hati, lisan dan perbuatan. Bukan bersyukur yang benar, jika sering mengucapkan hamdalah, lalu hatinya masih belum puas dengan yang diterima, atau masih iri dan dengki dengan harta benda milik tetangga. Begitu juga, jika kalian memiliki akal yang cerdas, tetapi kelebihan itu hanya disimpan sendiri, tidak disebarkan kepada teman kalian yang masih membutuhkan bantuan dan bimbingan."),
          ParagrafWidget(
              content:
                  "  Jadi, pribadi yang bersyukur itu, ditandai menyatunya hati, lisan dan perbuatan. Tidak boleh terpisah, atau terpotong-potong, sehingga jika kesatuan itu dapat dilakukan, muncul kepribadian muslim yang utuh, bukan pribadi pecah yang hanya sesuai, misalnya antara lisan dan perbuatan, melupakan hati. Begitu juga, hati dan lisan menyatu, tetapi perbuatannya tidak sesuai. "),
          Heading3(title: "c. Keuntungan Menjadi Orang Bersyukur"),
          ParagrafWidget(
              content:
                  "Penjelasan sebelumnya memberi hikmah kepada kita, agar kita menjadi pribadi yang pandai besyukur. Beberapa keuntungannya, dapat disebutkan berikut ini: "),

          ParagrafList(idlist: keuBersyukur),
          ParagrafWidget(
              content:
                  "   Ambil contoh, di sebuah pesta pernikahan, betapa banyaknya makanan dan minuman tersisa yang akhirnya menjadi sampah, padahal masih banyak saudara kita yang mengais makanan dan belum bisa makan."),
          ParagrafWidget(
              content:
                  "   Hendaklah kita pahami bersama, berlimpahnya rahmat dan nikmat itu, tetap diberikan kepada mereka (boleh jadi orang beriman, atau orang-orang kafir) yang berbuat aniaya, lalim, dan ingkar kepada Allah Swt. Itu semua, tidak menghalangi Allah Swt. untuk menghentikan curahan rahmat dan nikmatnya kepada seluruh makhluk."),
          ParagrafWidget(
              content:
                  "   Jadi, kembali kepada kalian semua. Jika kalian menjadi hamba yang bersyukur, maka manfaat dan maslahatnya, kembali ke Anda sendiri. Sebaliknya, jika kalian kufur, maka tunggulah kegagalan dan kesengsaraan dunia, apalagi pedihnya neraka, akan kalian rasakan sendiri (Q.S. Ibrahīm/14: 7)."),
          ParagrafWidget(content: "Allah Swt. juga berfirman:"),
          QuranWidget(
              arab:
                  "وَلَقَدْ اٰتَيْنَا لُقْمٰنَ الْحِكْمَةَ اَنِ اشْكُرْ لِلّٰهِ ۗوَمَنْ يَّشْكُرْ فَاِنَّمَا يَشْكُرُ لِنَفْسِهٖۚ وَمَنْ كَفَرَ فَاِنَّ اللّٰهَ غَنِيٌّ حَمِيْدٌ    (لقمٰن/ا٣: ١٢)"),
          VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F02%20Luqman%2012.mp3?alt=media&token=727e1a8c-0094-4f1a-92b4-43564d53e2d5"),
          const Terjemahan(
              content:
                  "Dan sungguh, telah Kami berikan hikmah kepada Lukman, yaitu, ”Bersyukurlah kepada Allah! Dan barangsiapa bersyukur (kepada Allah), maka sesungguhnya dia bersyukur untuk dirinya sendiri; dan barangsiapa tidak bersyukur (kufur), maka sesungguhnya Allah Mahakaya, Maha Terpuji.”",
              riwayat: "(Q.S. Luqmān/31: 12)"),
          const Heading2(title: "3. Memelihara Lisan"),
          Heading3(title: "a. Pentingnya Menjaga Lidah"),
          ParagrafWidget(
              content:
                  "Lidah atau lisan bisa dikatakan sebagai bagian anggota tubuh yang sangat berharga. Betapa tidak! Melalui lisan yang tidak tertata, muncul pertengkaran dan perselisihan. Lisan juga, bisa membuat malapetaka yang besar, bahkan pembunuhan yang tidak terkira akibatnya. Selanjutnya, penggunaan lisan yang tidak terjaga, menjadikan perang yang menimbulkan korban jiwa mulai dari hitungan yang kecil, sampai mencapai ribuan, bahkan jutaan."),
          ParagrafWidget(
              content:
                  "   Sebaliknya, melalui lisan juga muncul pelbagai macam kedamaian, kesejukan, cinta dan harapan yang tersemai di lubuk jiwa untuk satuan, puluhan, ribuan, jutaan bahkan milyaran umat manusia. Masih banyak manusia yang tetap memelihara harapan, meski kondisinya memprihatinkan dan mengenaskan, karena masih percaya kepada janji-janji yang disampaikan."),
          ParagrafWidget(
              content:
                  "   Misalnya, melalui lisan para nabi dan rasul, dalam bentuk wahyu atau shuhuf (shahifah), saat kini masih banyak dijumpai manusia beriman dengan segala plus minusnya. Karena itu, kita semua, termasuk sebagai pelajar harus tetap rajin belajar dan sungguh menuntut ilmu, meskipun di sekitar kalian muncul pelbagai macam berita dan informasi negatif tentang kondisi negara dan dunia yang semakin mengkhawatirkan, akibat problema yang semakin menumpuk, dunia yang memasuki jurang resesi, ditambah adanya penyakit yang masuk ke dalam kelompok pandemi (misalnya Covid 19)."),
          ParagrafWidget(
              content:
                  "   Berlandaskan paparan tersebut, lidah dan lisan kita harus tetap dijaga dengan baik (Q.S. al-Ahzāb/33: 70-71). Tipis sekali perbedaan antara bahagia dan celaka serta senang susah, hanya dari penggunaan lidah. Apalagi jika dikaitkan dengan ajaran Islam yang sudah memberi rambu-rambu dalam penggunan lidah. Kita diingatkan oleh Allah Swt. dengan fiman-Nya, yakni:"),
          QuranWidget(
              arab:
                  "يَّوْمَ تَشْهَدُ عَلَيْهِمْ اَلْسِنَتُهُمْ وَاَيْدِيْهِمْ وَاَرْجُلُهُمْ بِمَا كَانُوْا يَعْمَلُوْنَ    (النّور/٢٤: ٢٤)"),
          VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F02%20an-Nur%2024.mp3?alt=media&token=9a2b2d0f-9130-41a9-805a-5fd388149e87"),

          const Terjemahan(
              content:
                  "   Pada hari, (ketika) lidah, tangan dan kaki mereka menjadi saksi atas mereka terhadap apa yang dahulu mereka kerjakan",
              riwayat: "(Q.S. an-Nūr/24: 24)."),

          ParagrafWidget(
              content:
                  "   Ayat ini menjelaskan, saat orang-orang yang begelimang dosa akan diazab oleh Allah Swt. di akhirat nanti, mereka membantah dan mengingkari perbuatan buruk mereka, maka anggota tubuhnya menjadi saksi. Lidah, lisan, tangan dan kaki mereka menjadi saksi dan menceritakan dengan rinci apa saja yang mereka lakukan, sehingga tidak bisa berdalih lagi."),
          ParagrafWidget(
              content:
                  "   Bahkan di ayat lain (khususnya di Q.S. Yāsīn), lisan dan mulut akan dikunci, termasuk diingatkan juga, bahwa lisan itu adalah anugerah Allah, kita semua dapat berbicara juga atas karunianya, lalu kenapa disalahgunakan? (perhatikan isi kandungan Q.S. Fushshilat/41: 21). "),
          ParagrafWidget(content: "Allah Swt. berfirman di Q.S. Yāsīn/36: 65"),
          QuranWidget(
              arab:
                  "اَلْيَوْمَ نَخْتِمُ عَلٰٓى اَفْوَاهِهِمْ وَتُكَلِّمُنَآ اَيْدِيْهِمْ وَتَشْهَدُ اَرْجُلُهُمْ بِمَا كَانُوْا يَكْسِبُوْنَ    (يٰسَ/٣٦: ٦٥)"),
          VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F02%20Yasin%2065.mp3?alt=media&token=802cff87-0dad-436e-bff8-f12cb517c199"),
          const Terjemahan(
              content:
                  "   Pada hari ini, Kami tutup mulut mereka; tangan mereka akan berkata kepada Kami dan kaki mereka akan memberi kesaksian terhadap apa yang dahulu mereka kerjakan",
              riwayat: "(Q.S. Yāsīn/36: 65)."),

          ParagrafWidget(
              content:
                  "   Rasulullah Saw. juga mengingatkan kita, bahwa keselamatan manusia tergantung pada kemampuannya dalam menjaga lisannya. Seperti makna dasar Islam sendiri yang berarti selamat dan aman. Semua itu, mengajarkan kepada kita bahwa lidah dan lisan ini, harus digunakan dengan benar, sehingga diri sendiri terselamatkan, apalagi pihak lain. Rasulullah Saw. bersabda: "),
          QuranWidget(
              arab:
                  "عَنْ أَبِي هُرَيْرَةَرَضِيَ اللّٰهُ عَنْهُ،قَالَ:قَالَ رَسُوْلُ اللّٰهِ صَلَّ اللّٰهُ عَلَيْهِ وَسَلَّمَ:مَنْ كَا نَ يُؤْمِنُ بِاللّٰهِ وَاليَوْمِ الآخِرِ فَلْيَقُلْ خَيْرًا أَوْلِيَصْمُتْ   (رواه البخاري)"),

          const Terjemahan(
              content:
                  "Diriwayatkan dari Abu Hurairah r.a, Rasulullah Saw. bersabda: “barang siapa yang beriman kepada Allah dan Hari Akhir, maka hendaklah berbiacara yang baik, atau (jika tidak mampu) maka diamlah.\"",
              riwayat: "(HR. al-Bukhāri)"),
          Heading3(title: "b. Lisan: Antara Fitnah, Ghibah, dan Buhtan"),

          ParagrafWidget(
              content:
                  "Penggunaan lisan yang tidak pada tempatnya, mengakibatkan 3 hal (fitnah, ghibah, dan buhtan) yang menjerumuskan diri sendiri, pihak lain, bahkan sampai level negara dan dunia. Mari kita pahami, kenapa itu terjadi? Lisan yang tidak terjaga, menghasilkan fitnah. Mendengar kata fitnah saja, kalian sudah geleng-geleng kepala, betapa ngeri akibat fitnah."),
          ParagrafWidget(
              content:
                  "   Fitnah adalah bahasa Arab yang terdapat dalam al-Qur’an dan dipakai oleh orang Indonesia, tetapi makna fitnah yang dipahami oleh orang Indonesia berbeda dengan makna fitnah yang terdapat dalam Al-Qur’an. Dalam Al-Qur’an kata fitnah memiliki beberapa arti, antara lain cobaan, ujian, musibah dan ada juga yang berarti siksa di akhirat, seperti terdapat dalam Surah al-Baqarah ayat 217: "),

          QuranWidget(arab: "(وَالْفِتْنَةُ اَكْبَرُ مِنَ الْقَتْلِ )"),
          VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F02%20al-Baqarah%20217.mp3?alt=media&token=d71fb75b-739f-4aa8-86e6-0335d14f7208"),
          Terjemahan(
              content:
                  "siksa bagi orang kafir kelak di akhirat lebih besar dari pada pembunuhan. Demikian penjelasan M. Quraish Shihab.",
              riwayat: ""),

          ParagrafWidget(
              content:
                  "   Sedangkan makna fitnah yang dipahami masyarakat di Indonesia berdasarkan KBBI adalah perkataan bohong atau tanpa berdasarkan kebenaran yang disebarkan dengan maksud menjelekkan orang (seperti menodai nama baik, merugikan kehormatan orang). Dalam pembahasan bab ini, maksud dari fitnah adalah yang dipahami masyarakat Indonesia, yakni merupakan komunikasi satu orang atau lebih yang bertujuan untuk memberikan stigma negatif atas suatu peristiwa yang dilakukan oleh pihak lain berdasarkan fakta palsu yang dapat mempengaruhi penghormatan, wibawa, atau reputasi seseorang."),
          const SizedBox(
            height: 8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Column(
                  children: [
                    Text(
                      "   Islam melarang perbuatan fitnah, karena banyak bahaya yang ditimbulkan, antara lain: penderitaan menyebar kemana-mana, dan jangan lupa bahwa tangisan dan rintian doa orang yang difitnah (termasuk orang dizalimi), doanya cepat diterima oleh Allah Swt; dan mencelakai diri sendiri, baik cepat maupun lambat.",
                      style: regular_paragraf,
                      textAlign: TextAlign.justify, // Atur sesuai kebutuhan
                    ),
                    Text(
                      "   Selanjutnya, melalui lidah yang tidak tertata juga, muncul ghibah (lihat isi kandungan Q.S. al-Hujurat/49: 12), termasuk buhtan. Keduanya sama-sama menimbulkan perselisihan, pertengkaran, dan akibat buruk lain yang lebih besar. Pada titik inilah, sekali lagi, sangat penting bagi kita semua, agar pandai-pandai menjaga lidah dan lisan.",
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
                "assets/images/quote.png",
                width: 110,
              )
            ],
          ),
          ParagrafWidget(
              content:
                  "   Ghibah adalah membicarakan orang lain yang tidak hadir, sesuatu yang tidak disenanginya. Termasuk yang dibicarakan itu, sesuai dengan keadaan orang yang dibicarakan. Jika yang dibicarakan itu, keburukan orang yang disebut, tidak disandang oleh yang bersangkutan, itulah yang dinamakan buhtan/بهتان) bohong besar)."),

          ParagrafWidget(
              content:
                  "   Hadis berikut ini, menambah pemahaman kita tentang ketiga istilah tersebut, yaitu: "),
          QuranWidget(
              arab:
                  "عَنْ أَبِي هُرَيْرَةَ أَنَّ رَسُوْلَ اللّٰهِ صلَّ اللّٰهُ عَلَيْهِ وَسَلَّمَ قَالَ:أَتَدْرُوْنَ مَا الْغِيْبَةُ قَالُوْا: اللّٰهُ وَرَسُوْلُهُ أَعْلَمُ قَالَ: ذِكْرُكَ أَخَاكَ بِمَا يَكْرَهُ قِيْلَ أَفَرَأَيْتَ إِنْ كَانَ فِيْ أَخِيْ مَا أَقُولُ قَالَ: إِنْ كَانَ فِيْهِ مَا تَقُوْلُ فَقَدِ اغْتَبْتَهُ وَإِنْ لَمْ يَكُنْ فِيهِ فَقَدْ بَهَتَّهُ   (رواه مسلم)"), // const VoicePlay(),
          const Terjemahan(
              content:
                  "Diriwayatkan dari Abu Hurairah sesungguhnya Rasulullah Saw bersabda: tahukah kalian apa itu ghibah? Para sahabat menjawab Allah dan Rasulnya lebih tahu. Rasul menjawab, “kamu menyebut saudaramu sesuatu yang tidak disukainya.” Lalu para sahabat bertanya, “Bagaimana jika yang disebutkan itu benar? Rasulullah menjawab, “jika yang disebutkan itu benar, maka kamu telah melakukan ghibah (membicarakan aib orang). Dan sekiranya yang disebutkan itu tidak benar, maka engkau telah melakukan buhtan (kebohongan).” ",
              riwayat: " (HR. Muslim) "),

          Heading3(title: "c. Petunjuk Menjaga Lisan"),
          ParagrafWidget(
              content:
                  "Berikut ini, beberapa petunjuk Islam dalam penggunaan lisan, antara lain:"),
          ParagrafList(idlist: menlisan),
          const Heading2(title: "4. Menutup Aib Orang Lain"),
          Heading3(title: "a. Pengertian"),
          ParagrafWidget(
              content:
                  "Aib adalah cela, cacat, nista, noda, perilaku hina, atau ada juga bermakna kiasan, yaitu: arang di muka. Biasanya digunakan dalam kalimat, bagaikan menaruh arang di muka. Melalui kalimat itu, yang bersangkutan sudah dibuka aibnya, sehingga sangat malunya, hancur lebur martabat dan nama baiknya, seakan-akan sudah runtuh hidupnya, disebabkan aibnya dibuka atau tersebar. "),
          ParagrafWidget(
              content:
                  "   Begitu beratnya keburukan akibat aib yang dibuka, maka siapa pun kita, jika mengetahui aib, maka hendaklah kita menutupi dan menyimpan rapatrapat aib tersebut, jangan sampai malah disebar ke khalayak ramai. Kenapa bisa begitu? Jawabannya jika kita sendiri mempunyai aib, inginnya aib itu disimpan rapat-rapat dan enggan jika aib itu tersiar."),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: Text(
                  "   Tidak ada satu pun manusia yang ingin aib dibuka. Aib adalah keburukan yang bersifat rahasia. Disebabkan sifatnya yang rahasia, biasanya hanya diketahui oleh yang bersangkutan, atau beberapa orang tertentu. Mayoritas orang, bahkan bisa dikatakan ‘orang gila’, ingin aibnya terus tersembunyi, tidak ada yang ingin aibnya terbuka atau disiarkan pihak lain.",
                  style: regular_paragraf,
                  textAlign: TextAlign.justify, // Atur sesuai kebutuhan
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/quote2.png",
                width: 100,
              )
            ],
          ),
          ParagrafWidget(
              content:
                  "  Setiap manusia, tampil dengan kelebihan dan kekurangan. Itu sifat dasar yang dimiliki setiap orang. Hal terbaik yang dapat dilakukan seseorang, sepanjang hidupnya adalah terus menemukan kelebihan, dan di saat yang bersamaan mampu mengurangi kekurangan dirinya. Di antara kekurangan itu, muncul aib-aib yang harus ditutupi, dikarenakan pelbagai macam sebab dan alasan."),

          Heading3(title: "b. Macam-Macam Aib"),
          ParagrafWidget(content: "Jika ditinjau dari sifatnya, maka aib dibagi menjadi 2, yakni:"),
          ParagrafList(idlist: macAib),
          Heading3(title: "c. Aib dan Medsos"),
          ParagrafWidget(
              content:
                  "Dunia modern dengan kecanggihan teknologinya, menambah beban lagi bagi manusia, meskipun melalui teknologi pula, manusia dimudahkan hidupnya. Di titik inilah, pentingnya teknologi itu tetap dipandu norma agama dan aturan moral, sehingga orang tidak mudah menyalahgunakan teknologi."),
          ParagrafWidget(
              content:
                  "   Di antara penyalahgunaan teknologi adalah orang begitu mudah membuka aib orang lain. Hal ini boleh jadi dilatarbelakangi adanya rivalitas (persaingan), persinggungan kepentingan, bahkan sifat iri dengki yang dimiliki. Saat ini, orang begitu mudah tumbang nama baik dan martabatnya dari penyalahgunaan media sosial (medsos), baik dari WhatsApp, Twitter, Instagram maupun Facebook, Telegram, bahkan Blog. "),

          ParagrafWidget(
              content:
                  "   Contohnya, ada raja, presiden atau calon presiden, perdana menteri, atau tokoh berpengaruh, bisa turun tahta sendiri atau diturunkan oleh rakyatnya, akibat aibnya dibuka di tengah-tengah masyarakatnya, melalui medsos atau media internet lainnya. Hal ini bukan hanya terjadi di negara kita, tetapi juga terjadi di negara-negara lain."),
          ParagrafWidget(
              content:
                  "   Peristiwa tersebut, membawa kesadaran kepada kita, agar hidup ini jangan banyak kesalahan, dosa dan kemaksiatan (baik pelanggaran menurut pandangan Allah Swt. maupun manusia). Sebab, banyaknya kesalahan sama saja dengan menumpuk aib dan berakibat hidupnya banyak dilakukan hanya untuk menutupi aib, akhirnya tidak menemukan ketenangan dan ketenteraman dalam hidupnya."),
          ParagrafWidget(
              content:
                  "   Pada titik inilah, Islam membimbing kita, bahkan sejak kecil, kita diajarkan untuk menjauhi perbuatan dosa dan kemaksiatan. Jikalau juga melakukannya, segera dan cepat bertaubat, agar aibnya terkikis, sehingga hidupnya produktif dan optimal, akhirnya keberhasilan demi keberhasilan yang didapatkan."),
          ParagrafWidget(
              content:
                  "   Tersimpul, bahwa aib itu harus ditutupi. Jangan mudah menggerakkan jari yang dikaitkan dengan medsos. Teliti dan selektiflah dalam menerima informasi. Jika itu benar, share! Sebaliknya, jika tidak, ya jangan dishare. Begitu juga, tercela sekali, jika ada orang yang mencari-cari kesalahan atau aib seseorang. Kita diingatkan oleh Allah Swt. melalui firmannya, yaitu:"),
   
          QuranWidget(
              arab:
                  "يٰٓاَيُّهَا الَّذِيْنَ اٰمَنُوا اجْتَنِبُوْا كَثِيْرًا مِّنَ الظَّنِّۖ اِنَّ بَعْضَ الظَّنِّ اِثْمٌ وَّلَا تَجَسَّسُوْا وَلَا يَغْتَبْ بَّعْضُكُمْ بَعْضًاۗ اَيُحِبُّ اَحَدُكُمْ اَنْ يَّأْكُلَ لَحْمَ اَخِيْهِ مَيْتًا فَكَرِهْتُمُوْهُۗ وَاتَّقُوا اللّٰهَ ۗاِنَّ اللّٰهَ تَوَّابٌ رَّحِيْمٌ    (الحجرٰت/٤٩: ١٢)"),
          VoicePlay(
              audioUrl:
                  "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F02%20al-Hujur%C4%81t%2012.mp3?alt=media&token=a7de73fa-36cb-4436-91f2-80ba1b7bd071"),
          const Terjemahan(
              content:
                  "Wahai orang-orang yang beriman! Jauhilah banyak dari prasangka, sesungguhnya sebagian prasangka itu dosa, dan janganlah kamu mencari-cari kesalahan orang lain, dan janganlah ada di antara kamu yang menggunjing sebagian yang lain. Apakah ada di antara kamu yang suka memakan daging saudaranya yang sudah mati? Tentu kamu merasa jijik. Dan bertakwalah kepada Allah, sesungguhnya Allah Maha Penerima taubat, Maha Penyayang",
              riwayat: "(Q.S. al-Hujurāt/49: 12)."),

          ParagrafWidget(
              content:
                  "   Melalui ayat ini, Allah Swt. melarang orang beriman melakukan prasangka buruk, mencari-cari kesalahan pihak lain, dan melarang bergunjing. Bahkan, bagi yang gemar bergunjing diumpamakan seperti orang yang memakan daging saudaranya yang sudah meninggal. Sungguh perilaku yang bukan saja menimbulkan dosa, tetapi juga amat menjijikkan. Rasulullah Saw Bersabda:"),

          QuranWidget(
              arab:
                  "عَنْ أَبِي هُرَيْرَةَ قَالَ: قَالَ رَسُوْلُ اللّٰهِ صَلَّ اللّٰهُ عَلَيْهِ وَسَلَّمَ: مَنْ ستَرَ عَلَ مُسْلِمٍ، سَتَرَهُ اللّٰهُ فِي الدُّنْيَا وَالآخِرَةِ   (رواه مسله)"),
          const Terjemahan(
              content:
                  "ari Abu Hurairah berkata, Rasulullah Saw. Bersabda: Barang siapa menutupi aib saudaranya di dunia, maka Allah akan menutupi aibnya di dunia dan akhirat.’ ",
              riwayat: "(HR. Muslim)."),

          ParagrafWidget(
              content:
                  "   Berdasarkan penjelasan tersebut, janganlah kita menjadi pribadi yang suka membuka aib orang. Meskipun jika dikaitkan dengan kondisi saat ini di Indonesia, muncul begitu banyak infotainment yang mengulas gaya hidup para selebriti, baik yang ditayangkan di televisi maupun di majalah atau koran, yang mayoritas mengumbar aib diri sendiri maupun orang lain."),
          ParagrafWidget(
              content:
                  "   Disebabkan madharatnya yang begitu besar bagi perkembangan masyarakat luas, MUI (Majelis Ulama Indonesia) memfatwakan haramnya melihat tayangan infotainment tertentu yang isinya mengumbar aib. MUI dengan jelas menyatakan infotainment haram, karena merusak keluarga, masyarakat dan negara, terkecuali untuk kepentingan hukum atau penyelidikan. Fatwa ini dikeluarkan pada bulan Oktober 2012."),
          Heading3(title: "d. Akibat Aib"),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Text(
                  "   Aib bukan saja membawa madharat (bahaya) kepada yang bersangkutan, tetapi juga pihak lain, termasuk masyarakat luas. Kisah Nabi Musa a.s. dengan umatnya dapat dijadikan ibrah (pelajaran). Secara umum, kisahnya sebagai berikut: Terjadi kemarau panjang, lalu Sang Nabi mengajak umatnya untuk Shalat Istisqa’. Anehnya setelah dilakukan, ternyata hujan tidak turun-turun. ",
                  style: regular_paragraf,
                  textAlign: TextAlign.justify, // Atur sesuai kebutuhan
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/quote3.png",
                width: 100,
              )
            ],
          ),
          ParagrafWidget(
              content:
                  "   Akhirnya Shalat Istisqa’ dilakukan berkali-kali, namun tidak kunjung turun hujan juga. Lalu Nabi Musa a.s mengadu kepada Allah Swt. kenapa tidak turun hujan? Dijawab oleh Allah Swt., hal itu disebabkan ada di antara umatmu yang suka berbuat dosa dan maksiat. Syarat hujan akan turun, jika peserta itu, harus keluar."),
          ParagrafWidget(
              content:
                  "   Nabi Musa a.s menyampaikan pidato di depan umatnya tentang hal itu. Namun, jamaah yang merasa dialah orangnya, malu jika keluar dari jamaah. Takut dipermalukan banyak orang, disebabkan aib yang dimiliki. Akhirnya orang tersebut, tidak mau keluar, tetapi bertaubat dengan sungguh-sungguh kepada Allah Swt. lalu diterima tobatnya, lalu tidak lama kemudian turunlah hujan."),

          const AktivitasWidget(
              activityTitle: "Aktivitas 2.5",
              contentText:
                  "Kelas dibagi menjadi 5 kelompok, lalu carilah data tentang penyalahgunaan medsos yang merusak dunia pendidikan di Indonesia, khususnya akibat bocornya kunci jawaban saat UN (Ujian Nasional). Agar fokus, peristiwanya dimulai tahun 2014. Jadi kelompok 1 mengambil data tahun 2014, kelompok 2 tahun 2015, dan begitu seterusnya. Persiapkan juga buku catatan, atau laptop yang kalian miliki untuk presentasi. Lalu setelah mengetahui data yang ada, apa yang harus kalian lakukan, agar tidak terjadi penyalahgunaan medsos bagi diri sendiri, keluarga dan sekolah kalian!"),

          const Heading1(numbering: "H", title: "Penerapan Karakter"),
          ParagrafWidget(
              content:
                  "Setelah menelaah materi Cabang Iman: Memenuhi Janji, Mensyukuri Nikmat, Memelihara Lisan, dan Menutupi Aib Orang Lain, diharapkan peserta didik dapat membiasakan karakter dalam kehidupan sehari-hari, sebagai berikut."),

          TabelPenerapanKarakterWidget(idlist: tabelPenKarakter2),
          const Heading1(numbering: "I", title: "Refleksi"),
          Refleksi(
              content:
                  "Sejak manusia berada di bumi, Allah Swt. terus menerus menurunkan rahmat dan nikmatnya, sehingga bumi tetap dapat memberikan segala kebutuhan manusia. \n\nNamun, kenapa di dunia ini, masih ada kelaparan dan kemiskinan. Coba lakukan telaah, kenapa bisa terjadi seperti itu! Jawabannya cukup 1 lembar saja yang diperkaya dengan data, gambar, atau ilustrasi!"),
       JRangkum(),
          Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: purpleBagroundLight,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ParagrafList(idlist: rangkuman2)),

         KPenilai(),
  
          TabelPanilaianSikap(idlist: tabelPenSikap2),

          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xFFF3F3F4),
                borderRadius: BorderRadius.circular(4)),
            height: 280, // Atur tinggi sesuai kebutuhan
            child: PilihanGandaSoal(daftarSoal: pilihanGanda2),
          ),

          Jawablah(),
          ParagrafList(idlist: soalUraian),
          const Heading2(title: "3. Penilaian Keterampilan"),
          Heading3(title: "a. Penilaian Proyek"),
          const AktivitasWidget(
              activityTitle: "Aktivitas 2.6",
              contentText:
                  "Setiap kelas dibagi menjadi 4 kelompok. Buatlah true story dari 4 cabang iman yang dipelajari, yakni Memenuhi Janji, Mensyukuri Nikmat, Memelihara Lisan, dan Menutupi Aib Orang Lain. Setiap kelompok melakukan telaah: \n\n1. Kelompok I tentang keberhasilan orang/lembaga yang Memenuhi Janji.\n\n2. Kelompok II tentang akibat buruk yang diterima orang/lembaga yang tidak Mensyukuri Nikmat. \n\n3. Kelompok III tentang suksesnya orang/lembaga yang Memelihara Lisan.\n\n4. Kelompok IV tentang akibat buruk yang diterima orang/lembaga yang tidak Menutupi Aib Pihak Lain."),
          Heading3(title: "b. Penilaian Praktik"),
          const BorderBlack(
              content:
                  "Kelompok: \nKelas dibagi 4 kelompok, sesuai dengan Penilaian Proyek yang sudah dilaksanakan. Lalu dipresentasikan dan didiskusikan sesuai dengan tugasnya, lalu membuat kesimpulan tentang kesuksesan atau kegagalan dari 4 cabang iman yang dipelajari, sementara itu GPAI memberikan penilaian dari masing-masing kelompok.\n\nIndividual: \nSetiap peserta didik di masing-masing kelas, membuat telaah tentang pengalaman pribadi terkait 4 cabang iman yang dipelajari. Hasilnya dikumpulkan 1 pekan ke depan! Sementara itu, GPAI bersama peserta didik lainnya (yang ditugaskan) untuk memberikan tanggapan dan penilaian dari setiap peserta didik dari masing-masing kelas."),

          Heading3(title: "c. Penilaian Portofolio"),
          const BorderBlack(
              content:
                  "Tuliskanlah semua aktivitas keagamaan kalian, baik di sekolah, rumah, maupun di masyarakat pada buku Penilaian Pendidikan Agama Islam dan Budi Pekerti!"),
          const Heading1(numbering: "L", title: "Pengayaan"),
          const BorderBlack(
              content:
                  "Syukur menjadi kunci utama dari kebahagiaan. Kenapa manusia modern saat ini, yang jika dikaji dari kemudahan hidup dan berlimpahnya barangbarang sandang, pangan, dan papan, namun hidupnya menjadi terasing, semakin lupa bahkan ingkar kepada Allah Swt. Lakukan analisis yang mendalam tentang problematika tersebut. Perkaya analisa kalian dengan kisah-kisah nyata.\n\nBoleh ditulis tangan, atau cara yang lain. Cukup 1-2 lembar saja. Jangan lupa, sertakan sumber rujukannya ya!"),

          Pembatas(),
        ],
      ),
    );
  }
}
