import 'package:book/app/data/bab_2_model/tadabbur_model.dart';
import 'package:book/app/shared/constant.dart';
import 'package:book/app/widgets/aktivitas_widget.dart';
import 'package:book/app/widgets/app_bar_widget.dart';
import 'package:book/app/widgets/heading_2.dart';
import 'package:book/app/widgets/heading_3.dart';
import 'package:book/app/widgets/paragraf_italic.dart';
import 'package:book/app/widgets/paragraf_list_abjad.dart';
import 'package:book/app/widgets/paragraf_widget.dart';
import 'package:book/app/widgets/tadabbur.dart';
import 'package:book/app/widgets/terjemahan_widget.dart';
import 'package:flutter/material.dart';

import '../data/bab_8_model/list_paragraf_8.dart';
import '../data/kata_kunci.dart';
import '../modules/SideMenu/views/side_menu_view.dart';
import '../widgets/baground_orange_kata_kunci.dart';
import '../widgets/list_paragraf.dart';
import '../widgets/sampul_bab.dart';
import '../widgets/sub_bab.dart';

class Bab8 extends StatelessWidget {
  const Bab8({super.key});

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
          DAyo(),
          ParagrafWidget(
              content:
                  "Sebelum memulai pembelajaran ini, silahkan kalian tadarus al-Qur’an. Hal ini dapat menjadi pembiasaan kalian untuk membaca al-Qur’an setiap hari. Tujuannya, menguatkan literasi sekaligus berdoa kepada Allah Swt., semoga dalam setiap langkah kalian mendapatkan bimbingan, taufiq, dan ridha-Nya. Āmīn Yā Rabbal Ālamīn."),
          //
          //
          //
          //
          //
          //
          //
          //

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
                  "   Secara bahasa, adab artinya adat istiadat; ia menunjukkan suatu kebiasaan, etiket, pola perilaku yang ditiru dari orang-orang yang dianggap sebagai model. Secara istilah adab adalah kebiasaan dan aturan tingkah laku praktis yang mempunyai muatan nilai baik yang diwariskan dari satu generasi ke generasi berikutnya"),
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
                  "   Meskipun, zaman Nabi Muhammad Saw. belum ada media sosial, tetapi rambu-rambu dalam berinteraksinya diajarkan dalam Al-Qur’an dan Hadis. Di antara dalil naqli tentang menggunakan media sosial terdapat dalam Q.S. Al-Hujurat/49: 6 berikut ini."),
          //
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
                  "Wahai orang-orang yang beriman! Jika seseorang yang fasik datang kepadamu membawa suatu berita, maka telitilah kebenarannya, agar kalian tidak mencelakakan suatu kaum karena kebodohan (kecerobohan), yang akhirnya kamu menyesali perbuatanmu itu.",
              riwayat: " (Q.S. Al-Hujurāt/49:6)."),
          ParagrafWidget(
              content:
                  "   Dari ayat di atas dapat diketahui bahwa ketika menerima sebuah informasi termasuk di dalamnya mendapatkan informasi dari media sosial, maka perlu dicek kebenaran informasi yang kalian terima. Pengecekan informasi tersebut bisa menanyakan ke pemberi informasi atau mengecek ke sumber-sumber resmi yang bisa dipertanggungjawabkan. Apabila kalian mendapatkan informasi tanpa diteliti kebenarannya, seperti yang dijelaskan Q.S. Al-Hujurat/49: 6 agar kamu tidak mencelakakan suatu kaum karena kebodohannya yang akhirnya kalian akan menyesali perbuatan yang telah dilakukan."),

          ParagrafWidget(
              content:
                  "   Sedangkan dalam hadis Nabi Muhammad Saw. memberikan arahan dalam menggunakan media sosial sebagai berikut."),
          //
          //
          //
          //
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
          //
          //
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
          //
          //
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
                  "Dari Abi Musa ra., dari Nabi Saw. bersabda: perumpamaan teman duduk yang baik dengan teman duduk yang buruk adalah seperti penjual minyak misik (yang wangi) dan seorang pandai besi. Penjual minyak misik terkadang ia menawarkan minyaknya dan terkadang ia akan menjualnya kepadamu dan terkadang kamu yang akan mendapatkan aroma wanginya. Adapun pandai besi adakalanya ia akan membakar pakaianmu dan adakalanya kamu akan mendapatkan bau yang tidak sedap.",
              riwayat: " (H.R. Al-Bukhāri)"),
          Heading3(
              title:
                  "c. Meneliti fakta atau kebenaran informasi yang diterima"),
          ParagrafWidget(
              content:
                  "   Dalam berinteraksi media sosial, kalian pasti pernah menerima informasi dari teman, baik berupa teks/tulisan, foto atau video. Terkadang setelah menerima informasi tersebut, kalian ingin mengirim kembali informasi tersebut ke berbagai grup lain. Sebelum mengirim, teliti kebenaran beritanya. "),
          ParagrafWidget(
              content:
                  "   Meneliti kebenaran berita yang didapat dari media sosial merupakan hal yang paling utama. Saring sebelum sharing ke media sosial. Kebenaran ini akan menjadikan apa yang kalian sampaikan di medsos bisa dipertanggungjawabkan baik di dunia dan akhirat. Hal ini sebagaimana dijelaskan dalam Q.S. Al-Hujurat/49: 6 pada halaman sebelumnya."),
          Heading3(
              title:
                  "d. Menyampaikan informasi tanpa rekayasa atau manipulasi"),
          ParagrafWidget(
              content:
                  "   Berita bohong atau hoax biasa dimulai dari mengedit, merekayasa dan memanipulasi informasi yang ada di dalam sebuah berita. Padahal hal ini dilarang dalam Islam. Maka sebagai muslim yang baik, hendaknya tidak merekayasa dan memanipulasi informasi. Hal ini sebagaimana yang dijelaskan dalam Q.S. Al-Hajj/22: 30 di bawah ini:"),
          //
          //
          //
          //
          //
          //
          //
          //
          ParagrafItalic(
              content: "“Jauhilah olehmu perkataan-perkataan dusta.”"),
          Heading3(title: "e. Mengajak kepada kebaikan"),
          ParagrafWidget(
              content:
                  "Media sosial tidak hanya media untuk bersilaturrahmi dengan berbagai kalangan. Tetapi juga dapat dijadikan sebagai media mengajak kepada kebaikan secara lebih luas. Terlebih lagi data Kementerian Komunikasi dan Informatika per tanggal 5 Mei 2020 ada 1.401 konten hoaks dan disinformasi tentang Covid-19 yang beredar di masyarakat. Sedangkan dalam ujaran kebencian, data dari media tempo.co tanggal 20 November 2020, bahwa salah satu media sosial terbesar dari sepuluh ribu penayangan konten sepanjang bulan Juli-September 2020, terdapat sepuluh sampai sebelas unggahan yang mengandung ujaran kebencian. Dari data tersebut, seharusnya media sosial menjadi ladang dakwah kalian untuk menyeru kebaikan dan menebarkan perdamaian. Sehingga orang-orang akan tetap tergerak hatinya untuk mengikuti kebaikan. Nabi Muhammad Saw. bersabda:"),
          //
          //
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
          //
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
                  "“Serulah (manusia) kepada jalan Tuhan-mu dengan hikmah dan pelajaran yang baik dan bantahlah mereka dengan cara yang baik. Sesungguhnya Tuhanmu Dialah yang lebih mengetahui tentang siapa yang tersesat dari jalan-Nya dan Dialah yang lebih mengetahui orang-orang yang mendapat petunjuk” ",
              riwayat: "(QS. An-Nahl/16: 125)."),

          Heading3(
              title:
                  "g. Dalam menggunakan media sosial, hindarilah bahasa yang menyinggung atau menyakiti atau menghina orang lain"),
          ParagrafWidget(
              content:
                  "Menggunakan media sosial dengan bahasa yang menyinggung atau menyakiti atau mencaci-maki, atau menghina orang lain dapat menumbuhkan kebencian dan pertikaian dengan orang lain. Dengan kata lain segala bentuk perbuatan buruk harus dihindari dalam berinteraksi baik di dunia nyata ataupun di media sosial, seperti: menghasut, ujaran kebencian, menyebarkan berita bohong, dan acuh-tak acuh. Sebagaimana dijelaskan Nabi Muhammad Saw. dalam hadis berikut ini:"),

          //
          //
          //
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
                  "Dari Abu Hurairah berkata, Rasulullas Saw. bersabda: janganlah kalian semua saling hasad/iri dengki, saling menipu, saling membenci, saling acuh tak acuh, dan janganlah sebagian dari kalian menjual barang yang sudah dijual ke orang lain (sudah ditawar dan akan dibeli orang lain), jadilah kalian semua hamba-hamba Allah yang bersaudara. Seorang muslim adalah saudara bagi muslim yang lainnya, janganlah seorang muslim menzhaliminya, jangan menipunya dan janganlah menghinanya. Taqwa ada di sini, Rasul sambil menunjuk pada dada beliau tiga kali. Cukuplah seseorang dinilai buruk jika ia merendahkan/menghina saudaranya yang muslim. Setiap muslim bagi muslim yang lain haram darahnya, hartanya, dan harga dirinya. ",
              riwayat: "(H.R. Muslim)."),

          Heading3(title: "h. Bersikap Bijak"),

          ParagrafWidget(
              content:
                  "Muslim yang baik tentu mereka yang bijak dalam menggunakan media sosial. Caranya dengan mengedepankan logika dan perasaan ketika berbagi nasihat yang baik ataupun status di medsos. Bijak dalam bermedsos berarti memahami bahwa setiap orang yang menjalin pertemanan di medsos, memiliki latar belakang yang berbeda. Mereka memiliki karakter, pengetahuan, wawasan serta pola pikir yang berbeda-beda, sehingga ketika mengirim informasi ke media sosial harus lebih berhati-hati agar tidak ada yang tersinggung. Tidak hanya itu, termasuk bersikap bijak dalam menggunakan media sosial adalah kalian dapat menjauhkan diri dari segala hal yang tidak bermanfaat. Hal ini merupakan salah satu karakter dari seorang muslim adalah dapat meninggalkan sesuatu yang tidak bermanfaat. Rasulullah saw bersabda:"),
          //
          //
          //
          //
          //
          //
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
                  "Dari Abu Hurairah berkata, Rasulullah Saw. bersabda sebagian dari kebaikan Islam seseorang adalah ia meninggalkan sesuatu yang tidak bermanfaat baginya.",
              riwayat: "(H.R. Al-Tirmidzī)"),
          Heading3(title: "i. Dapat mengambil hikmah (kebaikan)"),
          ParagrafWidget(
              content:
                  "Apa yang ada di media sosial, tidak seluruhnya baik, dan tidak seluruhnya buruk. Dengan kata lain ada yang buruk dan ada yang baik. Pada penjelasan sebelumnya, kalian sebagai muslim diajarkan untuk bisa meninggalkan hal-hal buruk yang tidak memberikan manfaat. Selain itu, karena media sosial juga mengandung banyak kebaikan dan hal-hal positif bagi umat muslim, maka kalian harus selalu bisa mengambil manfaat dan kebaikan dari media sosial. hal ini sudah dianjurkan Rasulullah Saw. sebagaimana dalam hadits berikut ini:"),
          //
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
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          Heading2(title: "6. Hikmah Adab Bermedia Sosial"),
          ParagrafWidget(
              content:
                  "Ada beberapa hikmah yang akan kalian dapatkan apabila mematuhi adab dalam bermedia sosial, yaitu:"),
          ParagrafListAbjad(idlist: hikmahadab),
          HPenerapan(),
          //
          //
          //
          //
          //
          //
          //
          //
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
            child: ParagrafList(idlist: jRanguman8),
          ),
          KPenilai(),
          Heading2(title: "1. Penilaian Diri"),
          //
          //
          //
          //
          //
          //
          //
          //
          //
          Heading2(title: "2. Penilaian Pengetahuan"),
          const IPengaya(),
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
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          Heading2(title: "6. Hikmah Adab Bermedia Sosial"),
          ParagrafWidget(
              content:
                  "Ada beberapa hikmah yang akan kalian dapatkan apabila mematuhi adab dalam bermedia sosial, yaitu:"),
          ParagrafListAbjad(idlist: hikmahAdab),
          HPenerapan(),
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //
          //  IReflek()

          JRangkum(),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: purpleBagroundLight,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ParagrafList(idlist: rangkuman8),
          ),
          KPenilai(),
          Heading2(title: "1. Penilaian Diri"),
          Heading2(title: "2. Penilaian Pengetahuan"),
          Heading2(title: "3. Penilaian Keterampilan"),
          ParagrafListAbjad(idlist: penKet),
          const IPengaya(),
          ParagrafWidget(
              content:
                  "Setelah kalian selesai mempelajari materi adab bermedia sosial, kalian bisa menambah pengetahuan kalian dengan membaca buku-buku dibawah ini: ")
        ],
      ),
    );
  }
}
