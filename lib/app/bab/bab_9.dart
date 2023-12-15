import 'package:book/app/widgets/aktivitas_widget.dart';
import 'package:book/app/widgets/app_bar_widget.dart';
import 'package:book/app/widgets/heading_2.dart';
import 'package:book/app/widgets/heading_3.dart';
import 'package:book/app/widgets/paragraf_italic.dart';
import 'package:book/app/widgets/paragraf_list_abjad.dart';
import 'package:book/app/widgets/paragraf_widget.dart';
import 'package:book/app/widgets/terjemahan_widget.dart';
import 'package:flutter/material.dart';

import '../data/bab_2_model/tadabbur_model.dart';
import '../data/bab_9_model/list_paragraf_9.dart';
import '../data/kata_kunci.dart';
import '../modules/SideMenu/views/side_menu_view.dart';
import '../shared/constant.dart';
import '../widgets/baground_orange_kata_kunci.dart';
import '../widgets/list_paragraf.dart';
import '../widgets/sampul_bab.dart';
import '../widgets/sub_bab.dart';
import '../widgets/tadabbur.dart';

class Bab9 extends StatelessWidget {
  const Bab9({super.key});

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
            DAyo(),
            ParagrafWidget(
                content:
                    "Sebelum memulai pembelajaran ini, silahkan kalian tadarus al-Qur’an. Hal ini dapat menjadi pembiasaan kalian untuk membaca al-Qur’an setiap hari. Tujuannya, menguatkan literasi sekaligus berdoa kepada Allah Swt., semoga dalam setiap langkah kalian mendapatkan bimbingan, taufiq, dan ridha-Nya. Āmīn Yā Rabbal Ālamīn. "),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
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
              
                ],
              ), //
            ),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //

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
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            GWawasan(),
            Heading2(title: "1. Pengertian Pernikahan"),
            ParagrafWidget(
                content:
                    "Imam Ahmad bin Umar Asy-Syatiri dalam Kitab al-Yaqut al-Nafis (2011: 215) mendefinisikan nikah secara bahasa berarti menggabungkan dan berkumpul. Sedangkan menurut istilah syariat, nikah ialah suatu akad yang menjadikan bolehnya seorang laki-laki dan perempuan melakukan hubungan suami dan istri. "),
            ParagrafWidget(
                content:
                    "   Sedangkan dalam Undang-undang Nomor 1 Tahun 1974 menjelaskan bahwa pernikahan adalah ikatan lahir batin antara seorang pria dan seorang wanita sebagai suami istri dengan tujuan membentuk keluarga atau rumah tangga yang bahagia dan kekal berdasarkan Ketuhanan Yang Maha Esa."),
            ParagrafWidget(
                content:
                    "Dengan kata lain pernikahan adalah ikatan lahir batin antara seorang laki-laki dan perempuan untuk hidup bersama dalam suatu rumah tangga melalui akad yang dilakukan menurut aturan hukum syariat Islam yang mengakibatkan timbulnya hak dan kewajiban di antara masing-masing pihak."),
            Heading2(title: "2. Dalil Naqli tentang Pernikahan"),
            ParagrafWidget(
                content:
                    "Adapun dalil naqli tentang pernikahan dalam Q.S. al-Rūm/30: 21"),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            Terjemahan(
                content:
                    " “Dan di antara tanda-tanda kekuasaan-Nya ialah Dia menciptakan untukmu istri-istri dari jenismu sendiri, supaya kamu cenderung dan merasa tenteram kepadanya, dan dijadikan-Nya diantaramu rasa kasih dan sayang. Sesungguhnya pada yang demikian itu benar-benar terdapat tanda-tanda bagi kaum yang berfikir.”",
                riwayat: " (Q.S. al-Rūm/30: 21)."),
            ParagrafWidget(
                content:
                    "   Sedangkan Nabi Muhammad Saw. tentang anjuran menikah bagi yang sudah mampu termaktub dalam Kitab al-Jami’ al-Shahih, juz 3 Nomor 5066 disebutkan:"),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            Terjemahan(
                content:
                    "Dari ‘Abdurrahman bin Yazid, ia berkata, aku bersama ‘Alqamah dan Aswad menemui ‘Abdullah, lalu ‘Abdullah berkata kami bersama Nabi Muhammad saw sebagai pemuda yang tidak mempunyai apa-apa, maka Rasulullah saw berkata kepada kami ”Hai para pemuda, barang siapa di antara kamu telah sanggup menikah, maka nikahlah. Karena nikah itu dapat menundukkan mata dan memelihara faraj (kelamin) dan barang siapa tidak sanggup maka hendaklah berpuasa karena puasa itu dapat menjagamu (melemahkan syahwat).” ",
                riwayat: " (HR. Al-Bukhāri)"),

            Heading2(title: "3. Tujuan Pernikahan"),
            ParagrafWidget(
                content:
                    "Seseorang harus memiliki tujuan yang baik ketika akan melakukan pernikahan. Karena tujuan inilah yang akan memengaruhi kehidupan setelah menikah. Tujuan menikah yang baik ialah sebagai berikut:"),
            ParagrafList(idlist: tujuanPernikahan),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            Terjemahan(
                content:
                    " Dari Anas bin Malik, ada beberapa sahabat Rasulullah saw berkata; saya tidak akan menikah, sebagian lagi berkata; saya akan selalu shalat dan tidak tidur, sebagian lagi berkata; saya akan terus berpuasa dan tidak berbuka. Berita ini sampai kepada Nabi saw, hingga (Beliau saw) bersabda, “Apa alasannya ada yang berkata begini-begitu? Padahal saya berpuasa dan berbuka, aku shalat dan tidur, dan aku juga menikahi perempuan, dan barangsiapa yang membenci sunnahku maka ia tidak termasuk golonganku.”",
                riwayat: "(HR. Muslim)"),

            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
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
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            Terjemahan(
                content:
                    "Dari Abu Hurairah ra, dari Nabi saw, beliau bersabda: “Wanita itu dinikahi karena empat hal: karena hartanya, karena keturunannya, karena kecantikannya dan karena agamanya. Maka pilihlah karena agamanya, niscaya kamu akan beruntung.",
                riwayat: "(HR. Al-Bukhāri)"),

            ParagrafWidget(
                content:
                    "   Dari hadis tersebut memberikan bimbingan dalam memilih pasangan mempertimbangkan empat hal. Hanya saja, di akhir hadis tersebut disebutkan “Pilihlah karena agamanya, niscaya kamu akan beruntung.” Ini adalah tuntunan Nabi Muhammad Saw. agar dari keempat pertimbangan tersebut agar memilih karena agamanya. Mengapa memilih agama? Karena dengan agama, kebahagiaan yang sejati akan dapat terwujud, salah satunya ketika agamanya kuat, maka pasangan suami atau istri akan taat kepada Allah dan dapat memelihara dirinya. Dalam Q.S. al-Nisa’/4: 34, dijelaskan: "),
            Terjemahan(
                content:
                    "“Sebab itu maka wanita yang shalihah, ialah yang taat kepada Allah lagi memelihara diri ketika suaminya tidak ada, oleh karena Allah telah memelihara (mereka).”",
                riwayat: " (Q.S. al-Nisa’/4: 34)"),
            ParagrafWidget(
                content:
                    "   Selain itu untuk wanita shalihah merupakan sebaik-baiknya perhiasan dunia bagi suaminya. Hal ini dijelaskan dalam kitab Shahih Muslim, nomor 1467, Nabi Muhammad Saw. bersabda:"),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            Terjemahan(
                content:
                    "Dari Abdullah bin ‘Amr bahwasannya Rasulullah Saw. bersabda: “Dunia adalah perhiasan dan sebaik-baik perhiasan adalah wanita shalihah.” ",
                riwayat: " (HR. Muslim)"),
            Heading2(title: "6. Ketentuan Pernikahan"),
            Heading3(title: "a. Rukun Pernikahan dan Syarat Pernikahan"),
            ParagrafWidget(
                content:
                    "Rukun ialah hal yang harus ada ketika pelaksanaan suatu perbuatan. Sedangkan syarat dalam fikih merupakan hal yang harus terpenuhi sebelum melakukan suatu perbuatan tertentu. Rukun menikah ada lima, yaitu: calon suami, calon Istri, wali, dua orang saksi, dan sighat (Ijab dan Qabul). Adapun masing-masing akan dijelaskan sebagai berikut."),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            Heading2(title: "b. Orang-orang yang tidak boleh dinikahi"),
            ParagrafWidget(
                content:
                    "Adapun orang-orang yang tidak boleh dinikahi dapat dilihat dalam tabel berikut ini."),
            Heading3(title: "c. Pernikahan yang tidak sah"),
            ParagrafWidget(
                content:
                    "Di antara pernikahan yang tidak sah dan dilarang oleh Rasulullah Saw. adalah sebagai berikut. "),

            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            ParagrafWidget(
                content:
                    "   Adapun siapa saja mahram yang dilarang dinikahi terdapat dalam Q.S. al-Nisa’/4:22-23 sebagaimana telah disebutkan dalam pembahasan sebelumnya dalam tabel orang-orang yang haram dinikahi."),
            Heading2(title: "d. Hak dan Kewajiban Suami Istri"),
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
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            Terjemahan(
                content:
                    "Berikanlah maskawin kepada perempuan-perempuan yang kamu nikahi sebagai pemberian dengan penuh kerelaan…",
                riwayat: " (Q.S. al-Nisa’/4: 4)"),
            ParagrafWidget(
                content: "Dalam hadis pun Nabi Muhammad Saw. menjelaskan:"),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
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
            ParagrafWidget(content: "Nabi Muhammad Saw. pernah bersabda:")
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            ,
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
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            Terjemahan(
                content:
                    "Diriwayatkan dari ‘Aisyah ra, Rasulullah saw bersabda, siarkanlah pernikahan ini dan lakukanlah di masjid-masjid dan mainkanlah dengan rebana. ",
                riwayat: "(HR. Al-Tirmidzī)"),
            Heading2(title: "7. Talak dan Iddah"),
            Heading3(title: "a. Talak"),
            ParagrafWidget(
                content:
                    "Talak dari segi bahasa artinya melepaskan ikatan. Maksudnya di sini ialah melepaskan ikatan pernikahan. Hukum melakukan talak ialah makruh. Sebagaimana hadis Rasul Muhammad Saw."),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
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

            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            ParagrafWidget(
                content:
                    "   Sedangkan untuk masa iddah cerai hidup ialah tiga kali suci. Jika perempuan yang diceraikan sudah tidak mengalami haid, maka ‘iddahnya tiga bulan. Telah difirmankan Allah dalam al-Qur’an:"),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            Terjemahan(
                content:
                    "Dan perempuan-perempuan yang diceraikan, maka mereka menunggu menahan dirinya (masa ’iddah) 3 kali masa suci…”",
                riwayat: "(Q.S. al-Baqarah/2: 228)"),

            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            Terjemahan(
                content:
                    "Dan apabila perempuan-perempuan yang telah memasuki masa tidak haid, jika kalian ragu maka masa ‘iddah mereka adalah tiga bulan…",
                riwayat: "(Q.S. al-Thalaq/65: 4)"),

            Heading2(title: "8. Rujuk"),
            ParagrafWidget(
                content:
                    "Kata rujuk dalam bahasa Arab disebut dengan raj’ah, artinya kembali. Suami yang rujuk dengan istrinya, berarti ia telah kembali pada istrinya. Sedangkan secara istilah sebagaimana dalam Kitab Mughni al-Muhtaj, rujuk adalah mengembalikan istri yang masih dalam masa ‘iddah talak raj’i bukan ba’in. Dengan kata lain rujuk hanya dapat dilakukan pada saat istri dijatuhkan talak raj’i (bukan ba’in) dan selama pada masa ‘iddah."),
            ParagrafWidget(content: "Dalam al-Qur’an, Allah Swt. berfirman:"),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            Terjemahan(
                content:
                    "“Apabila kamu menceraikan istrimu, hingga (hampir) berakhir masa idahnya, tahanlah (rujuk) mereka dengan cara yang patut atau ceraikanlah mereka dengan cara yang patut (pula). Janganlah kamu menahan (rujuk) mereka untuk memberi kemudaratan sehingga kamu melampaui batas.”",
                riwayat: "(Q.S. al-Baqarah/2: 231)"),

            ParagrafWidget(
                content:
                    "   Dalam ayat lain Allah Swt. menjelaskan tentang kebolehan rujuk jika masih talak satu dan dua. Sebagaimana ayat berikut ini:"),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
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
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            IReflek(),
            //
            //
            //
            //
            //
            //
            //

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
            Heading2(title: "1. Penilaian Sikap "),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            Heading2(title: "3. Penilaian Keterampilan"),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            const IPengaya(),
            ParagrafWidget(
                content:
                    "Bagi yang sudah mencapai kompetensi minimal, kalian dapat mendalami lebih lanjut buku/kitab pengayaan di bawah ini:")
          ]),
    );
  }
}
