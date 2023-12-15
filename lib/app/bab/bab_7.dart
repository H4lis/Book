import 'package:book/app/widgets/app_bar_widget.dart';
import 'package:book/app/widgets/heading_2.dart';
import 'package:book/app/widgets/heading_3.dart';
import 'package:book/app/widgets/paragraf_italic.dart';
import 'package:book/app/widgets/paragraf_list_abjad.dart';
import 'package:book/app/widgets/paragraf_widget.dart';
import 'package:book/app/widgets/quran_widget.dart';
import 'package:book/app/widgets/terjemahan_widget.dart';
import 'package:flutter/material.dart';

import '../data/bab_1_model/tabel_penilaian_sikap_d.dart';
import '../data/bab_2_model/tadabbur_model.dart';
import '../data/bab_6_model/list_paragraf_6.dart';
import '../data/bab_7_model/list_paragraf_7.dart';
import '../data/kata_kunci.dart';
import '../data/pilihan_ganda.dart';
import '../data/tabel_penerapan_karakter.dart';
import '../modules/SideMenu/views/side_menu_view.dart';
import '../shared/constant.dart';
import '../widgets/aktivitas_widget.dart';
import '../widgets/bab_1_widget/pilihanganda.dart';
import '../widgets/bab_1_widget/tabel_penilaian_sikap_atas.dart';
import '../widgets/baground_orange_kata_kunci.dart';
import '../widgets/list_paragraf.dart';
import '../widgets/refleksi.dart';
import '../widgets/sampul_bab.dart';
import '../widgets/sub_bab.dart';
import '../widgets/tabel_penerapan_karakter.dart';
import '../widgets/tadabbur.dart';

