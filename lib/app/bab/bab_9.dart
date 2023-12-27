import 'package:book/app/widgets/aktivitas_widget.dart';
import 'package:book/app/widgets/app_bar_widget.dart';
import 'package:book/app/widgets/heading_2.dart';
import 'package:book/app/widgets/heading_3.dart';
import 'package:book/app/widgets/list_paragraf%20custom.dart';
import 'package:book/app/widgets/paragraf_italic.dart';
import 'package:book/app/widgets/paragraf_list_abjad.dart';
import 'package:book/app/widgets/paragraf_widget.dart';
import 'package:book/app/widgets/quran_widget.dart';
import 'package:book/app/widgets/terjemahan_widget.dart';
import 'package:book/app/widgets/voice_play.dart';
import 'package:book/app/widgets/voice_play_orange.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../assingnment/p_pengetahuan_9.dart';
import '../assingnment/p_sikap_9.dart';
import '../data/bab_1_model/tabel_penilaian_sikap_d.dart';
import '../data/bab_2_model/tadabbur_model.dart';
import '../data/bab_9_model/list_paragraf_9.dart';
import '../data/kata_kunci.dart';
import '../data/pilihan_ganda.dart';
import '../data/tabel_penerapan_karakter.dart';
import '../modules/SideMenu/views/side_menu_view.dart';
import '../shared/constant.dart';
import '../widgets/bab_1_widget/pilihanganda.dart';
import '../widgets/bab_1_widget/tabel_penilaian_sikap_atas.dart';
import '../widgets/baground_orange_kata_kunci.dart';
import '../widgets/list_paragraf.dart';
import '../widgets/pembatas.dart';
import '../widgets/penilaiandiri2.dart';
import '../widgets/refleksi.dart';
import '../widgets/sampul_bab.dart';
import '../widgets/sub_bab.dart';
import '../widgets/tabel_penerapan_karakter.dart';
import '../widgets/tadabbur.dart';

class Bab9 extends StatelessWidget {
  Bab9({super.key});
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'vfl2I7eY9IM',
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
                title: "Bab 9",
                contentImage: "bab_9",
                description: "Ketentuan Pernikahan dalam Islam"),
            const ATujuan(),
            ParagrafWidget(
                content: "Dalam bab ini, tujuan pembelajarannya adalah:"),
            ParagrafList(idlist: tujPem9),
            BKata(),
            BagroundOrangeKataKunci(idlist: kataKunciBab9),
            CInfo(),
            Image.asset(
              "assets/images/infografis9.png",
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
                    "Sebelum memulai pembelajaran ini, silahkan kalian tadarus al-Qur’an. Hal ini dapat menjadi pembiasaan kalian untuk membaca al-Qur’an setiap hari. Tujuannya, menguatkan literasi sekaligus berdoa kepada Allah Swt., semoga dalam setiap langkah kalian mendapatkan bimbingan, taufiq, dan ridha-Nya. Āmīn Yā Rabbal Ālamīn. "),
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
                      "Aktivitas 9.1",
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
                        ParagrafWidget(
                            content:
                                "Bacalah Q.S. al-Rum/30: 19-21 di bawah ini dengan tartil dan dilakukan bersama-sama. Siap?  "),
                        QuranWidget(
                            arab:
                                "يُخْرِجُ الْحَيَّ مِنَ الْمَيِّتِ وَيُخْرِجُ الْمَيِّتَ مِنَ الْحَيِّ وَيُحْيِ الْاَرْضَ بَعْدَ مَوْتِهَا ۗوَكَذٰلِكَ تُخْرَجُوْنَ ࣖ  ١٩  وَمِنْ اٰيٰتِهٖٓ اَنْ خَلَقَكُمْ مِّنْ تُرَابٍ ثُمَّ اِذَآ اَنْتُمْ بَشَرٌ تَنْتَشِرُوْنَ ٢٠  وَمِنْ اٰيٰتِهٖٓ اَنْ خَلَقَ لَكُمْ مِّنْ اَنْفُسِكُمْ اَزْوَاجًا لِّتَسْكُنُوْٓا اِلَيْهَا وَجَعَلَ بَيْنَكُمْ مَّوَدَّةً وَّرَحْمَةً ۗاِنَّ فِيْ ذٰلِكَ لَاٰيٰتٍ لِّقَوْمٍ يَّتَفَكَّرُوْنَ ٢١  (الرّوم /٣٠: ٢١ـ ا٩)"),
                        VoicePlayOrange(
                            audioUrl:
                                "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F09%20surah-arrum%2019-21.mp3?alt=media&token=254b1c7a-02c1-454d-b3ce-8dd2e382a21b")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ETadabb(),
            Tadabbur(idlist: tadabbur9),
            AktivitasWidget(
                activityTitle: "Aktivitas 9.2",
                contentText:
                    "Bagaimana pendapat kalian tentang gambar di atas dihubungkan dengan materi pernikahan dalam Islam?"),
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
                      "Ibu Hajar, Istri Shalihah",
                      style: h1.copyWith(color: orange),
                    ),
                  ),
                  ParagrafWidget(
                      content:
                          "   Nabi Ibrahim membawa pergi Ibu Hajar dan Ismail ke Baitullah Makkah. Kemudian mereka tinggal di samping pohon besar dekat sumur Zamzam di sekitar Masjidil Haram. Pada waktu itu, Kota Mekah masih sepi, tidak ada seorangpun yang hidup di sana. Hal ini bisa dimaklumi, karena tidak ada air sama sekali. Nabi Ibrahim a.s. membawa segerabah kurma dan air secukupnya sebagai bekal hidup Ibu Hajar dan Ismail."),
                  ParagrafWidget(
                      content:
                          "   Selang beberapa waktu, lantas Nabi Ibrahim mendapatkan wahyu untuk kembali berdakwah ke Palestina. Nabi Ibrahim harus rela meninggalkan tempat tersebut. Tiba saatnya Nabi Ibrahim berangkat, Ibu Hajar dengan hati yang gelisah mengikuti dan berkata, ”Wahai Nabi Ibrahim, hendak ke mana engkau pergi? Apakah engkau tega meninggalkan kami di lembah ini, yang tidak ada seorang pun dan tidak ada sesuatupun di sini? Ibu Hajar mengatakannya berulang kali. Akan tetapi Nabi Ibrahim tidak menoleh sedikitpun. Ibu Hajar bertanya kembali, “Apakah Allah yang memerintahkannya?” Lalu Nabi Ibrahim menjawab, “Benar, Allahlah yang memberikan perintah ini.” Ibu Hajar lantas mengatakan, “Kalau begitu Allah tidak akan menyia-nyiakan kami.” Kemudian Siti Hajar pun kembali ke tempat semula."),
                  ParagrafWidget(
                      content:
                          "   Nabi Ibrahim terus berjalan sampai pada suatu tempat dan tidak bisa melihat rumah istri dan anak yang ia tinggalkan. Kemudian Ibrahim menghadap ke arah Baitullah, dengan mengangkat kedua tangannya dan berdoa kepada Allah Swt.:"),
                  RichText(
                    text:
                        TextSpan(style: regular_paragraf, children: <TextSpan>[
                      TextSpan(
                          text:
                              "   Ya Tuhan kami, sesungguhnya aku telah menempatkan sebagian keturunanku di lembah yang tidak mempunyai tanam-tanaman di dekat rumah Engkau (Baitullah) yang dihormati, ya Tuhan kami (yang demikian itu) agar mereka mendirikan shalat, maka jadikanlah hati sebagian manusia cenderung kepada mereka dan berilah rizki mereka dari buah-buahan, mudah-mudahan mereka bersyukur.”",
                          style: regular_paragraf.copyWith(
                              fontStyle: FontStyle.italic)),
                      TextSpan(text: " (Q.S. Ibrahīm/14: 37)."),
                    ]),
                    textAlign: TextAlign.justify,
                  ),
                  ParagrafWidget(
                      content:
                          "   Ibu Hajar kembali menyusui anaknya dan minum dari air yang dibawakan oleh Ibrahim. Saat air habis, Ia pun merasakan haus. Kondisi ini juga dialami anaknya. Ibu Hajar melihat anaknya menghentakhentakkan kakinya karena merasakan haus. Setelah itu, ibu Hajar segera mencari air untuk minum anaknya."),
                  ParagrafWidget(
                      content:
                          "   Ibu Hajar pergi ke Bukit Shafa. Ia berdiri di atas Shafa, melihat ke arah Lembah, siapa tahu ada orang di sana. Ternyata tidak ada orang yang dilihatnya. Kemudian turun, berlari-lari kecil menuju bukit Marwah. Ibu Hajar berdiri melihat ke arah lembah siapa tahu ada orang. Lagi-lagi, ia tidak melihat seorangpun. Hal ini dilakukannya sebanyak 7 Kali. Oleh karena itu, orang Islam yang melakukan ibadah haji, melakukan sa’i dari sofa ke Marwah."),
                  ParagrafWidget(
                      content:
                          "   Setelah ia tidak menemukan apapun, ia berserah diri kepada Allah. Kemudian atas ijin Allah dengan injakan kaki Ismail muncullah air Zamzam. Air Zamzam inilah yang kemudian menjadi daya tarik orangorang untuk tinggal di kota Makkah. Alhasil setelah beberapa waktu Makkah menjadi kota pusat peradaban sampai sekarang."),
                  ParagrafItalic(
                      content:
                          "(Sumber: al-Hafizh Ibnu Katsir. 2007. Kisah Para Nabi dan Rasul. Jakarta: Pustaka as-Sunnah)"),
                ],
              ),
            ),
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
                      "Aktivitas 9.3",
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
                          ParagrafListCostum(
                              number: "1",
                              content:
                                  "Setelah kalian membaca kisah di atas, apa pelajaran yang dapat kalian ambil dari kisah di atas?"),
                          ParagrafListCostum(
                              number: "2",
                              content:
                                  "Bagaimana tanggapan kalian terhadap sikap Ibu Hajar?")
                        ],
                      )),
                ],
              ),
            ),
            const GWawasan(),
            Heading2(title: "1. Pengertian Pernikahan"),
            ParagrafWidget(
                content:
                    "Imam Ahmad bin Umar Asy-Syatiri dalam Kitab al-Yaqut al-Nafis (2011: 215) mendefinisikan nikah secara bahasa berarti menggabungkan dan berkumpul. Sedangkan menurut istilah syariat, nikah ialah suatu akad yang menjadikan bolehnya seorang laki-laki dan perempuan melakukan hubungan suami dan istri. "),
            ParagrafWidget(
                content:
                    "   Sedangkan dalam Undang-undang Nomor 1 Tahun 1974 menjelaskan bahwa pernikahan adalah ikatan lahir batin antara seorang pria dan seorang wanita sebagai suami istri dengan tujuan membentuk keluarga atau rumah tangga yang bahagia dan kekal berdasarkan Ketuhanan Yang Maha Esa."),
            ParagrafWidget(
                content:
                    "   Dengan kata lain pernikahan adalah ikatan lahir batin antara seorang laki-laki dan perempuan untuk hidup bersama dalam suatu rumah tangga melalui akad yang dilakukan menurut aturan hukum syariat Islam yang mengakibatkan timbulnya hak dan kewajiban di antara masing-masing pihak."),
            Heading2(title: "2. Dalil Naqli tentang Pernikahan"),
            ParagrafWidget(
                content:
                    "Adapun dalil naqli tentang pernikahan dalam Q.S. al-Rūm/30: 21"),
            QuranWidget(
                arab:
                    "وَمِنْ اٰيٰتِهٖٓ اَنْ خَلَقَ لَكُمْ مِّنْ اَنْفُسِكُمْ اَزْوَاجًا لِّتَسْكُنُوْٓا اِلَيْهَا وَجَعَلَ بَيْنَكُمْ مَّوَدَّةً وَّرَحْمَةً ۗاِنَّ فِيْ ذٰلِكَ لَاٰيٰتٍ لِّقَوْمٍ يَّتَفَكَّرُوْنَ   (الرّوم /٣٠: ٢١)"),
            VoicePlay(
                audioUrl:
                    "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F09%20surah-arrum.mp3?alt=media&token=53bf2f36-d428-4c0d-ac6d-3637aee3b3e0"),
            Terjemahan(
                content:
                    " “Dan di antara tanda-tanda kekuasaan-Nya ialah Dia menciptakan untukmu istri-istri dari jenismu sendiri, supaya kamu cenderung dan merasa tenteram kepadanya, dan dijadikan-Nya diantaramu rasa kasih dan sayang. Sesungguhnya pada yang demikian itu benar-benar terdapat tanda-tanda bagi kaum yang berfikir.”",
                riwayat: " (Q.S. al-Rūm/30: 21)."),
            ParagrafWidget(
                content:
                    "   Sedangkan Nabi Muhammad Saw. tentang anjuran menikah bagi yang sudah mampu termaktub dalam Kitab al-Jami’ al-Shahih, juz 3 Nomor 5066 disebutkan:"),
            QuranWidget(
                arab:
                    "عَنْ عَبْدِ الرَّحْمَنِ بْنِ يَزِيدَ قَالَ: دَخَلْتُ مَعَ عَلْقَمَةَ وَالْأَسْوَدِ عَلَى عَبْدِ اللهِ فَقَالَ عَبْدُ اللهِ : كُنَّا مَعَ النَّبِيّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ شَبَابًا لَا نَجِدُ شَيْئًا فَقَالَ لَنَا رَسُوْلُ اللهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ يَا مَعْشَرَ الشَّبَابِ مَنِ اسْتَطَاعَ الْبَاءَةَ فَلْيَتَزَوَّجُ ، فَإِنَّهُ أَغَضُّ لِلْبَصَرِ وَأَحْصَنُ لِلْفَرْجِ وَمَنْ لَمْ يَسْتَطِعْ فَعَلَيْهِ بِالصَّوْمِ فَإِنَّهُ لَهُ وِجَاءٌَ (رواه البخارى)"),
            Terjemahan(
                content:
                    "Dari ‘Abdurrahman bin Yazid, ia berkata, aku bersama ‘Alqamah dan Aswad menemui ‘Abdullah, lalu ‘Abdullah berkata kami bersama Nabi Muhammad saw sebagai pemuda yang tidak mempunyai apa-apa, maka Rasulullah saw berkata kepada kami ”Hai para pemuda, barang siapa di antara kamu telah sanggup menikah, maka nikahlah. Karena nikah itu dapat menundukkan mata dan memelihara faraj (kelamin) dan barang siapa tidak sanggup maka hendaklah berpuasa karena puasa itu dapat menjagamu (melemahkan syahwat).” ",
                riwayat: " (HR. Al-Bukhāri)"),
            Heading2(title: "3. Tujuan Pernikahan"),
            ParagrafWidget(
                content:
                    "Seseorang harus memiliki tujuan yang baik ketika akan melakukan pernikahan. Karena tujuan inilah yang akan memengaruhi kehidupan setelah menikah. Tujuan menikah yang baik ialah sebagai berikut:"),
            ParagrafList(idlist: tujuanPernikahan),
            QuranWidget(
                arab:
                    "عَنْ أَنَسٍ أَنَّ نَفَرًا مِنْ أَصْحَابِ رَسُوْلِ اللّٰهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ قَالَ بَعْضُهُمْ لَا أَتَزَوَّجُ وَقَالَ بَعْضُهُمْ أُصَلِّي وَلَا أَنَامُ وَقَالَ بَعْضُهُمْ أَصُومُ وَلَا أُفْطِرُ فَبَلَغَ ذَلِكَ النَّبِيَّ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ فَقَالَ مَا بَالُ أَقْوَامٍ قَالُوْا كَذَا وَكَذَا لَكِنِّي أَصُوْمُ وَأَفْطِرُ وَأَصَلِّي وَأَنَامُ وَأَتَزَوَّجُ النِّسَاءَ فَمَنْ رَغِبَ عَنْ سُنَّتِي فَلَيْسَ مِنِّيْ (رواه مسلم)"),
            Terjemahan(
                content:
                    " Dari Anas bin Malik, ada beberapa sahabat Rasulullah saw berkata; saya tidak akan menikah, sebagian lagi berkata; saya akan selalu shalat dan tidak tidur, sebagian lagi berkata; saya akan terus berpuasa dan tidak berbuka. Berita ini sampai kepada Nabi saw, hingga (Beliau saw) bersabda, “Apa alasannya ada yang berkata begini-begitu? Padahal saya berpuasa dan berbuka, aku shalat dan tidur, dan aku juga menikahi perempuan, dan barangsiapa yang membenci sunnahku maka ia tidak termasuk golonganku.”",
                riwayat: "(HR. Muslim)"),
            ParagrafListCostum(
                number: "5",
                content:
                    "Untuk memperoleh keturunan yang sah.\nMelalui pernikahan, pasangan suami istri akan mendapatkan keturunan yang mendapatkan ridha Allah Swt. dan pengakuan dari negara."),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: bagroundDarkOrange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ParagrafItalic(
                  content:
                      "Menikah bukan hanya untuk bersenang-senang semata, tapi benar-benar bertanggung jawab kepada Allah Swt. Karenanya, jauhkan diri kalian dari pergaulan bebas dan fokus belajar dan belajar"),
            ),
            Heading2(title: "4. Hukum Pernikahan"),
            ParagrafWidget(
                content:
                    "Hukum asal melaksanakan pernikahan adalah mubah (boleh). Hukum ini dapat berubah disebabkan pada keadaan tertentu. Berikut penjelasan ringkas terkait hukum menikah:"),
            ParagrafList(idlist: hukumPrnikahan),
            Heading2(title: "5. Memilih Pasangan dalam Pernikahan"),
            ParagrafWidget(
                content:
                    "Nabi Muhammad Saw. memberikan tuntunan dalam memilih pasangan dalam pernikahan, yaitu dengan mempertimbangkan karena:"),
            ParagrafList(idlist: memilihPasangan),
            ParagrafWidget(
                content:
                    "   Hal ini sesuai dengan hadis Nabi Muhammad Saw. yang termaktub dalam Kitab al-Jami’ al-Shahih, juz 3 nomor 5090, yaitu:"),
            QuranWidget(
                arab:
                    "عَنْ أَبِيْ هُرَيْرَةَ رَضِيَ اللّٰهُ عَنْهُ عَن النَّبِيِّ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ قَالَ تُنْكَحُ الْمَرْأَةُ لِأَرْبَعٍ لِمَالِهَا وَلِحَسَبِهَا وَجَمَالِهَا وَلِدِيْنِهَا فَاظْفَرْ بِذَاتِ الدِّيْنِ تَرِبَتْ يَدَاكَ (رواه البخاري)"),
            Terjemahan(
                content:
                    "Dari Abu Hurairah ra, dari Nabi saw, beliau bersabda: “Wanita itu dinikahi karena empat hal: karena hartanya, karena keturunannya, karena kecantikannya dan karena agamanya. Maka pilihlah karena agamanya, niscaya kamu akan beruntung.",
                riwayat: "(HR. Al-Bukhāri)"),
            ParagrafWidget(
                content:
                    "   Dari hadis tersebut memberikan bimbingan dalam memilih pasangan mempertimbangkan empat hal. Hanya saja, di akhir hadis tersebut disebutkan “Pilihlah karena agamanya, niscaya kamu akan beruntung.” Ini adalah tuntunan Nabi Muhammad Saw. agar dari keempat pertimbangan tersebut agar memilih karena agamanya. Mengapa memilih agama? Karena dengan agama, kebahagiaan yang sejati akan dapat terwujud, salah satunya ketika agamanya kuat, maka pasangan suami atau istri akan taat kepada Allah dan dapat memelihara dirinya. Dalam Q.S. al-Nisa’/4: 34, dijelaskan: "),
            QuranWidget(
                arab:
                    "فَالصّٰلِحٰتُ قٰنِتٰتُ حٰفِظٰتٌ لِلْغَيْبِ بِمَا حَفِظَ اللهُ ۗ ( النسآء / ٤ : ٣٤)"),
            VoicePlay(
                audioUrl:
                    "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F09%20-annisa-34.mp3?alt=media&token=e44ce9ad-9cf9-4c0c-822e-3476dc0ba89b"),
            Terjemahan(
                content:
                    "“Sebab itu maka wanita yang shalihah, ialah yang taat kepada Allah lagi memelihara diri ketika suaminya tidak ada, oleh karena Allah telah memelihara (mereka).”",
                riwayat: " (Q.S. al-Nisa’/4: 34)"),
            ParagrafWidget(
                content:
                    "   Selain itu untuk wanita shalihah merupakan sebaik-baiknya perhiasan dunia bagi suaminya. Hal ini dijelaskan dalam kitab Shahih Muslim, nomor 1467, Nabi Muhammad Saw. bersabda:"),
            QuranWidget(
                arab:
                    "عَنْ عَبْدِ اللّٰهِ بْنِ عَمْرٍ وأَنَّ رَسُوْلَ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ الدُّنْيَا مَتَاعٌ وَخَيْرُ مَتَاعِ الدُّنْيَا الْمَرْأَةُ الصَّالِحَةُ) (رواه مسلم)"),
            Terjemahan(
                content:
                    "Dari Abdullah bin ‘Amr bahwasannya Rasulullah Saw. bersabda: “Dunia adalah perhiasan dan sebaik-baik perhiasan adalah wanita shalihah.” ",
                riwayat: " (HR. Muslim)"),
            Heading2(title: "6. Ketentuan Pernikahan"),
            Heading3(title: "a. Rukun Pernikahan dan Syarat Pernikahan"),
            ParagrafWidget(
                content:
                    "Rukun ialah hal yang harus ada ketika pelaksanaan suatu perbuatan. Sedangkan syarat dalam fikih merupakan hal yang harus terpenuhi sebelum melakukan suatu perbuatan tertentu. Rukun menikah ada lima, yaitu: calon suami, calon Istri, wali, dua orang saksi, dan sighat (Ijab dan Qabul). Adapun masing-masing akan dijelaskan sebagai berikut."),
            ParagrafListCostum(
                number: "1",
                content:
                    "Calon Suami. Ada beberapa syarat yang harus terpenuhi untuk seorang calon suami, yaitu:"),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ParagrafListAbjad(idlist: rukunpernikahan),
            ),
            ParagrafListCostum(
                number: "2",
                content:
                    "Calon Istri. Ada beberapa syarat yang harus terpenuhi untuk calon istri, yaitu:"),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ParagrafListAbjad(idlist: calonIstri),
            ),
            ParagrafListCostum(
                number: "3",
                content:
                    "Wali, syarat menjadi wali pernikahan ialah sebagai berikut:"),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ParagrafListAbjad(idlist: wali),
            ),
            ParagrafListCostum(
                number: "4",
                content:
                    "Dua orang saksi\nSyarat dua orang saksi ini juga hampir sama dengan wali, yakni:"),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ParagrafListAbjad(idlist: saksi),
            ),
            ParagrafListCostum(
                number: "5",
                content:
                    "Sighat (Ijab dan Qabul)\nSyarat dari ijab-qabul dalam pernikahan adalah:"),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ParagrafListAbjad(idlist: Sighat),
            ),
            ParagrafWidget(content: "Contoh Ijab Qabul"),
            Container(
              margin: const EdgeInsets.only(top: 10),
              color: purpleBagroundDark,
              child: Table(
                border: TableBorder.all(color: purple),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: {
                  0: const FractionColumnWidth(1 / 6),
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(
                      color: purpleBaground,
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.top,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            "Ijab",
                            style: regular_paragraf,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.top,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              ParagrafWidget(
                                  content:
                                      "Wali perempuan atau penghulu berkata kepada pengantin laki-laki. Di bawah ini adalah contoh menggunakan Bahasa Arab.ِ"),
                              QuranWidget(
                                  arab:
                                      "أَنْكَحْتُكَ وَزَوَّجْتُكَ مَخْطُوْبَتَكَ ... بِنْتِ ... بِمَهْرِ اَدَوَاتِ الصَّلاَةِ وَثَلاَثِيْنَ جُزْأً مِنْ مُصْحَفِ الْقُرْاَنِ حَالاً"),
                              ParagrafWidget(
                                  content:
                                      "Jika dilafadzkan dengan bahasa Indonesia:\n“Saya nikahkan engkau dan saya kawinkan engkau dengan pinanganmu …. binti …. dengan mas kawin seperangkat alat sholat dan 30 juz dari mushaf Al-Qur’an dibayar tunai.”")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(
                      color: purpleBagroundLight,
                    ),
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.top,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            "Kabul",
                            style: regular_paragraf,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.top,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              ParagrafWidget(
                                  content:
                                      "Calon suami menjawab. Apabila menggunakan bahasa Arab sebagai berikut. "),
                              QuranWidget(
                                  arab:
                                      "قَبِلْتُ نِكَاحَهَا وَتَزْوِيْجَهَا لِنَفْسِيْ بِالْمَهْرِ الْمَذْكُوْرِ حَالاً"),
                              ParagrafWidget(
                                  content:
                                      "Jika diucapkan menggunakan bahasa Indonesia:\n“Saya terima nikah dan kawinnya …. binti …. untuk diri saya sendiri dengan mas kawin tersebut dibayar tunai.”")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Heading3(title: "b. Orang-orang yang tidak boleh dinikahi"),
            ParagrafWidget(
                content:
                    "Adapun orang-orang yang tidak boleh dinikahi dapat dilihat dalam tabel berikut ini."),
            Image.asset("assets/images/pernikahan.png"),
            Heading3(title: "c. Pernikahan yang tidak sah"),
            ParagrafWidget(
                content:
                    "Di antara pernikahan yang tidak sah dan dilarang oleh Rasulullah Saw. adalah sebagai berikut. "),
            Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    child: Text(
                      "1)",
                      style: regular_paragraf,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Pernikahan Mut`ah, yaitu pernikahan yang dibatasi untuk jangka waktu tertentu, baik sebentar ataupun lama. Imam Madzhab empat sepakat bahwa pernikahan ini haram dilakukan. Secara historis diperbolehkannya nikah mut’ah oleh Rasul ini karena umat Islam waktu itu berada dalam masa transisi, yaitu peralihan dari masa Jahiliyah menuju Islam. Praktik perzinaan pada masa jahiliyah sudah membudaya, sementara Islam datang dan Rasul menyeru umat Islam untuk berperang, maka keadaan jauhnya pejuang muslim dari istri-istri mereka tentu saja merupakan suatu penderitaan tersendiri. Kebolehan ini berlangsung hingga datangnya hadis Nabi sebagai nasikh (penghapus) atas kebolehan nikah tersebut. Dasarnya adalah hadis yang terdapat dalam Kitab al-Jami’ al-Shahih Juz 3 Nomor 4216 berikut ini:",
                          textAlign: TextAlign.justify,
                          style: regular_paragraf,
                        ),
                        QuranWidget(
                            arab:
                                "عَنْ عَلِيِّ بْنِ أَبِيْ طَالِبٍ رَضِيَ اللّٰهُ عَنْهُ أَنَّ رَسُوْلَ اللهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ نَهَى عَنْ مُتْعَةِ النِّسَاءِ يَوْمَ خَيْبَرَ وَعَنْ أَكْلِ لُحُومِ الْحُمُرِ الإِنْسِيَّةِ   (رواه البخاري)"),
                        Terjemahan(
                            content:
                                "Dari ‘Ali bin Abu Thalib ra bahwa Rasulullah saw melarang nikah mut’ah (perkawinan dengan waktu terbatas semata untuk bersenang-senang) dan melarang makan daging keledai jinak pada perang Khaibar. ",
                            riwayat: " (HR. al-Bukhāri).")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    child: Text(
                      "2)",
                      style: regular_paragraf,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Pernikahan syighar, yaitu pernikahan dengan persyaratan barter tanpa pemberian mahar. Dasarnya adalah hadis nomor 1415 yang disebutkan dalam Kitab Shahih Muslim berikut:",
                          textAlign: TextAlign.justify,
                          style: regular_paragraf,
                        ),
                        QuranWidget(
                            arab:
                                "عَنْ ابْنِ عُمَرَ أَنَّ رَسُوْلَ اللهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ نَهَى عَنْ الشِّغَارِ وَالشِّغَارُ أَنْ يُزَوِّجَ الرَّجُلُ ابْنَتَهُ عَلَى أَنْ يُزَوِّجَهُ ابْنَتَهُ وَلَيْسَ بَيْنَهُمَا صَدَاقٌ (رواه مسلم)"),
                        Terjemahan(
                            content:
                                "Dari Ibnu ‹Umar bahwa Rasulullah saw melarang nikah syighar, yaitu seseorang menikah dengan putri orang lain dengan syarat putrinya harus menikah dengannya tanpa ada maskawin.” ",
                            riwayat: " (HR. Muslim)"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    child: Text(
                      "3)",
                      style: regular_paragraf,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Pernikahan muhallil, yaitu seseorang menikahi wanita yang telah dicerai tiga kali oleh suaminya untuk diceraikan lagi agar halal dinikahi kembali oleh suaminya yang pertama, dan ini dilakukan atas perintah suami pertama tersebut. Hal ini ditegaskan dalam hadis Nomor 1120 dalam Kitab Sunan al-Tirmidzi Juz 3 disebutkan:",
                          textAlign: TextAlign.justify,
                          style: regular_paragraf,
                        ),
                        QuranWidget(
                            arab:
                                "عَنْ عَبْدِ اللّٰهِ بْنِ مَسْعُوْدٍ قَالَ لَعَنَ رَسُوْلُ اللّٰهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ الْمُحَلِّلَ وَالْمُحَلَّلَ لَهُ (رواه الترمذي)"),
                        Terjemahan(
                            content:
                                "“Dari ‘Abdullah bin Mas’ud berkata: “Rasulullah saw. melaknat muhallil dan muhallal lahu.”",
                            riwayat: "  (HR. al-Tirmidzī)"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    child: Text(
                      "4)",
                      style: regular_paragraf,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Pernikahan orang yang sedang ihram, baik ihram Haji atau Umrah serta belum memasuki waktu tahallul. Dalam Kitab Shahih Muslim , Nabi Muhammad Saw. bersabda:",
                          textAlign: TextAlign.justify,
                          style: regular_paragraf,
                        ),
                        QuranWidget(
                            arab:
                                "فَقَالَ أَبَانُ سَمِعْتُ عُثْمَانَ بْنَ عَفَّانَ يَقُوْلُ قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ لَا يَنْكِحُ الْمُحْرِمُ وَلَا يُنْكَحُ وَلَا يَخْطُبُ (رواه مسلم)"),
                        Terjemahan(
                            content:
                                "Aban berkata,”Saya pernah mendengar Utsman bin Affan mengatakan bahwa Rasulullah saw bersabda, “Orang yang sedang berihram tidak diperbolehkan untuk menikahkan, dinikahkan dan meminang.” ",
                            riwayat: " (HR. Muslim)"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    child: Text(
                      "5)",
                      style: regular_paragraf,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Pernikahan dalam masa iddah, yaitu pernikahan seorang laki-laki dengan seorang perempuan yang masih dalam masa iddah, baik karena bercerai atau suami meninggal dunia. Allah Swt. berfirman:",
                          textAlign: TextAlign.justify,
                          style: regular_paragraf,
                        ),
                        QuranWidget(
                            arab:
                                "وَلَا تَعْزِمُوْا عُقْدَةَ النِّكَاحِ حَتّٰى يَبْلُغَ الْكِتٰبُ اَجَلَهُ ۗ وَاعْلَمُوْآ أَنَّ اللّٰهَ يَعْلَمُ مَا فِيْ ٓ اَنْفُسِكُمْ فَاحْذَرُوْهُ ۚ وَاعْلَمُوْ ٓاَنَّ اللّٰهَ غَفُوْرٌ حَلِيْمٌ    ( البقرة/ ٢ : ٢٣٥)"),
                        VoicePlay(
                            audioUrl:
                                "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F09%20albaqarah-230.mp3?alt=media&token=c909d8a4-f323-415d-8b9b-64efe9611bed"),
                        Terjemahan(
                            content:
                                "“Dan janganlah kamu berazam (bertetap hati) untuk berakad nikah, sebelum habis ´iddahnya. Dan ketahuilah bahwasanya Allah mengetahui apa yang ada dalam hatimu; maka takutlah kepada-Nya, dan ketahuilah bahwa Allah Maha Pengampun lagi Maha Penyantun.”",
                            riwayat: "  (Q.S. al-Baqarah/2:235)."),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    child: Text(
                      "6)",
                      style: regular_paragraf,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Pernikahan tanpa wali, yaitu pernikahan yang dilakukan seorang laki-laki dengan seorang wanita tanpa dihadiri walinya. Rasulullah saw. Bersabda yang tertulis di dalam Kitab Sunan Abi Dawud, juz 2 nomor 2085 :",
                          textAlign: TextAlign.justify,
                          style: regular_paragraf,
                        ),
                        QuranWidget(
                            arab:
                                "عَنْ أَبِيْ مُوسَى أَنَّ النَّبِيَّ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ قَالَ لَا نِكَاحَ إِلَّا بِوَلِيٍّ (رواه ابو داود)"),
                        Terjemahan(
                            content:
                                "Dari Abu Musa bahwa Nabi saw bersabda: \"Tidak ada (tidak sah) pernikahan kecuali dengan wali.\"",
                            riwayat: " (HR. Abu Dāud)."),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    child: Text(
                      "7)",
                      style: regular_paragraf,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Pernikahan dengan wanita musyrik (menyekutukan Allah), berdasarkan firman Allah Swt.: ",
                          textAlign: TextAlign.justify,
                          style: regular_paragraf,
                        ),
                        QuranWidget(
                            arab:
                                "وَلَا تَنْكِحُوا الْمُشْرِكٰتِ حَتّٰى يُؤْمِنَّ وَلَاَمَةٌ مُؤْمِنَةٌ خَيْرٌ مِّنْ مُّشْرِكَةٍ وَّلَوْ اَعْجَبَتْكُمْ ۚ( البقرة/ ٢ : ٢٢١٠)"),
                        VoicePlay(
                            audioUrl:
                                "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F09%20albaqarah-221.mp3?alt=media&token=8ee1d138-2f18-4d26-8959-e0e24b52cccd"),
                        Terjemahan(
                            content:
                                "“Dan janganlah kamu menikahi wanita-wanita musyrik, sebelum mereka beriman. Sesungguhnya wanita budak yang mukmin lebih baik dari wanita musyrik, walaupun dia menarik hatimu. ",
                            riwayat: " (Q.S. al-Baqarah/2:221)"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                    child: Text(
                      "8)",
                      style: regular_paragraf,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Menikahi mahram, baik mahram untuk selamanya, mahram karena pernikahan atau karena sepersusuan. Sebagaimana Rasulullah Saw. bersabda:",
                          textAlign: TextAlign.justify,
                          style: regular_paragraf,
                        ),
                        QuranWidget(
                            arab:
                                "عَنْ عَلِيِّ بْنِ أَبِيْ طَالِبٍ قَالَ: قَالَ رَسُولُ اللّٰهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ: إِنَّ اللهَ حَرَّمَ مِنَ الرَّضَاعِ مَا حَرَّمَ مِنَ النَّسَبِ ( رواه الترمذي)"),
                        Terjemahan(
                            content:
                                "“Dari ‘Ali bin Abi Thalib, ia berkata, Rasulullah Saw. bersabda sesungguhnya Allah mengharamkan sebab persusuan seperti yang diharamkan sebab keturunan",
                            riwayat: " (HR. at-Tirmidzī)"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ParagrafWidget(
                content:
                    "   Adapun siapa saja mahram yang dilarang dinikahi terdapat dalam Q.S. al-Nisa’/4:22-23 sebagaimana telah disebutkan dalam pembahasan sebelumnya dalam tabel orang-orang yang haram dinikahi."),
            Heading3(title: "d. Hak dan Kewajiban Suami Istri"),
            ParagrafWidget(
                content:
                    "Untuk mewujudkan keluarga yang sakinah mawaddah wa rahmah, suami dan istri harus saling memahami hak dan kewajiban sebagai suami istri. "),
            ParagrafWidget(
                content: "Adapun kewajiban suami kepada istri, yaitu:"),
            ParagrafList(idlist: kewajibanSuami),
            ParagrafWidget(
                content: "Sedangkan kewajiban istri kepada suami adalah:"),
            ParagrafList(idlist: kewajibanIstri),
            Heading3(title: "e. Mahar (Maskawin)"),
            ParagrafWidget(
                content:
                    "Mahar atau maskawin terkadang disebut nihlah atau shadaq, yang berarti sesuatu yang diwajibkan karena pernikahan, yakni harta atau apapun yang diberikan oleh laki-laki dan menjadi hak milik perempuan/istri. Taqiyuddin Abu Bakar bin Muhammad al-Husaini al-Hashni dalam Kifayah al-Akhyar fi Hilli Ghayah al-Ikhtishar menjelaskan bahwa walaupun menyebutkan mahar dalam akad nikah sunnah hukumnya, tetapi wajib diberikan oleh laki-laki dalam sebuah pernikahan. Sebagaimana firman Allah Swt:"),
            QuranWidget(
                arab:
                    "وَاٰتُوا النِّسَاۤءَ صَدُقٰتِهِنَّ نِحْلَةً ۗ  ... (النسآء/ ٤:٤)"),
            VoicePlay(
                audioUrl:
                    "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F09-annisa-4.mp3?alt=media&token=a35a7e53-a1c5-4d33-9a27-e2778411787b"),
            Terjemahan(
                content:
                    "Berikanlah maskawin kepada perempuan-perempuan yang kamu nikahi sebagai pemberian dengan penuh kerelaan…",
                riwayat: " (Q.S. al-Nisa’/4: 4)"),
            ParagrafWidget(
                content: "Dalam hadis pun Nabi Muhammad Saw. menjelaskan:"),
            QuranWidget(
                arab:
                    "عَنْ سَهْلِ بْنِ سَعْدٍ ، قَالَ : أَتَتِ النَّبِيَّ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ امْرَأَةٌ ، فَقَالَتْ: إِنَّهَا قَدْ وَهَبَتْ نَفْسَهَا لِلّٰهُ وَلِرَسُوْلِهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ ، فَقَالَ : مَا لِيْ فِي النِّسَاءِ مِنْ حَاجَةٍ ، فَقَالَ رَجُلٌ : زَوِّجْنِيْهَا ، قَالَ : أَعْطِهَا ثَوْبًا ، قَالَ : لَا أَجِدُ ، قَالَ :أعْطِهَا وَلَوْ خَاتَمًا مِنْ حَدِيدٍ ، فَاعْتَلَ لَهُ ، فَقَالَ : مَا مَعَكَ مِنَ الْقُرْآنِ قَالَ: كَذَا وَكَذَا ، قَالَ : فَقَدْ زَوَّجْتُكَهَا بِمَا مَعَكَ مِنَ الْقُرْآنِ (رواه البخاري)"),
            Terjemahan(
                content:
                    "Diriwayatkan dari Sahal bin Sa’ad, ia berkata: seorang perempuan datang kepada Nabi saw, ia berkata saya memberikan diri saya untuk Allah dan Rasul-Nya, lalu Nabi menjawab saya tidak ada kebutuhan kepada perempuan ini. Salah satu sahabat berkata nikahkanlah ia denganku wahai Rasul. Maka Nabi saw menjawab berilah perempuan ini pakaian. Sahabat tadi menjawab, saya tidak memilikinya. Nabi berkata lagi berikanlah kepada perempuan ini meskipun cincin besi. Sahabat tadi pun memberikan alasannya kepada Nabi. Lalu Nabi bertanya surat apakah yang kamu hafal dari al-Qur’an. sahabat tadi menjawab surat ini dan itu. Maka Nabi pun berkata saya nikahkan kamu dengan perempuan ini dengan hafalan surat al-Qur’an yang kamu miliki ",
                riwayat: "(HR. Al-Bukhāri)."),
            ParagrafWidget(
                content:
                    "   Bentuk dan besaran mahar diserahkan kepada kepada calon mempelai laki-laki dan perempuan. Tidak ada keharusan apakah harus sama, melebihi ataupun kurang dari mahar yang menjadi kebiasaan di daerah tersebut, karena yang dijadikan ukuran dari sebuah mahar adalah kerelaan antara kedua calon pengantin. Tidak ada batasan maksimal ataupun minimal sebuah mahar. Segala sesuatu baik uang, benda, atau apapun yang dapat memberikan manfaat dapat dijadikan sebagai mahar pernikahan."),
            Heading3(title: "f. Resepsi Pernikahan (walimatul ‘urs)"),
            ParagrafWidget(
                content:
                    "Walimatul ‘urs atau sering disebut dengan resepsi pernikahan. Kata Walimah secara bahasa berarti berkumpul. Sedangkan menurut istilah syari’ah yang dijelaskan Ahmad bin ‘Umar al-Syathiri dalam kitab al-Yaqut al-Nafis adalah nama untuk setiap undangan atau makananan dan minuman yang diadakan karena adanya kebahagiaan atau lainnya. Hukum mengadakan walimah menurut Mushthafa Dib al-Bugha’ dalam kitab al-Tadzhib fi Adillah Matn al-Ghayah wa al-Taqrib adalah sunnah, dan wajib hukumnya memenuhi undangan walimah tersebut, kecuali jika ada ‘udzur/halangan"),
            ParagrafWidget(content: "Nabi Muhammad Saw. pernah bersabda:"),
            QuranWidget(
                arab:
                    "عَنْ أَنَسِ بْنِ مَالِكٍ أَنَّ النَّبِيَّ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ رَأَى عَلَى عَبْدِ الرَّحْمَنِ بْنِ عَوْفٍ أَثَرَ صُفْرَةٍ ، فَقَالَ: مَا هَذَا قَالَ: يَا رَسُوْلَ اللّٰهِ ، إِنِّيْ تَزَوَّجْتُ امْرَأَةًعَلَى وَزْنِ نَوَاةٍ مِنْ ذَهَبٍ ، قَالَ : فَبَارَكَ اللهُ لَكَ أَوْلِمْ وَلَوْ بِشَاةٍ (رواه مسلم)"),
            Terjemahan(
                content:
                    "Dari Anas bin Malik, sesungguhnya Nabi saw melihat bekas kekuningan pada ‘Abdurrahman bin ‘Auf, lalu beliau bertanya, apakah ini? ‘Abdurrahman bin ‘Auf menjawab ya Rasulullah sesungguhnya aku telah menikahi perempuan dengan maskawin senilai satu biji emas. Nabi saw berkata: semoga Allah memberkahimu, selenggarakanlah walimah walaupun hanya dengan seekor kambing.",
                riwayat: "(HR. Muslim)."),
            ParagrafWidget(
                content:
                    "   Hadis di atas menjelaskan walimah dapat dilakukan dengan makanan yang sangat sederhana, tidak ada batasan khusus tentang makanan yang akan disajikan, tetapi menurut pendapat ulama yang lebih utama sekurangkurangnya dengan menyembelih satu ekor kambing. Walimah disunnahkan bagi mempelai laki-laki juga perempuan, karena adanya kebahagiaan dari kedua belah pihak. Seseorang yang mengadakan walimah wajib menjauhkan diri dari berlebihan/mubadzir."),
            ParagrafWidget(
                content:
                    "   Tujuan dari walimah adalah untuk mengumumkan pernikahan dan sebagai bentuk syukur atas kebahagiaan yang diperoleh dengan cara berbagi dengan sesama. Sebagaimana disebutkan dalam sebuah hadis:"),
            QuranWidget(
                arab:
                    "عَنْ عَائِشَةَ قَالَتْ: قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: أَعْلِنُوْا هَذَا النِّكَاحَ وَاجْعَلُوْهُ فِي الْمَسَاجِدِ وَاضْرِبُوْا عَلَيْهِ بِالدُّفُوْفِ (رواه الترمذي)"),
            Terjemahan(
                content:
                    "Diriwayatkan dari ‘Aisyah ra, Rasulullah saw bersabda, siarkanlah pernikahan ini dan lakukanlah di masjid-masjid dan mainkanlah dengan rebana. ",
                riwayat: "(HR. Al-Tirmidzī)"),
            Heading2(title: "7. Talak dan Iddah"),
            Heading3(title: "a. Talak"),
            ParagrafWidget(
                content:
                    "Talak dari segi bahasa artinya melepaskan ikatan. Maksudnya di sini ialah melepaskan ikatan pernikahan. Hukum melakukan talak ialah makruh. Sebagaimana hadis Rasul Muhammad Saw."),
            QuranWidget(
                arab:
                    "عَنِ ابْنِ عُمَرَ عَنِ النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ أَبْغَضُ الْحَلَالِ إِلَى اللهِ تَعَالَى الطَّلَاقُ (رواه أبو داود)"),
            Terjemahan(
                content:
                    "Dari Ibnu Umar ra. dari Nabi saw beliau bersabda: “Perkara halal yang paling Allah benci adalah perceraian.”",
                riwayat: " (HR. Abu Daud)"),
            ParagrafWidget(
                content:
                    "   Namun, hukum tersebut dapat berubah sesuai dengan kemaslahatan dan kemudaratan keberlangsungan ikatan pernikahan:"),
            ParagrafList(idlist: talak),
            Heading3(title: "b. Macam-macam Talak"),
            ParagrafWidget(
                content:
                    "Talak, dilihat dilihat dari macamnya dibagi menjadi tiga, yaitu:"),
            Heading3(title: "1) Talak dari segi kalimat yang digunakan"),
            ParagrafWidget(
                content:
                    "Talak ditinjau dari segi kalimat yang diucapkan bisa dilakukan dengan kalimat yang terang/jelas dan talak dengan menggunakan sindiran. Talak dengan kalimat yang terang adalah talak yang diucapkan dengan terus terang, mengandung kalimat yang sudah jelas dan sudah dipahami maksudnya. Contohnya: “Saya talak kamu sekarang.”"),
            ParagrafWidget(
                content:
                    "   Talak dengan kalimat yang terang dianggap sah tanpa harus disertai dengan niat untuk memastikan apa sebenarnya yang diinginkan dari kalimat yang diucapkannya. Mengapa? karena kalimat tersebut jelas tujuan dan maknanya. "),
            ParagrafWidget(
                content:
                    "   Sedangkan talak dengan kalimat sindiran adalah kalimat yang diucapkan mengandung makna talak dan makna lain, seperti “Semua urusanmu sekarang, ada di tanganmu sendiri.” Kalimat ini dapat diartikan bahwa istri memiliki kuasa untuk mengurusi dirinya sendiri dan melepaskan diri dari tanggung jawab suami. Kalimat ini juga dapat diartikan bahwa istri bebas melakukan tindakan apa pun sesuai yang dia inginkan. Talak yang menggunakan kalimat sindiran dinyatakan tidak sah, kecuali apabila disertai dengan niat."),
            Heading3(
                title:
                    "2) Talak dari segi sesuai atau tidak dengan aturan syari’at"),
            ParagrafWidget(
                content:
                    "Jika dilihat dari sesuai tidaknya dengan aturan syari’at, talak dibagi ke dalam talak sunni dan bid’i. Talak sunni ialah talak yang dilakukan sesuai syariat Islam, yang dilakukan ketika sang istri dalam keadaan suci (tidak sedang haid). Talak bid’i yaitu talak yang tidak sesuai dengan ketentuan agama Islam. Contohnya, suami yang menalak istrinya sebanyak tiga kali talak dengan 1 kali ucapan atau suami menalak istrinya saat sedang haid atau nifas."),
            Heading3(title: "3) Talak dari segi boleh dan tidaknya ruju’"),
            ParagrafWidget(
                content:
                    "Dilihat dari segi boleh dan tidaknya ruju’ dibagi menjadi 2, yaitu talak raj’i dan ba’in. Talak raj’i adalah talak yang dijatuhkan oleh suami kepada istrinya tanpa didahului oleh talak sebelumnya (talak pertama), atau pernah diucapkan satu kali talak sebelumnya (talak kedua). Pada saat talak raj’i, suami masih diperbolehkan untuk ruju’ dengan istri baik pada massa ‘iddah maupun di luar massa ‘iddah. Namun apabila ruju’ dilakukan di luar masa ‘iddah harus melakukan akad nikah yang baru."),
            ParagrafWidget(
                content:
                    "   Sedangkan talak ba’in dibagi menjadi dua, yaitu, pertama: ba’in shughra. Talak ba’in sughra ialah talak yang dijatuhkan oleh suami atas permintaan sang istri. Dalam talak ini berlaku ketentuan seorang suami tidak boleh meminta ruju’ walaupun masih dalam masa iddah. Suami hanya boleh ruju’ ketika sudah selesai masa ‘iddahnya dengan akad yang baru."),
            ParagrafWidget(
                content:
                    "   Kedua, talak ba’in kubra mempunyai hukum yang sama dengan talak ba’in shughra, yaitu sama-sama memutuskan ikatan perkawinan. Talak ba’in kubra atau talak untuk ketiga kalinya berarti menjadikannya terpisah untuk selama-lamanya dan tidak diperbolehkan kembali lagi ke suaminya, kecuali apabila dia telah menikah dengan lelaki lain dan pernah berhubungan."),
            Heading3(title: "c. Masa ‘iddah"),
            ParagrafWidget(
                content:
                    "Iddah adalah masa menanti yang diwajibkan kepada perempuan yang ingin menikah lagi setelah diceraikan oleh suaminya, baik cerai hidup atau cerai mati. Diantara tujuannya untuk diketahui kandungannya berisi atau tidak. Menurut sebagian ulama, masa ‘iddah juga bertujuan sebagai masa perenungan dan introspeksi diri. Imam al-Sya’rawi menjelaskan salah satu hikmah dari masa iddah adalah sebagai penghormatan atas hubungan pernikahan yang pernah dijalin sebelumnya. Penjelasan masa iddah ialah sebagai berikut:"),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, top: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                          child: Text(
                            "a)",
                            style: regular_paragraf,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Perempuan yang hamil, masa iddahnya sampai lahir anak yang dikandungnya sebagaimana firman Allah swt:",
                                textAlign: TextAlign.justify,
                                style: regular_paragraf,
                              ),
                              QuranWidget(
                                  arab:
                                      " وَاُولٰتُ الْاَحْمَالِ اَجَلُهُنَّ اَنْ يَّضَعْنَ حَمْلَهُنَّۗ . . . (الطلاق/٦٥ : ٤)"),
                              VoicePlay(
                                  audioUrl:
                                      "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F09%20surah-aththalaq%204.mp3?alt=media&token=8597968c-4a24-4ab7-aab4-73edc2aa2fc0"),
                              Terjemahan(
                                  content:
                                      "“… dan perempuan-perempuan yang sedang hamil (baik ditinggal mati suami ataupun ditalak) maka masa ‘iddahnya sampai ia melahirkan kandungannya…” ",
                                  riwayat: "   (Q.S. al-Thalaq/65: 4)"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, top: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                          child: Text(
                            "b)",
                            style: regular_paragraf,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Perempuan yang tidak hamil ada kalanya cerai hidup atau cerai mati (suami meninggal). Untuk cerai mati massa iddahnya empat bulan sepuluh hari. Sebagaimana firman Allah Swt:",
                                textAlign: TextAlign.justify,
                                style: regular_paragraf,
                              ),
                              QuranWidget(
                                  arab:
                                      "وَالَّذِيْنَ يُتَوَفَّوْنَ مِنْكُمْ وَيَذَرُوْنَ اَزْوَاجًا يَّتَرَبَّصْنَ بِاَنْفُسِهِنَّ اَرْبَعَةَ اَشْهُرٍ وَّعَشْرًا ۚ ... (البقرة/٢: ٢٣٤)"),
                              VoicePlay(
                                  audioUrl:
                                      "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F09%20-albaqarah-%20234.mp3?alt=media&token=c7e71895-dbfb-4454-a8a6-2c90d66214a7"),
                              Terjemahan(
                                  content:
                                      "“Dan orang-orang yang meninggal dunia dan meninggalkan istri-istri maka masa ‘iddah istri mereka adalah empat bulan sepuluh hari…” ",
                                  riwayat: "  (Q.S. al-Baqarah/2: 234)"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ParagrafWidget(
                content:
                    "   Sedangkan untuk masa iddah cerai hidup ialah tiga kali suci. Jika perempuan yang diceraikan sudah tidak mengalami haid, maka ‘iddahnya tiga bulan. Telah difirmankan Allah dalam al-Qur’an:"),
            QuranWidget(
                arab:
                    "وَالْمُطَلَّقٰتُ يَتَرَبَّصْنَ بِاَنْفُسِهِنَّ ثَلٰثَةَ قُرُوْۤءٍۗ ... (البقرة/٢: ٢٢٨)"),
            VoicePlay(
                audioUrl:
                    "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F09%20-albaqarah-228.mp3?alt=media&token=eed72f1f-b20c-4491-9701-2df3187ee937"),
            Terjemahan(
                content:
                    "Dan perempuan-perempuan yang diceraikan, maka mereka menunggu menahan dirinya (masa ’iddah) 3 kali masa suci…”",
                riwayat: "(Q.S. al-Baqarah/2: 228)"),
            QuranWidget(
                arab:
                    "وَالّٰۤـِٔيْ يَىِٕسْنَ مِنَ الْمَحِيْضِ مِنْ نِّسَاۤىِٕكُمْ اِنِ ارْتَبْتُمْ فَعِدَّتُهُنَّ ثَلٰثَةُ اَشْهُرٍۙ ...(الطلاق/٦٥: ٤)"),
            VoicePlay(
                audioUrl:
                    "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F09%20surah-aththalaq-004.mp3?alt=media&token=100cb066-2ae7-4d1f-abf1-2cc703be08ac"),
            Terjemahan(
                content:
                    "Dan apabila perempuan-perempuan yang telah memasuki masa tidak haid, jika kalian ragu maka masa ‘iddah mereka adalah tiga bulan…",
                riwayat: "(Q.S. al-Thalaq/65: 4)"),
            Heading2(title: "8. Rujuk"),
            ParagrafWidget(
                content:
                    "Kata rujuk dalam bahasa Arab disebut dengan raj’ah, artinya kembali. Suami yang rujuk dengan istrinya, berarti ia telah kembali pada istrinya. Sedangkan secara istilah sebagaimana dalam Kitab Mughni al-Muhtaj, rujuk adalah mengembalikan istri yang masih dalam masa ‘iddah talak raj’i bukan ba’in. Dengan kata lain rujuk hanya dapat dilakukan pada saat istri dijatuhkan talak raj’i (bukan ba’in) dan selama pada masa ‘iddah."),
            ParagrafWidget(content: "Dalam al-Qur’an, Allah Swt. berfirman:"),
            QuranWidget(
                arab:
                    "وَاِذَا طَلَّقْتُمُ النِّسَاۤءَ فَبَلَغْنَ اَجَلَهُنَّ فَاَمْسِكُوْهُنَّ بِمَعْرُوْفٍ اَوْ سَرِّحُوْهُنَّ بِمَعْرُوْفٍۗ وَلَا تُمْسِكُوْهُنَّ ضِرَارًا لِّتَعْتَدُوْا ۚ ... (البقرة/٢: ٢٣١)"),
            VoicePlay(
                audioUrl:
                    "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F09%20albaqarah-231.mp3?alt=media&token=022f9c56-a112-435f-827e-e0e343eb6d42"),
            Terjemahan(
                content:
                    "“Apabila kamu menceraikan istrimu, hingga (hampir) berakhir masa idahnya, tahanlah (rujuk) mereka dengan cara yang patut atau ceraikanlah mereka dengan cara yang patut (pula). Janganlah kamu menahan (rujuk) mereka untuk memberi kemudaratan sehingga kamu melampaui batas.”",
                riwayat: "(Q.S. al-Baqarah/2: 231)"),
            ParagrafWidget(
                content:
                    "   Dalam ayat lain Allah Swt. menjelaskan tentang kebolehan rujuk jika masih talak satu dan dua. Sebagaimana ayat berikut ini:"),
            QuranWidget(
                arab:
                    "اَلطَّلَاقُ مَرَّتٰنِ ۖ فَاِمْسَاكٌۢ بِمَعْرُوْفٍ اَوْ تَسْرِيْحٌۢ بِاِحْسَانٍ ۗ وَلَا يَحِلُّ لَكُمْ اَنْ تَأْخُذُوْا مِمَّآ اٰتَيْتُمُوْهُنَّ شَيْـًٔا اِلَّآ اَنْ يَّخَافَآ اَلَّا يُقِيْمَا حُدُوْدَ اللّٰهِ ۗ ... (البقرة/٢: ٢٢٩)"),
            VoicePlay(
                audioUrl:
                    "https://firebasestorage.googleapis.com/v0/b/book-592f2.appspot.com/o/audio%2F09%20albaqarah-full-229.mp3?alt=media&token=045fd76f-2f4e-4e66-b0cb-0b4d3907feb3"),
            Terjemahan(
                content:
                    "“Talak (yang dapat dirujuk) itu dua kali. (Setelah itu suami dapat) menahan (rujuk) dengan cara yang patut atau melepaskan (menceraikan) dengan baik. Tidak halal bagi kamu mengambil kembali sesuatu (mahar) yang telah kamu berikan kepada mereka, kecuali keduanya (suami dan istri) khawatir tidak mampu menjalankan batas-batas ketentuan Allah…”",
                riwayat: " (QS. Al-Baqarah/2: 229)"),
            ParagrafWidget(
                content:
                    "   Pada ayat di atas menjelaskan jika seorang suami mentalak istri pertama kali dan kedua, suami masih bisa rujuk. Jika suami mentalak istri untuk ketiga kalinya, maka suami tidak bisa langsung rujuk dengan istrinya. Kecuali setelah istrinya menikah lagi dengan pria lain dan sudah berhubungan. Setelah itu suami pertama dapat menikahi istrinya tersebut. Ini pun jika istrinya bercerai dari suami keduanya tanpa ada paksaan atau direncanakan."),
            Heading3(title: "Syarat dan Rukun Rujuk"),
            ParagrafWidget(
                content:
                    "Syarat rujuk sama dengan waktu menikah, yaitu: baligh, berakal, atas kehendak sendiri, dan bukan seorang yang murtad. Apabila orang yang merujuk adalah murtad, belum baligh, dan orang yang terpaksa, maka hukumnya tidak sah, sebagaimana dijelaskan oleh al-Syirbini dalam Kitab Mughni al-Muhtaj juz 3."),
            ParagrafWidget(
                content:
                    "   Sedangkan rukun rujuk sebagaimana ditulis oleh Syaikh Abi Zakaria Yahya bin Syaraf al-Nawawi al-Dimasyqi dalam Kitab Raudhatul Thalibin, ada empat, yaitu:"),
            ParagrafList(idlist: rukunrujuk),
            Heading2(
                title:
                    "9. Pernikahan Menurut Undang-Undang No. 1 Tahun 1974 dan Undang-Undang No. 16 Tahun 2019"),
            ParagrafWidget(
                content:
                    "Pemerintah Indonesia yang mengatur tentang Perkawinan tertulis di Undang-Undang. No. 1 Tahun 1974. Dalam Undang-Undang ini dijelaskan bahwa tujuan Pernikahan ialah untuk membentuk keluarga atau rumah tangga yang bahagia dan kekal berdasarkan Ketuhanan Yang Maha Esa."),
            ParagrafWidget(
                content:
                    "   Di dalam Undang-Undang. No. 1 Tahun 1974 juga diterangkan bahwa pencatatan pernikahan yang sah menurut negara hanya dapat dilakukan oleh Petugas Pencatat Nikah (PPN) yang berada di wilayah masing-masing. Perincian tentang pencatatan pernikahan diatur pada Undang-Undang. Nomor 32 tahun 1954. Hal ini supaya nikah, talak dan rujuk menurut agama Islam supaya dicatat agar mendapat kepastian hukum. Selain itu perkawinan akan berdampak pada waris, sehingga perkawinan perlu dicatat agar jangan sampai ada perselisihan."),
            ParagrafWidget(
                content:
                    "   Sedangkan Undang-Undang No. 16 Tahun 2019 merupakan perubahan atas Undang-Undang No. 1 Tahun 1974. Di antara perubahannya adalah perkawinan hanya diizinkan apabila pria dan wanita sudah mencapai umur 19 (sembilan belas) tahun. Pada bagian penjelasan disebutkan bahwa batas minimal umur perkawinan bagi wanita dipersamakan dengan batas minimal umur perkawinan bagi pria, yaitu 19 (sembilan belas) tahun. Batas usia dimaksud dinilai telah matang jiwa raganya untuk dapat melangsungkan perkawinan agar dapat mewujudkan tujuan perkawinan secara baik tanpa berakhir pada perceraian dan mendapat keturunan yang sehat dan berkualitas. Diharapkan juga kenaikan batas umur yang lebih tinggi dari 16 (enam belas) tahun bagi wanita untuk kawin akan mengakibatkan laju kelahiran yang lebih rendah dan menurunkan resiko kematian ibu dan anak. Selain itu dapat terpenuhinya hak-hak anak sehingga mengoptimalkan tumbuh kembang anak termasuk pendampingan orang tua serta memberikan akses anak terhadap pendidikan setinggi mungkin."),
            ParagrafWidget(
                content:
                    "   Oleh karena itu, sebagai warga negara yang baik, hendaknya kalian bisa mematuhi Undang-Undang yang berlaku. Jangan sampai kalian terjerumus dalam pergaulan bebas yang mengesampingkan aturan yang berlaku. Menikah bukan hanya persoalan bersenang-senang, namun merupakan sebuah komitmen untuk menjadi hamba yang taat kepada perintah Allah Swt., Rasululullah Saw., dan pemerintah untuk membentuk keluarga yang sakinah, mawaddah, wa rahmah. Apabila keluarganya kuat, maka negara Indonesia juga akan menjadi kuat dan maju. "),
            Heading2(title: "10. Hikmah Pernikahan dalam Islam"),
            ParagrafWidget(
                content:
                    "Dari uraian di atas, hikmah pernikahan dalam Islam adalah:"),
            ParagrafListAbjad(idlist: hikmaPernikahan),
            HPenerapan(),
            ParagrafWidget(
                content:
                    "Alhamdulilah sudah selesai belajar bab ini. Setelah mempelajari materi tentang Ketentuan Pernikahan dalam Islam, kalian dapat menerapkan karakter dalam kehidupan sehari-hari sebagai berikut:"),
            TabelPenerapanKarakterWidget(idlist: tabelPenKarakter9),
            IReflek(),
            Refleksi(
                content:
                    "Setelah mempelajari materi ketentuan Pernikahan dalam Islam, manfaat apa saja yang kalian rasakan dalam kehidupan sehari-hari?\nTuliskan 3 manfaatnya di bawah ini.\n1. ……………………………………………………………………………..\n2………………………………………………………………………………\n3………………………………………………………………………………"),
            JRangkum(),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: purpleBagroundLight,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ParagrafList(idlist: rangkuman9),
            ),
            KPenilai(),
            Heading2(title: "1. Penilaian Sikap"),
            Text("Petunjuk Mengerjakan",
                style: h2.copyWith(fontWeight: FontWeight.w600)),
            ParagrafWidget(
                content:
                    "Jawablah pernyataan di bawah sesuai dengan kondisi yang ada dengan mencentang (√) di kolom!"),
            TabelPanilaianSikapAtas(idlist: tabelPenSikap9),
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
                  Get.to(PSikap9());
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
            Text(
                "a. Pilihlah salah satu jawaban yang tepat pada salah satu huruf jawaban a, b, c, d atau e",
                style: h2.copyWith(fontWeight: FontWeight.w600)),
            Container(
              margin: const EdgeInsets.only(top: 4),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: black),
                  color: const Color(0xFFF3F3F4),
                  borderRadius: BorderRadius.circular(2)),
              height: 280,
              child: PilihanGandaSoal(daftarSoal: pilihanGanda9),
            ),
            Heading3(
                title:
                    "b. Jawablah pertanyaan-pertanyaan di bawah ini dengan jelas dan tepat!"),
            ParagrafList(idlist: uraian9),
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
                  Get.to(PPengetahuan9());
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
            SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: bagroundDarkOrange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ParagrafWidget(
                      content:
                          "Untuk penilaian keterampilan ini, perhatikan ketentuan berikut ini."),
                  ParagrafListCostum(
                      number: "1",
                      content:
                          "Kalian akan dibagi ke dalam 5 kelompok dengan pembagian pembahasan dibawah ini."),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ParagrafListAbjad(idlist: kelompok),
                  ),
                  ParagrafListCostum(
                      number: "2",
                      content:
                          "Masing-masing dari kelompok membaca dan mempelajari sesuai tema yang akan dibahas;"),
                  ParagrafListCostum(
                      number: "3",
                      content:
                          "Dari hasil diskusi kelompok, dituangkan ke dalam mindmap (peta konsep) di kertas;"),
                  ParagrafListCostum(
                      number: "4",
                      content:
                          "Masing-masing kelompok bermusyawarah untuk berbagi tugas dengan yaitu ada yang menjadi juru bicara kelompok dan berbelanja materi ke kelompok lain. Juru bicara kelompok bertugas menjelaskan kepada kelompok lain yang berkunjung, sedangkan yang berbelanja materi adalah mengunjungi kelompok lain dan mencatat hasil kunjungannya dan meloporkan kembali ke kelompoknya;"),
                  ParagrafListCostum(
                      number: "5",
                      content:
                          "Guru mengatur jalannya berbelanja materi ke kelompok lain dengan mengatur waktunya;"),
                  ParagrafListCostum(
                      number: "6",
                      content:
                          "Siswa kembali ke kelompoknya dan melaporkan hasilnya;"),
                  ParagrafListCostum(
                      number: "7",
                      content:
                          "Masing-masing kelompok menyampaikan hasil belanja materi dengan berdiri di depan kelas atau tempat duduk kelompoknya.")
                ],
              ),
            ),
            const IPengaya(),
            ParagrafWidget(
                content:
                    "Bagi yang sudah mencapai kompetensi minimal, kalian dapat mendalami lebih lanjut buku/kitab pengayaan di bawah ini:"),
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
                    text:
                        TextSpan(style: regular_paragraf, children: <TextSpan>[
                      TextSpan(text: "Rasjid, Sulaiman. "),
                      TextSpan(
                          text: "Fiqh Islam.  ",
                          style: regular_paragraf.copyWith(
                              fontStyle: FontStyle.italic)),
                      TextSpan(text: "Bandung: Sinar Baru algesindo. 2019;"),
                    ]),
                    textAlign: TextAlign.justify,
                  ),
                )
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
                    text:
                        TextSpan(style: regular_paragraf, children: <TextSpan>[
                      TextSpan(
                          text:
                              "Al-Ghazi, Abi ‘Abdillah Syamsuddin Muhammad bin Qasim bin Muhammad. "),
                      TextSpan(
                          text: "Fath al-Qarib al-Mujib,  ",
                          style: regular_paragraf.copyWith(
                              fontStyle: FontStyle.italic)),
                      TextSpan(text: "Beirut: Dar Ibnu Hazm. 2005;"),
                    ]),
                    textAlign: TextAlign.justify,
                  ),
                )
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
                    text:
                        TextSpan(style: regular_paragraf, children: <TextSpan>[
                      TextSpan(
                          text:
                              "al-Hashni, Taqiyuddin Abu Bakar bin Muhammad al-Husaini. "),
                      TextSpan(
                          text:
                              "Kifayah al-Akhyar fi Hilli Ghayah al-Ikhtishar,  ",
                          style: regular_paragraf.copyWith(
                              fontStyle: FontStyle.italic)),
                      TextSpan(text: "Beirut: Dar al-Kutub al-‘Ilmiah, 2001"),
                    ]),
                    textAlign: TextAlign.justify,
                  ),
                )
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
                    text:
                        TextSpan(style: regular_paragraf, children: <TextSpan>[
                      TextSpan(text: "al-Syathiri, Ahmad bin ‘Umar, "),
                      TextSpan(
                          text: "al-Yaqut al-Nafis,  ",
                          style: regular_paragraf.copyWith(
                              fontStyle: FontStyle.italic)),
                      TextSpan(text: "Jeddah: Darul Minhaj, 2011;"),
                    ]),
                    textAlign: TextAlign.justify,
                  ),
                )
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
                    text:
                        TextSpan(style: regular_paragraf, children: <TextSpan>[
                      TextSpan(
                          text:
                              "al-Syirbini, Syaikh Syamsuddin Muhammad bin al-Khathib,  "),
                      TextSpan(
                          text: "Mughni al-Muhtaj Juz 3,  ",
                          style: regular_paragraf.copyWith(
                              fontStyle: FontStyle.italic)),
                      TextSpan(text: "Beirut: Dar al-Ma’rifah, 1997."),
                    ]),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
            const Pembatas(),
          ]),
    );
  }
}