class Bab7 extends StatelessWidget {
  const Bab7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenuView(),
      appBar: const AppBarWidget(),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            SampulBab(
                title: "Bab 7",
                contentImage: "bab_7",
                description:
                    "Menguatkan Iman dengan Menjaga Kehormatan, Ikhlas, Malu, dan Zuhud"),
            const ATujuan(),
            ParagrafWidget(
                content:
                    "Tujuan pembelajaran pada bab ini adalah kalian mampu:"),
            ParagrafList(idlist: tujPem7),
            BagroundOrangeKataKunci(idlist: kataKunciBab7),
            CInfo(),
            Image.asset(
              "assets/images/infografis7.png",
            ),
            DAyo(),
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
                      "Aktivitas 7.1",
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
                          "Sebelum mempelajari materi tentang menguatkan iman dengan menjaga kehormatan, ikhlas, malu, dan zuhud, mari bersama-sama membaca Q.S. Al-A’raf/7: 27-29 di bawah ini dengan tartil! Siap?", // Use the contentText parameter here
                          style: regular_paragraf,
                          textAlign: TextAlign.justify,
                        ),
                        QuranWidget(
                            arab:
                                "يٰبَنِيْٓ اٰدَمَ لَا يَفۡتِنَنَّكُمُ ٱلشَّيۡطٰنُ كَمَآ اَخۡرَجَ أَبَوَيۡكُمْ مِّنَ ٱلۡجَنَّةِ يَنْزِعُ عَنۡهُمَا لِبَاسَهُمَا لِيُرِيَهُمَا سَوۡءٰتِهِمَآۚ اِنَّهۥ يَرٰىٰكُمۡ هُوَ وَقَبِيْلُهُۥ مِنۡ حَيۡثُ لَا تَرَوۡنَهُمۡۗ إِنَّا جَعَلۡنَا ٱلشَّيٰطِيْنَ اَوۡلِيَآءَ لِلَّذِيْنَ لَا يُؤۡمِنُونَ ٢٧   وَاِذَا فَعَلُوْا فَاحِشَةً قَالُوْا وَجَدۡنَا عَلَيۡهَآ اٰبَآءَنَا وَاللّٰهُ اَمَرَنَا بِهَاۗ قُلۡ إِنَّ اللّٰهَ لَا يَأۡمُرُ بِالۡفَحۡشَآءِ ۗ  اَتَقُوْلُوْنَ عَلَى اللّٰهِ مَا لَا تَعۡلَمُوْنَ ٢٨   قُلۡ اَمَرَ رَبِّيْ بِالۡقِسۡطِ ۗ  وَاَقِيْمُوْا وُجُوهَكُمۡ عِنْدَ كُلِّ مَسۡجِدٍ وَّادۡعُوْهُ مُخۡلِصِيْنَ لَهُ ٱلدِّيْنَۚ كَمَا بَدَاَكُمۡ تَعُودُونَ ۗ ٢٩   (الاعراف/٧: ٢٩ـ٢٧)  ")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ETadabb(),
            Tadabbur(idlist: tadabbur7),
            AktivitasWidget(
              activityTitle: "Aktivitas 7.2",
              contentText:
                  "Dari gambar di atas, bagaimana kaitannya dengan cabang iman, yaitu: menjaga kehormatan, ikhlas, malu, dan zuhud.",
            ),
            FKisah(),
            Heading3(
              title: "Bacalah kisah di bawah ini dengan baik!",
            ),
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
                      "Kezuhudan dan Kesabaran Sayyidah Fathimah dan Ali bin Abi Thalib",
                      style: h1.copyWith(
                        color: orange,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ParagrafWidget(
                      content:
                          "   Kehidupan Sayyidah Fathimah, putri Nabi Muhammad Saw. mencerminkan sikap sangat sederhana dan jauh dari kemewahan. Kisah ini menjadi salah satu contoh kenyataan hidup serba sulit yang dihadapi Fathimah, ketika ia meminta pembantu kepada bapaknya yang tiada lain adalah Rasulullah Saw."),
                  ParagrafWidget(
                      content:
                          "   Suatu saat, Fathimah mendatangi Rasulullah untuk menyampaikan kondisinya. “Ada apa wahai putriku,” tanya Rasulullah. Fathimah menjawab, “Saya datang untuk mengucapkan salam kepadamu wahai bapakku.” Fathimah merasa malu menyampaikan permintaannya kepada bapaknya, sehingga dia langsung pulang. Melihat kedatangannya, Ali bin Abi Thalib bertanya kepada istrinya, “Apa yang telah engkau lakukan terhadap keinginan bapakmu?” Ia menjawab, “Saya malu untuk menyampaikan keinginanku meminta seorang pembantu.”"),
                  ParagrafWidget(
                      content:
                          "   Singkat cerita, Ali dan Fathimah menghadap Rasulullah Saw. Ali berkata, “Wahai Rasulullah, saya selalu mengambil air sendiri untuk dibawa ke rumah sehingga hal tersebut membuat dadaku terasa sakit.” Kemudian Fathimah juga menyampaikan, “Aku juga sering menumbuk gandum dengan tanganku sendiri sehingga tanganku menjadi kasar. Sementara Engkau wahai ayahku dikarunia oleh Allah banyak tawanan, maka berilah aku seorang untuk menjadi pembantu di rumahku.” "),
                  ParagrafWidget(
                      content:
                          "   Mendengar permintaan Ali dan Fathimah, Rasululullah Saw. menjawab, “Demi Allah aku tidak akan memberikan kepada kalian apa yang kalian minta dan aku membiarkan para ahlu shuffah terlantar kelaparan dengan mengganjal perut mereka karena aku tidak mendapatkan apa yang harus aku berikan kepada mereka. Tetapi ketahuilah, sesungguhnya budak-budak yang ada itu aku jual, lalu hasil dari penjualan mereka digunakan untuk memberi nafkah para ahlu shuffah yang lebih membutuhkan."),
                  ParagrafWidget(
                      content:
                          "  Pendidikan dari Nabi Muhammad Saw seperti inilah yang kemudian hari sangat mempengaruhi kepribadian Ali bin Abi Thalib. Termasuk saat Ali mendapatkan amanah menjadi pemimpin bagi kaum muslimin. Pendidikan yang ia dapatkan selama bersama Rasulullah Saw. menjadikan sosok yang tidak serakah terhadap kenikmatan dan gemerlap dunia."),
                  ParagrafItalic(
                      content:
                          "(Diadaptasi dari Buku Biografi Ali bin Abi Thalib r.a. karya Prof. Dr. Ali Muhammad Ash Shallabi, Jakarta: Pustaka Al-Kautsar, 2014: 61-62)"),
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
                      "Aktivitas 7.3", // Use the activityTitle parameter here
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
                          "Setelah kalian membaca artikel di atas, jawablah pertanyaan di bawah ini.", // Use the contentText parameter here
                          style: regular_paragraf,
                          textAlign: TextAlign.justify,
                        ),
                        ParagrafList(idlist: aktvititas)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GWawasan(),
            ParagrafWidget(
                content:
                    "Pada semester sebelumnya, kalian sudah belajar tentang cabang iman, yaitu memenuhi janji, menyukuri nikmat, memelihara lisan, dan menutup aib orang lain. Sekarang, pada semester ini kalian mempelajari materi cabang iman yang lain, yaitu: menjaga kehormatan, ikhlas, malu, dan zuhud. Bagaimana penjelasannya? Mari bersama-sama memahami dengan baik ya!"),
            Heading2(title: "1. Menjaga Kehormatan"),
            ParagrafWidget(
                content:
                    "Maksud dari menjaga kehormatan adalah menjaga harga diri, nama baik, dan kemuliaan diri. Dengan kata lain menjaga harkat, martabat dan harga diri manusia. Menjaga kehormatan dalam Bahasa Arab disebut dengan muru’ah. Muru’ah adalah proses penjagaan tingkah laku seseorang agar sejalan dengan ajaran agama, menghiasi diri dengan akhlak terpuji dan menjauhi segala bentuk keburukan. Ada juga yang memberi definisi sebagai kemampuan untuk menghindari perbuatan yang negatif/buruk, sehingga dapat menjaga harkat, martabat, harga diri, dan kehormatan diri."),
            ParagrafWidget(
                content:
                    "   Selain muru’ah juga disebut dengan istilah ‘iffah. Secara bahasa, istilah ‘iffah berarti mencegah dari sesuatu yang tidak bermanfaat atau menjauhi hal yang buruk dan terlarang. Sedangkan secara istilah berarti sifat yang menjadikan seseorang dapat menghindar dari menuruti hawa nafsunya."),
            ParagrafWidget(
                content:
                    "Sikap menjaga kehormatan, terdapat dalam Q.S. Al-Ahzab/33: 35, yaitu:"),
            QuranWidget(
                arab:
                    "اِنَّ الْمُسْلِمِيْنَ وَالْمُسْلِمٰتِ وَالْمُؤْمِنِيْنَ وَالْمُؤْمِنٰتِ وَالْقٰنِتِيْنَ وَالْقٰنِتٰتِ وَالصّٰدِقِيْنَ وَالصّٰدِقٰتِ وَالصّٰبِرِيْنَ وَالصّٰبِرٰتِ وَالْخٰشِعِيْنَ وَالْخٰشِعٰتِ وَالْمُتَصَدِّقِيْنَ وَالْمُتَصَدِّقٰتِ وَالصَّاۤىِٕمِيْنَ وَالصّٰۤىِٕمٰتِ وَالْحٰفِظِيْنَ فُرُوْجَهُمْ وَالْحٰفِظٰتِ وَالذّٰكِرِيْنَ اللّٰهَ كَثِيْرًا وَّالذّٰكِرٰتِ اَعَدَّ اللّٰهُ لَهُمْ مَّغْفِرَةً وَّاَجْرًا عَظِيْمًا  (الاحزاب/٣٣ :٣٥)"),
            Terjemahan(
                content:
                    "“Sesungguhnya laki-laki dan perempuan yang muslim, laki-laki dan perempuan yang mukmin, laki-laki dan perempuan yang tetap dalam ketaatannya, laki-laki dan perempuan yang benar, laki-laki dan perempuan yang sabar, laki-laki dan perempuan yang khusyu´, laki-laki dan perempuan yang bersedekah, laki-laki dan perempuan yang berpuasa, laki-laki dan perempuan yang memelihara kehormatannya, laki-laki dan perempuan yang banyak menyebut (nama) Allah, Allah telah menyediakan untuk mereka ampunan dan pahala yang besar ",
                riwayat: "(Q.S. Al-Ahzab/33: 35)"),
            ParagrafWidget(
                content: "Sikap Muru’ah dibagi menjadi tiga macam, yaitu:"),
            ParagrafList(idlist: sikapMur),
            ParagrafWidget(
                content:
                    "   Sekarang, bagaimana contoh menjaga muru’ah? Diantara contoh muru’ah dalam kehidupan sehari-hari adalah:"),
            ParagrafList(idlist: contohMur),
            ParagrafWidget(
                content:
                    "   Contoh-contoh di atas merupakan muru’ah dalam diri seseorang. Menurut al-Jurjani dalam Kitab al-Ta’rifat bahwa muru’ah adalah kekuatan hati yang menjadi sumber lahirnya sifat-sifat terpuji baik secara dalil syar’i, akal dan tradisi. Oleh karena itu, betul yang telah disampaikan Nabi Saw. bahwa kekayaan yang sejati adalah kekayaan hati. Sebagaimana diriwayatkan oleh Abu Hurairah:"),
            QuranWidget(
                arab:
                    "عَنْ أَبِي هُرَيْرَةَ عَنِ النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ: لَيْسَ الْغِنَى عَنْ كَثْرَةِ العَرَضِ وَلَكِنَّ الْغِنَى غِنَى النَّفْسِ (رواه البخاري)"),
            Terjemahan(
                content: "Aktivitas 7.4",
                riwayat:
                    "Buatlah dua contoh yang mencerminkan sikap menjaga kehormatan dalam kehidupan sehari-hari!"),
            Heading2(title: "2. Ikhlas"),
            ParagrafWidget(
                content:
                    "Kata ikhlas dari bahasa Arab. Secara bahasa kata ikhlas berarti murni, tidak bercampur, bersih, jernih, mengosongkan dan membersihkan sesuatu. Ikhlas berarti suci dalam berniat, bersihnya batin dalam beramal, tidak ada pura-pura, lurusnya hati dalam bertindak, jauh dari penyakit riya’ serta mengharap ridha Allah semata. Kaitannya ibadah, secara bahasa ikhlas berarti tidak memperlihatkan amal kepada orang lain. Sedangkan secara istilah, al-Jurjani dalam kitabnya al-Ta’rifat memberikan pengertian ikhlas adalah membersihkan amal perbuatan dari hal-hal yang mengotorinya seperti mengharap pujian dari makhluk atau tujuan-tujuan lain selain dari Allah. termasuk juga tidak mengharap amalnya disaksikan oleh selain Allah. "),
            ParagrafWidget(
                content:
                    "   Dengan kata lain ikhlas adalah sikap yang dilakukan seseorang dalam melaksanakan perintah-perintah Allah Swt. dan tidak mengharap sesuatu apapun, kecuali ridha Allah Swt. Jadi, ikhlas merupakan sesuatu hal yang sifatnya batin dan ia merupakan perasaan halus yang tidak dapat diketahui oleh siapapun kecuali pelakunya dan Allah Swt. "),
            ParagrafWidget(
                content:
                    "   Salah satu ayat yang mengajarkan untuk ikhlas adalah Q.S. Az-Zumar/39: 2 berikut ini."),
            QuranWidget(
                arab:
                    "اِنَّآ اَنْزَلْنَآ اِلَيْكَ الْكِتٰبَ بِالْحَقِّ فَاعْبُدِ اللّٰهَ مُخْلِصًا لَّهُ الدِّيْنَۗ  (الزمر/٣٩ :٢)"),
            Terjemahan(
                content:
                    "Sesungghunya Kami telah menurunkan kepadamu (Muhammad) al-Kitab (al-Qur’an) dengan benar, maka sembahlah Allah dengan memurnikan ketaatan (ibadah) kepadanya.",
                riwayat: "(Q.S. Az-Zumar/39: 2)"),
            ParagrafWidget(
                content:
                    "   Ali Abdul Halim (2010) mengatakan bahwa ikhlas dapat dibagi menjadi tiga tingkatan yaitu. "),
            ParagrafListAbjad(idlist: kataAli),
            ParagrafWidget(
                content:
                    "   Kemudian bagaimana cara agar dapat memiliki sifat ikhlas? Imam Dzun Nun menjelaskan, yaitu seseorang harus bersungguh-sungguh, sabar serta terus menerus/istiqamah dalam beramal, sehingga ia akan terbiasa dengan perbuatan baik. Menurutnya ada tiga ciri seseorang yang ikhlas dalam beramal:"),
            ParagrafList(idlist: ciri),
            ParagrafWidget(
                content:
                    "   Sekarang, apa manfaatnya, kalau kalian mempunyai sikap ikhlas? Di antara manfaatnya adalah terhindar dari tipu daya setan/iblis. Sehingga kalian dapat selamat dari berbagai macam godaan dan tipu daya yang menyebabkan kalian jauh dari petunjuk agama. Manfaat lain dari ikhlas adalah akan selamat dari siksa dan akan mendapatkan derajat yang tinggi kelak di akhirat. "),
            AktivitasWidget(
                activityTitle: "Aktivitas 7.5",
                contentText:
                    "Buatlah dua contoh yang mencerminkan sikap ikhlas dalam kehidupan sehari-hari!"),
            Heading2(title: "3. Malu"),
            ParagrafWidget(
                content:
                    "Malu dalam bahasa Arab disebut kata al-haya’ (الحَيَاءُ)  Malu disebutkan oleh Nabi Saw sebagai cabang dari iman karena dengan sifat malu seseorang dapat tergerak melakukan kebaikan dan menghindari keburukan. Sifat malu akan selalu mengantarkan seseorang pada kebaikan. Jika ada seseorang yang tidak berani melakukan kebaikan, maka sebabnya bukanlah sifat malu yang dimilikinya, tetapi itu disebabkan sifat penakut dan kelemahan yang dimiliki seseorang tersebut. Demikian Imam an-Nawawi menjelaskan dalam kitabnya Syarh Shahih Muslim."),
            ParagrafWidget(content: "Dalam hadis Nabi Muhammad Saw:"),
            QuranWidget(
                arab:
                    " عَنْ عَبْدِ اللّٰهِ بْنِ عُمَرَ رَضِيَ اللهُ عَنْهُمَا مَرَّ النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ عَلَى رَجُلٍ ، وَهُوَ يُعَاتِبُ أَخَاهُ فِي الْحَيَاءِ ، يَقُولُ: إِنَّكَ لَتَسْتَحْيِي حَتَّى كَأَنَّهُ يَقُولُ : قَدْ أَضَرَّ بِكَ ، فَقَالَ رَسُولُ اللّٰهُ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ: دَعْهُ فَإِنَّ الْحَيَاءَ مِنَ الإِيْمَانِ (رواه البخاري)"),
            ParagrafWidget(content: "Dalam hadis Nabi Muhammad Saw:"),
            Terjemahan(
                content:
                    "Dari ‘Abdullah bin ‘Umar: suatu saat Nabi saw bertemu seorang laki-laki yang mencela saudaranya yang pemalu. Bahkan lelaki tersebut mengatakan rasa malu telah membahayakanmu. Maka Rasulullah bersabda: berhentilah kamu mencela saudaramu, karena malu adalah bagian dari iman.",
                riwayat: "(H.R. Al-Bukhāri)."),
            ParagrafWidget(
                content:
                    "   Dalam hadis tersebut Nabi Muhammad Saw. menegur seorang laki-laki yang sedang mencela sifat malu yang dimiliki saudaranya. Sifat malu dalam hadis tersebut adalah bagian dari cabang iman. Mengapa? Karena sifat malu dapat menghindarkan seseorang dari perbuatan maksiat dan hal-hal yang dilarang agama (Badruddin Abi Muhammad Mahmud bin Ahmad al-‘Aini dalam Kitab ‘Umdah al-Qari Syarh Shahih al-Bukhari juz 1)."),
            ParagrafWidget(
                content:
                    "Menurut Ibnu Hajar penulis kitab Fath al-Bari, malu dibagi menjadi dua, yaitu."),
            ParagrafList(idlist: ibnuHajar),
            ParagrafWidget(
                content:
                    "karena dapat menjadi perantara meningkatkan keimanan sampai pada puncaknya. Supian Sauri (2019) menegaskan bahwa manusia yang memiliki sifat malu (haya’) ialah manusia yang mampu untuk menahan dan menutup diri dari hal-hal yang akan dapat mendatangkan aib atau keburukan pada dirinya. Dengan demikian, jika pada masa sekarang ini banyak perilaku buruk yang muncul dari umat beragama, seperti pencurian, penipuan, bahkan kasus korupsi, maka itu tidak lain karena sudah menipisnya rasa malu dari seorang hamba tersebut."),
            ParagrafWidget(
                content:
                    "   Tentang malu ini, dijelaskan oleh Nabi Muhammad Saw. menjelaskan dalam hadisnya:"),
            QuranWidget(
                arab:
                    "عَنْ عَبْدِ اللّٰهِ بْنِ مَسْعُودٍ قَالَ: قَالَ رَسُوْلُ اللّٰهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ اسْتَحْيُوْا مِنَ اللهِ حَقَّ الْحَيَاءِ قَالَ قُلْنَا يَا رَسُولَ اللّٰهِ إِنَّا نَسْتَحْيِي  وَالْحَمْدُ لِلّٰهِ قَالَ لَيْسَ ذَاكَ وَلَكِنَّ الاِسْتِحْيَاءَ مِنَ اللّٰهِ حَقَّ الْحَيَاءِ أَنْ تَحْفَظَ الرَّأْسَ وَمَا وَعَى وَالْبَطْنَ وَمَا حَوَى وَلْتَذْكُرْ الْمَوْتَ وَالْبِلَى وَمَنْ أَرَادَ الْآخِرَةَ تَرَكَ زِينَةَ الدُّنْيَا فَمَنْ فَعَلَ ذَلِكَ فَقَدْ اسْتَحْيَا مِنَ اللّٰهِ حَقَّ الحَيَاءِ (رواه الترمذي)"),
            Terjemahan(
                content:
                    "“Dari Abdullah bin Mas’ud berkata: Rasulullah saw bersabda: “Malulah pada Allah dengan sebenarnya.” Berkata Ibnu Mas’ud: Kami berkata: Wahai Rasulullah, kami malu, alhamdulillah. Beliau bersabda: “Bukan itu, tetapi malu kepada Allah dengan sebenarnya adalah kau menjaga kepala dan apa yang dipahami dan perut beserta isinya, mengingat kematian dan segala kemusnahan, barangsiapa menginginkan akhirat, ia meninggalkan perhiasan dunia, barangsiapa melakukannya, ia malu kepada Allah dengan sebenarnya.“",
                riwayat: "(H.R. Al-Tirmidzī)."),
            ParagrafWidget(
                content:
                    "   Dari hadis tersebut, Nabi Muhammad Saw. memerintahkan untuk malu kepada Allah Swt. dengan sebenarnya. Maksudnya menjaga seluruh anggota badan dari perbuatan yang dilarang oleh ajaran agama Islam. Kemudian mengingat kematian dan meninggalkan perhiasan dunia."),
            AktivitasWidget(
                activityTitle: "Aktivitas 7.6",
                contentText:
                    "Buatlah dua contoh yang mencerminkan sikap malu dalam kehidupan sehari-hari!"),
            Heading2(title: "4. Zuhud"),
            ParagrafWidget(
                content:
                    "Zuhud secara bahasa berarti sesuatu yang sedikit, tidak tertarik terhadap sesuatu dan meninggalkannya. Jadi, zuhud berarti meninggalkan dari kesenangan dunia untuk lebih mementingkan ibadah. Orang yang melakukan zuhud disebut dengan zāhid."),
            ParagrafWidget(
                content:
                    "   Dalam kaitannya dunia, zuhud diartikan meninggalkan dunia dan menganggap dunia adalah hal yang hina. Meskipun demikian perlu diingat, perilaku zuhud bukan berarti tidak memperhatikan urusan duniawi, atau bukan berarti tidak memiliki harta dan mengasingkan diri dari dunia. Para ulama menjelaskan bahwa hal tersebut bukanlah maksud dari zuhud."),
            ParagrafWidget(
                content:
                    "   Menurut Abu Sulaiman ad-Darani, zuhud adalah meninggalkan sesuatu yang dapat menyibukkan diri kita sehingga melalaikan Allah. Dengan kata lain menurut Abu Said bin al-A’rabi dari para gurunya, zuhud adalah mengeluarkan kemuliaan harta dari dalam hati kita, maksudnya harta yang dimiliki tidak menjadikan hati ini jauh dan lalai dari Allah. Bahkan ulama lain menambahkan bahwa harta yang kita miliki harusnya dapat menjadi sarana/alat mendekatkan diri kepada Allah."),
            ParagrafWidget(
                content:
                    "   Raghib al-Ishfahani menjelaskan bahwa zuhud bukan berarti meninggalkan usaha untuk menghasilkan sesuatu, seperti yang banyak disalahpahami orang, karena yang seperti itu mengantarkan pada kerusakan alam dan bertentangan dengan takdir dan peraturan Allah. Menurutnya, orang yang zuhud terhadap dunia adalah orang yang cinta kepada akhirat, sehingga ia menjadikan dunia untuk akhirat. Yakni menjadikan harta duniawi untuk kebutuhan dan keperluan akhirat. Sehingga harta yang dimiliki dapat mengantarkan kebahagiaan dan manfaat baginya di akhirat. "),
            ParagrafWidget(
                content:
                    "   Haidar Bagir mengutip Imam al-Ghazali dalam kitabnya Ihya 'Ulumuddin diriwayatkan bahwa suatu saat Rasulullah sedang berjalan bersama para sahabat sampai di suatu tempat Rasulullah menunjuk kepada seonggokan benda. Kemudian Rasulullah bertanya apa itu? Kemudian sahabat menjawab, ”Bangkai anjing ya Rasul.” Rasul bertanya kembali kepada sahabat, “Bagaimana sikap kalian terhadapnya?” Kami merasa jijik jawab para sahabat. Maka Rasulullah pun bersabda, ”Begitulah seharusnya Sikap seorang mukmin terhadap dunia.”"),
            ParagrafWidget(
                content:
                    "   Anjuran zuhud dalam bertasawuf dilatarbelakangi oleh keyakinan kalangan sufi bahwa manusia cenderung terlalu menikmati hal-hal yang bersifat keduniaan yang mubah. Sehingga akhirnya dapat menyebabkan manusia terjerumus ke sikap berlebihan sebagaimana penjelasan sebelumnya."),
            ParagrafWidget(
                content:
                    "   Lebih lanjut Rasul juga menyebutkan salah satu bahaya seseorang yang tidak berlaku zuhud, yaitu dapat dijangkiti penyakit wahn, sebagaimana sabda beliau:"),
            QuranWidget(
                arab:
                    "عَنْ ثَوْبَانَ قَالَ : قَالَ رَسُولُ اللَّهِ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ يُوشِكُ الْأُمَمُ أَنْ تَدَاعَى عَلَيْكُمْ كَمَا تَدَاعَى الْأَكَلَةُ إِلَى قَصْعَتِهَا فَقَالَ قَائِلٌ وَمِنْ قِلَّةٍ نَحْنُ يَوْمَئِذٍ قَالَ بَلْ أَنْتُمْ يَوْمَئِذٍ كَثِيرٌ وَلَكِنَّكُمْ غُثَاءٌ كَغُثَاءِ السَّيْلِ إوَلَيَنْزَعَنَّ اللّٰهُ مِنْ صُدُورِ عَدُوِّكُمْ الْمَهَابَةَ مِنْكُمْ وَلَيَقْذِفَنَّ اللّٰهُ فِي قُلُوبِكُمُ الْوَهْنَ فَقَالَ قَائِلٌ يَا رَسُولَ اللهِ وَمَا الْوَهْنُ قَالَ حُبُّ الدُّنْيَا وَكَرَاهِيَةُ الْمَوْتِ (رواه ابو داود)"),
            Terjemahan(
                content:
                    "“Dari Tsauban, ia berkata,”Rasulullah saw bersabda: “Hampir-hampir bangsa-bangsa emperebutkan kalian (umat Islam), layaknya memperebutkan makanan yang berada di mangkuk.” Seorang laki-laki berkata, “Apakah kami waktu itu berjumlah sedikit?” beliau menjawab: “tidak, bahkan jumlah kalian pada waktu itu sangat banyak, namun kalian seperti buih di genangan air. Sungguh Allah akan mencabut rasa takut kepada kalian, dan akan menanamkan ke dalam hati kalian al-wahn.” Seseorang lalu berkata, “Wahai Rasulullah, apa itu al-wahn?” beliau menjawab: “Cinta dunia dan takut mati.”",
                riwayat: "(H.R. Abu Dāwud)"),
            ParagrafWidget(
                content:
                    "   Dalam Islam, cinta dunia bukan berarti meninggalkan harta duniawi. Imam Ghazali dalam Kitab Ihya’ ‘Ulumudin menjelaskan bahwa zuhud bukan berarti meninggalkan harta duniawi. Perilaku zuhud adalah seseorang mampu mendapatkan/menikmati dunia tanpa menjadikan dirinya hina, tanpa menjadikan nama baiknya buruk, tanpa mengalahkan kebutuhan rohani dan tanpa menjadikannya jauh dari Allah."),
            ParagrafWidget(
                content:
                    "   Dalam hadis Nabi Muhammad Saw. yang diriwayatkan oleh Abu Dzar al-Ghifari disebutkan:"),
            QuranWidget(
                arab:
                    "عَنْ أَبِي دَرٍّ عَنِ النَّبِيِّ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ قَالَ الزَّهَادَةُ فِي الدُّنْيَا لَيْسَتْ بِتَحْرِيْمِ الْحَلَالِ وَلَا إِضَاعَةِ الْمَالِ وَلَكِنَّ الزَّهَادَةَ فِي الدُّنْيَا أَنْ لَا تَكُوْنَ بِمَا فِيْ يَدَيْكَ أَوْثَقَ مِمَّا فِيْ يَدِ اللّٰهِ وَأَنْ تَكُوْنَ فِيْ ثَوَابِ الْمُصِيْبَةِ إِذَا أَنْتَ أُصِبْتَ بِهَا أَرْغَبَ فِيْهَا لَوْ أَنَّهَا أُبْقِيَتْ لَكَ (رواه الترمذي)"),
            Terjemahan(
                content:
                    "“Dari Abu Dzar al-Ghifari dari Nabi saw bersabda: zuhud terhadap dunia bukan berarti mengharamkan yang halal dan menyia-nyiakan harta. Tetapi zuhud terhadap dunia adalah engkau lebih yakin terhadap kekuasaan Allah daripada apa yang ada di tanganmu. Zuhud juga berarti ketika engkau tertimpa musibah, engkau lebih mengharap mendapat pahala dari musibah itu daripada dikembalikannya harta itu kepadamu.”",
                riwayat: "(H.R. Al-Tirmidzī)."),
            ParagrafWidget(
                content:
                    "   Dengan demikian, zuhud bukan dilihat dari pakaian atau harta apa yang dimiliki seseorang, tetapi terkait cara memperoleh harta dunia dan menyikapi harta tersebut sesuai tuntunan agama, seperti mencari harta secara halal, harta yang dimiliki tidak menjadikan seseorang sombong dan jauh dari Allah."),
            ParagrafWidget(
                content:
                    "   Zuhud terhadap dunia sebagaimana yang diamalkan Rasulullah Saw. dan para sahabat bukanlah mengharamkan hal-hal yang baik dan mengabaikan harta. Selain itu orang yang zuhud tidak selalu identik dengan berpakaian yang kumal penuh tambalan. Zuhud juga bukan duduk bersantai-santai di rumah menunggu sedekah, karena sesungguhnya amal, usaha, dan mencari nafkah yang halal adalah ibadah yang akan mendekatkan seorang hamba kepada Allah. Sehingga harta tidak memperbudak dirinya."),
            AktivitasWidget(
                activityTitle: "Aktivitas 7.6",
                contentText:
                    "Buatlah dua contoh yang mencerminkan sikap zuhud dalam kehidupan sehari-hari!"),
            HPenerapan(),
            ParagrafWidget(
                content:
                    "Alhamdulilah kalian sudah selesai belajar bab manisnya iman dengan menjaga kehormatan, ikhlas, malu, dan zuhud. Setelah mempelajari materi ini, kalian dapat menerapkan karakter dalam kehidupan sehari-hari sebagai berikut:"),
            TabelPenerapanKarakterWidget(idlist: tabelPenKarakter7),
            IReflek(),
            Refleksi(
                content:
                    "Setelah mempelajari materi manisnya Iman dengan menjaga kehormatan, ikhlas, malu, dan zuhud, manfaat apa saja yang kalian rasakan dalam kehidupan sehari-hari?Tuliskan 3 manfaatnya di bawah ini!\n1. ……………………………………………………………………………………………………\n2. ……………………………………………………………………………………………………..\n3. ……………………………………………………………………………………………………..\n"),
            JRangkum(),
            ParagrafList(idlist: jrangkuman),
            KPenilai(),
            Heading2(title: "1. Penilaian Sikap"),
            Text("Petunjuk Mengerjakan",
                style: h2.copyWith(fontWeight: FontWeight.w600)),
            ParagrafWidget(
                content:
                    "Jawablah pernyataan di bawah sesuai dengan kondisi yang ada dengan mencentang (√) di kolom!"),
            TabelPanilaianSikapAtas(idlist: tabelPenSikap7),
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
              height: 280, // Atur tinggi sesuai kebutuhan
              child: PilihanGandaSoal(daftarSoal: pilihanGanda7),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
                "b. Jawablah pertanyaan-pertanyaan di bawah ini dengan jelas dan tepat!",
                style: h2.copyWith(fontWeight: FontWeight.w600)),
            ParagrafList(idlist: essay7),
            Heading3(title: "3. Penilaian Keterampilan"),
            ParagrafList(idlist: essay72),
            const IPengaya(),
            ParagrafWidget(
                content:
                    "Setelah kalian memahami tentang cabang iman, yaitu: menjaga kehormatan, ikhlas, malu, dan zuhud, kalian dapat. Kalian dapat menambah wawasan kalian dengan membaca buku/kitab di bawah ini:"),
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
                    TextSpan(text: "Basalamah, Rima Nasir. "),
                    TextSpan(
                        text:
                            "Al-Haya’ Sebagai Solusi bagi Permasalahan Moral Bangsa. Jurnal Raushan Fikr Vol. 3 No. 2.",
                        style: regular_paragraf.copyWith(
                            fontStyle: FontStyle.italic)),
                    TextSpan(text: " Januari 2014."),
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
                    TextSpan(text: "Al-Ghazali, Abi Hamid. t.th. "),
                    TextSpan(
                        text: "Ihya’ ‘Ulumudiin, ",
                        style: regular_paragraf.copyWith(
                            fontStyle: FontStyle.italic)),
                    TextSpan(text: "Kairo: Dar al-Syu’b "),
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
                    TextSpan(text: "Al-Muhasibi, Al-Harits. 2013. "),
                    TextSpan(
                        text: "Belajar Ikhlas. ",
                        style: regular_paragraf.copyWith(
                            fontStyle: FontStyle.italic)),
                    TextSpan(text: " Jakarta: Zaman."),
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
                    TextSpan(text: "Nawawi, Syaikh Muhammad. t.th. "),
                    TextSpan(
                        text: "Qami’ut Tughyan ala Manzumat Shu’b al-Iman.  ",
                        style: regular_paragraf.copyWith(
                            fontStyle: FontStyle.italic)),
                    TextSpan(text: "Indonesia: al-Haramain."),
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
                    TextSpan(text: "Nasution, Kasron. "),
                    TextSpan(
                        text:
                            "Konsistensi Taubat dan Ikhlas dalam Menjalankan Hidup Sebagai Hamba Allah.  ",
                        style: regular_paragraf.copyWith(
                            fontStyle: FontStyle.italic)),
                    TextSpan(
                        text:
                            "Jurnal ITTIHAD, Vol. III, No.1 Januari–Juni 2019"),
                  ]),
                  textAlign: TextAlign.justify,
                ))
              ],
            ),
          ]),
    );
  }
}
