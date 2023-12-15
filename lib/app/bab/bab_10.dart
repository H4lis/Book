import 'package:book/app/widgets/aktivitas_widget.dart';
import 'package:book/app/widgets/app_bar_widget.dart';
import 'package:book/app/widgets/heading_2.dart';
import 'package:book/app/widgets/paragraf_italic.dart';
import 'package:book/app/widgets/paragraf_list_abjad.dart';
import 'package:book/app/widgets/paragraf_widget.dart';
import 'package:flutter/material.dart';

import '../data/bab_10_model/list_paragraf_10.dart';
import '../data/bab_2_model/tadabbur_model.dart';
import '../data/kata_kunci.dart';
import '../modules/SideMenu/views/side_menu_view.dart';
import '../shared/constant.dart';
import '../widgets/baground_orange_kata_kunci.dart';
import '../widgets/heading_2_red.dart';
import '../widgets/list_paragraf.dart';
import '../widgets/sampul_bab.dart';
import '../widgets/sub_bab.dart';
import '../widgets/tadabbur.dart';

class Bab10 extends StatelessWidget {
  const Bab10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenuView(),
      appBar: const AppBarWidget(),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            SampulBab(
                title: "Bab 10",
                contentImage: "bab_10",
                description: "Peradaban Islam pada Masa Modern"),
            const ATujuan(),
            ParagrafWidget(
                content: "Dalam bab ini, tujuan pembelajarannya adalah:"),
            ParagrafList(idlist: tujPem10),
            BKata(),
            BagroundOrangeKataKunci(idlist: kataKunciBab10),
            CInfo(),
            Image.asset(
              "assets/images/infografis10.png",
            ),
            DAyo(),
            AktivitasWidget(
                activityTitle: "Aktivitas 10.1",
                contentText:
                    "Sebelum mempelajari bab 10 tentang peradaban Islam pada masa modern, mari membaca Q.S. Al-Hasyr/59: 18-21 di bawah ini bersama-sama dengan tartil!"),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
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
            ParagrafWidget(content: "Amatilah gambar di bawah ini!"),
            Tadabbur(idlist: tadabbur10),
            AktivitasWidget(
                activityTitle: "Aktivitas 10.2",
                contentText:
                    "Bagaimana pendapatmu tentang gambar di atas dihubungkan dengan Peradaban Islam pada Masa Modern?"),
            FKisah(),
            ParagrafWidget(
                content: "Bacalah artikel di bawah ini dengan baik!"),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: bagroundDarkOrange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Center(child: Heading2red(title: "Islam dan Peradaban")),
                  ParagrafWidget(
                      content:
                          "   Islam menampilkan peradaban baru yang esensinya berbeda dengan peradaban sebelumnya. Peradaban yang ditinggalkan Nabi Muhammad misalnya, jelas sangat berbeda dengan peradaban Arab di zaman jahiliyah. Dengan demikian, Islam telah melahirkan revolusi kebudayaan dan peradaban. Meskipun demikian, pengaruh lokal adalah proses alami yang tidak dapat dihindarkan. Akan tetapi, pengaruh ini justru memperkaya peradaban Islam itu sendiri. Contoh: masjid yang dibangun Umar bin Khattab, Dome of the Rock, terletak di Yerusalem, ternyata memiliki arsitektur kombinasi antara Persia dan Romawi."),
                  ParagrafWidget(
                      content:
                          "   Contoh yang lebih dekat lagi dan telah berusia berabad-abad adalah Menara Kudus yang merupakan akulturasi unik persentuhan dua kebudayaan. Menurut Ricklefs, ahli sejarah Islam Jawa menyimpulkan bahwa kehadiran Islam di Jawa sangat diwarnai dengan proses harmonisasi dan tidak mengusik elemen-elemen Hindu-Budha, maka Menara Kudus sesungguhnya sangat relevan jika diangkat sebagai simbol kehidupan masyarakat yang cinta akan hidup berdampingan dalam perbedaan."),
                  ParagrafWidget(
                      content:
                          "   Salah satu yang mengesankan dalam sendi-sendi peradaban Islam adalah pendidikan seumur hidup (life-long education) yang terukir dalam sejarah sekaligus sabda Nabi Muhammad Saw. “Carilah ilmu dari sejak bayi sampai ke liang lahat.” Islam menempatkan ilmu dalam tempat yang khusus dan memberi nilai lebih terhadap ilmu. Saksinya adalah ratusan hadis dan ayat-ayat Al-Qur’an yang berhubungann dengan ilmu. Hal tersebut masih diperkuat lagi dengan fakta sejarah. "),
                  ParagrafWidget(
                      content:
                          "   Contohnya: sepanjang abad ke-12 dan sebagian abad ke-13, karya-karya kaum muslim telah diterjemahkan ke dalam bahasa Latin. Penerjemahan ini memperkaya kurikulum Pendidikan dunia Barat. Tidak hanya itu sarjana-sarjana Eropa belajar diberbagai lembaga pendidikan tinggi dunia Islam dan mentransfer ilmu pengetahuan ke dunia Barat."),
                  ParagrafWidget(
                      content:
                          "   Sejarah peradaban Islam ditandai dengan hubungan yang harmonis dan dialogis antara ilmu dan nonagama. Kedua disiplin ilmu ini ternyata saling melengkapi. Ilmu-ilmu agama berkembang terlebih dahulu dan seolah-olah mengisyaratkan bahwa manusia dan peradabannya harus dilandasi dengan bangunan keagamaan dan keimanan yang kokoh sebelum ilmu-ilmu lain mewarnai dirinya. "),
                  ParagrafItalic(
                      content:
                          "(Ringkasan tulisan Prof. H. Abdurrahman Mas’ud, MA, Ph.D. Kata Pengantar dalam Buku Sejarah Peradaban Islam karya Samsul Munir Amin, Jakarta: AMZAH).")
                ],
              ),
            ),
            AktivitasWidget(
                activityTitle: "Aktivitas 10.3",
                contentText:
                    "Dari tulisan di atas, tulislah tiga kata kunci. Setelah itu jelaskan maksudnya dan bagaimana penerapannya saat sekarang ini?"),
            GWawasan(),
            ParagrafWidget(
                content:
                    "Sebelum membahas peradaban Islam pada masa modern lebih lanjut, alangkah baiknya kalian mengetahui periodisasi secara umum. Hal ini bertujuan bahwa materi ini tidak lepas dari pembahasan sejarah Islam sebelumnya dan kalian akan mempunyai kerangka pikir yang utuh dan integratif. Dalam periodisasi sejarah Islam, Prof. Dr. H. Harun Nasution, pakar studi Islam, membagi menjadi tiga. Apa saja pembagiannya? Silahkan disimak dalam tabel berikut ini!"),
            //
            //
            //
            //
            //
            //
            //
            //
            //
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
                    "Dari periode tersebut, sekarang kalian akan fokus belajar Islam pada masa modern. Penjabaran lebih lanjut, silahkan dipelajari dengan baik di bawah ini."),
            Heading2(title: "1. Kondisi Islam pada Masa Modern"),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
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
                    "   Di antara kemajuannya adalah dengan adanya penemuan mesin uap yang kemudian melahirkan revolusi industri di Eropa semakin memantapkan kemajuannya. Teknologi perkapalan dan militer berkembang pesat. Sehingga Eropa menjadi penguasa lautan dan bebas melakukan kegiatan ekonomi dan perdagangan dari dan ke seluruh dunia, tanpa mendapat hambatan berarti dari lawan-lawan mereka. Bahkan satu demi satu negeri Islam jatuh kekuasaannya sebagai negeri jajahan."),
            ParagrafWidget(
                content:
                    "   Sementara itu pada awal abad ke-18, kerajaan Safawi dan Kerajaan Mughal hancur pada paro kedua abad ke-19 M ditangan Inggris. Kekuatan yang terakhir masih disegani adalah Kerajaan Usmani di Turki. Akan tetapi, pada saat itu terus mengalami kemunduran, sehingga dijuluki sebagai the sick man of Europe (orang sakit dari Eropa). Kelemahan kerajaan-kerajaan Islam itu menyebabkan Eropa dapat menjajah negeri-negeri Islam dengan mudah."),
            ParagrafWidget(
                content:
                    "   Baru pada abad ke-20 M, dunia Islam bangkit memerdekakan negerinya dari penjajah Barat. Padahal pada periode klasik (650-1200M), Islam mengalami masa keemasan. Kondisi ini sangat kontras dengan negaranegara Barat pada masa itu masih berada pada masa kegelapan. Karenanya, pada masa modern ini muncul kesadaran umat Islam terhadap kelemahan dirinya dan adanya dorongan untuk memperoleh kemajuan dalam berbagai bidang, khususnya dalam bidang ilmu pengetahuan dan teknologi."),
            ParagrafWidget(
                content:
                    "   Menyadari kondisi tersebut menjadi spirit kebangkitan dunia Islam dalam bidang ilmu pengetahuan, pendidikan, politik, maupun melawan penjajah. Usaha untuk memulihkan kembali kekuatan Islam dikenal dengan gerakan modernisasi atau pembaruan yang didorong, setidaknya ada tiga faktor. Apa saja faktornya? Silahkan disimak tabel berikut ini."),

            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
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
                    "   Pembaruan di beberapa negara tidak terlepas dari peran tokoh-tokohnya yang akan dibahas dalam bab ini adalah:"),
            ParagrafWidget(
                content:
                    "   1) Muhamammad Ali Pasya; 2) Rifa’ah Baidawi Rafi’at at-Tahtawi, 3) Jamaludin al-Afghani, 4) Muhammad Abduh, 5) Rasyid Ridha, 6) Sultan Mahmud II, 7) Muhammad Iqbal, 8) KH. Ahmad Dahlan, 9) KH. Hasyim Asy’ari. "),
            AktivitasWidget(
                activityTitle: "Aktivitas 10.4",
                contentText:
                    "Sebenarnya tokoh-tokoh Islam pada Masa Modern, selain di atas, masih banyak yang lain. Carilah tiga tokoh Islam yang hidup pada masa abad 18- sekarang yang berpengaruh sampai sekarang!"),

            ParagrafWidget(
                content:
                    "   Dari nama-nama tersebut, bagaimana sosok tokoh tersebut, pemikiran, dan kontribusi bagi peradaban Islam sekarang ini? Silahkan dipelajari uraian materi di bawah ini dengan baik!"),
            Heading2(
              title: "2. Tokoh-Tokoh Islam pada Masa Modern",
            ),
            Heading2red(title: "a. Muhammad Ali Pasya (1765 – 1849 M)"),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
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
                    "Meskipun begitu, Pasya termasuk anak yang cerdas, pemberani, dan gigih dalam bekerja. Karakter ini yang menempa dan mengantarkannya menjadi pemimpin di Mesir. Salah satu jasa besarnya adalah berhasil membebaskan Mesir dari kekuasaan Napoleon dari Perancis. Sehingga Sultan di Turki merestui Muhammad Ali Pasya menjadi wali Mesir. "),
            ParagrafWidget(
                content: "Kemudian pemikiran Muhammad Ali Pasya adalah."),
            ParagrafListAbjad(idlist: AliPasya),
            ParagrafWidget(
                content:
                    "   Inovasi lain yang dilakukan Pasya adalah memasukkan ilmu modern ke dalam kurikulum pendidikan. Pasya mengelompokkan ilmu pengetahuan menjadi lima, yaitu:"),
            ParagrafList(idlist: ilmuP),
            ParagrafWidget(
                content:
                    "   Inovasi yang dilakukan Pasya ini sangat berpengaruh pada perkembangan Mesir pada periode selanjutnya. Di antara pengaruhnya adalah berhasil menjaga stabilitas ekonomi Mesir sehingga berkembang dengan pesat, seperti di Kairo dan Alexandria. Selain itu, dari inovasi tersebut, menjadi landasan munculnya tokoh pembaharuan Islam pada masa berikutnya."),
            Heading2red(
              title: "b. Rifa’ah Baidawi Rafi’at at-Tahtawi (1801 - 1873)",
            ),
            ParagrafWidget(
                content:
                    "Nama lengkapnya adalah Rifa’ah Baidawi Rafi’at at-Tahtawi. Nama panggilannya adalah At-Tahtawi. Saat umur 16 tahun, At-Tahtawi telah menyelesaikan belajarnya di Universitas Al-Azhar Kairo. Setelah itu, At-Tahtawi melanjutkan pendidikan masternya di Egyptian Army Mesir. Kemudian, ia belajar selama lima tahun di Perancis. Selama di Perancis, At-Tahtawi menerjemahkan 12 buku dan risalah. "),
            ParagrafWidget(
                content:
                    "   Setelah menyelesaikan studi di Perancis, At-Tahtawi diangkat menjadi direktur sekolah penerjemahan pada masa pemerintahan Muhamad Ali Pasya. Sekolah penerjemahan berfungsi sebagaimana Baitul Hikmah pada masa kejayaan Dinasti Abasiyah, yaitu sebagai pusat penerjemahan buku-buku dari Eropa ke dalam bahasa Mesir. At-Tahtawi berhasil menerjemahkan sekitar 20 buku berbahasa Perancis dan mengedit puluhan karya terjemahan lainnya."),
            ParagrafWidget(
                content:
                    "Pokok-pokok pemikiran at-Tahtawi dibagi menjadi beberapa bidang, yaitu."),
            ParagrafListAbjad(idlist: pokokpokopemikiran),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            AktivitasWidget(
                activityTitle: "Aktivitas 10.5",
                contentText:
                    "Dari keterangan sosok Muhammad Ali Pasya dan Rifa’ah Baidawi Rafi’at al-Tahtawi di atas, hal-hal apa saja yang cocok untuk mewujudkan Indonesia Emas Tahun 2045!"),
            Heading2red(title: "c. Jamaludin Al-Afghani (1838 – 1897 M)"),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
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
                    "   Jamaludin merupakan seorang yang cerdas. Pada usia yang masih muda, yakni 18 tahun, ia sudah menguasai berbagai disiplin keilmuan, seperti: ilmu agama, filsafat, hukum, sejarah, metafisika, kedokteran, sains, astronomi, dan astrologi. Dalam kariernya, Jamaludin pernah menjabat sebagai perdana menteri di Afghanistan. Tetapi, saat itu Inggris mencampuri masalah politik dalam negeri, Jamaludin meninggalkan Kabul, dan pergi ke India. Di India, ternyata juga sudah diintervensi Inggris sehingga ia berpindah ke Mesir pada tahun 1871 M."),
            ParagrafWidget(
                content:
                    "Adapun pokok-pokok pemikiran Jamaludin al-Afghani adalah:"),
            ParagrafListAbjad(idlist: pemikiranJamaludin),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            Heading2red(title: "d. Muhammad Abduh (1849 - 1905 M)"),
            ParagrafWidget(
                content:
                    "Sedangkan ide pokok pikiran Muhammad Abduh adalah sebagai berikut."),
            ParagrafListAbjad(idlist: pikiranAbduh),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            AktivitasWidget(
                activityTitle: "Aktivitas 10.6",
                contentText:
                    "Dari penjelasan sosok Jamaludin al-Afghani dan Muhammad Abduh di atas, apa persamaan dan perbedaan pemikirannya?"),
            Heading2red(title: "e. Rasyid Ridha (1865 - 1935 M)"),
            ParagrafWidget(
                content:
                    "Nama lengkapnya adalah Muhammad Rasyid bin Ali Ridha bin Syamsudin bin Baha’uddin al-Qalmuni al-Husaini. Nama populernya adalah Rasyid Ridha. Ia dilahirkan di Qalamun, yang tidak jauh dari Kota Tripoli Lebanon pada tanggal 23 September 1865 M. Ridha termasuk anak yang rajin. Pada saat itu, anak-anak seusianya asyik main, ia justru menghabiskan waktunya untuk membaca buku. Setelah menyelesaikan pendidikan di Qalamun, ia melanjutkan belajarnya di Madrasah al-Wathaniyah al-Islamiyah (Sekolah Nasional Islam) di Tripol."),
            ParagrafWidget(
                content:
                    "   Latar belakang pemikiran Ridha adalah tuntutan zaman yang menuntut adanya perubahan. Pada masa itu kondisi umat Islam berada pada posisi yang sangat buruk, kemunduran di berbagai bidang. Dalam pemikirannya, Ridha terpengaruh dengan pemikiran dari Jamaludin al-Afghani dan Muhammad Abduh. Setelah Jamaludin alAfghani wafat, Ridha ingin sekali bertemu Muhammad Abduh untuk belajar langsung dan mengetahui pandangannya tentang reformasi Islam. Kemudian, pada tahun 1897, Ridha bertemu dengan Muhammad Abduh. Atas persetujuan Abduh, Ridha menerbitkan majalah al-Manar. Tujuan penerbitan tersebut adalah untuk menjadi corong bagi gerakan pembaruan Islam dalam memajukan umat Islam dan membebaskan dari belenggu penjajah. "),
            ParagrafWidget(
                content:
                    "Adapun pokok-pokok pemikiran Rasyid Ridha adalah sebagai berikut."),
            ParagrafListAbjad(idlist: pemikiranRasyid),
            //
            //
            //
            //
            //
            //
            //
            //
            Heading2red(title: "f. Muhammad Iqbal (1877 - 1938 M)"),
            ParagrafWidget(
                content:
                    "Muhammad Iqbal lahir di Kota Sialkot di Punjab pada tanggal 9 Nopember 1877 M. Iqbal berasal dari keluarga kelas menengah yang sederhana. Pendidikan agama didapatkan dari orang tuanya yang juga tokoh sufi di India. Setelah itu, ia belajar di Maktab (surau). Pendidikan formalnya ditempuh di Scottish Mission School di Sialkot, kemudian dilanjutkan di Government College di Lahore. Iqbal mendapatkan gelar Bachelor of Art (B.A.) pada tahun 1897 M. Dua tahun kemudian mendapatkan gelar Master of Art (M.A.) dengan memperoleh medali emas. Setelah itu, Iqbal belajar di Universitas Cambridge London dan Philosophy of Doctor (Ph.D.) dari Universitas Munich Jerman. Puncak kariernya, Iqbal terpilih menjadi Presiden Liga Muslim pada tahun 1930. Liga Muslim ini memiliki peran yang strategis dalam pergerakan kemerdekan India. Selain itu, ia menjadi kunci utama dalam pendirian Negara Pakistan, sebagai sebuah negara Islam yang terpisah dari Negara India. Meskipun tidak sempat menyaksikan langsung pendirian berdirinya Negara Pakistan, tetapi karena jasanya, Iqbal tetap dikenang menjadi pahlawan nasional di Pakistan. Namanya diabadikan menjadi nama bandar udara internasional Muhammad Iqbal di Lahore, Pakistan."),

            ParagrafWidget(
                content:
                    "Sedangkan pokok-pokok pikirannya adalah sebagai berikut."),
            ParagrafListAbjad(idlist: pokokPikiranya),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            AktivitasWidget(
                activityTitle: "Aktivitas 10.7",
                contentText:
                    "Dari sosok dan pemikiran Rasyid Rida dan Muhammad Iqbal di atas, bagaimana kelebihan dan kelemahan apabila diterapkan di Indonesia?"),
            Heading2red(title: "g. KH. Ahmad Dahlan (1868 – 1923 M)"),
            ParagrafWidget(
                content:
                    "KH. Ahmad Dahlan lahir di Kauman Yogyakarta pada tanggal 1 Agustus 1868 dari pasangan KH. Abu Bakar bin Haji Sulaiman dengan Siti Aminah binti KH. Ibrahim. Menurut sumber lain, misalnya Prof. Abdul Munir Mulkhan, Kiai Dahlan lahir pada tahun 1869. Nama kecilnya adalah Muhammad Darwis. Ia baru dipanggil Ahmad Dahlan setelah pulang dari menunaikan ibadah haji dan menuntut ilmu."),
            ParagrafWidget(
                content:
                    "   Kiai Dahlan belajar Al-Qur’an dan berbagai dasar keislaman langsung dengan bapaknya yang juga sebagai ketib (khatib) di Masjid Gedhe Kauman Yogyakarta dan masih keturunan Sunan Giri. Selain belajar dengan bapaknya, Dahlan juga belajar dengan KH. Muhammad Saleh, Kiai Muhammad Nur, KH. Abdul Hamid, Kiai Muhsin (Yogyakarta) dan KH. Sholeh Darat (Semarang). Waktu belajar dengan KH. Sholeh Darat bersama KH. Hasyim Asy’ari, pendiri Nahdlatul Ulama."),
            ParagrafWidget(
                content:
                    "   Pada saat itu Kiai Dahlan umurnya lebih tua daripada Kiai Hasyim. Karenanya, Kiai Dahlan memanggil Kiai Hasyim dengan Adik. Sebaliknya Kiai Hasyim memanggil dengan Mas (Kakak). "),
            ParagrafWidget(
                content:
                    "   Tidak puas belajar di dalam negeri, Kiai Dahlan melanjutkan menimba ilmu ke Makkah. Di antara gurunya adalah Syaikh Ahmad Khatib Minangkabawi, Syaikh Nahrawi al-Banyumasi, Syaikh Bakri as-Syatha, Syaikh Nawawi al-Bantani, Syaikh Mahfudz at-Tarmasi, dan pernah bertukar pikiran langsung dengan Rasyid Ridha. Selama belajar di Makkah, Dahlan mempelajari tafsir Al-Manar karya Muhammad Abduh secara tekun dan serius."),
            ParagrafWidget(
                content:
                    "   Melalui perkenalannya dengan para pembaru, kemudian meresap ke dalam jiwa Dahlan. Ide tersebut kemudian digabungkan dengan dasar ilmu-ilmu yang didalaminya di Makkah. Pada akhirnya, pertautan dari semua komponen tersebut mendorong melakukan melakukan perubahan-perubahan yang berarti dalam kehidupan keagamaan kaum muslim di Indonesia."),
            ParagrafWidget(
                content:
                    "   Salah satu kesuksesan pembaruannya ditandai dengan berdirinya organisasi masyarakat yang bernama Muhammadiyah di Indonesia pada tanggal 18 November 1912. Penjelasan terkait dengan Muhammadiyah akan dijelaskan tersendiri pada kelas XII."),
            ParagrafWidget(
                content:
                    "   Adapun di antara pokok-pokok pemikiran KH. Ahmad Dahlan adalah."),
            ParagrafListAbjad(idlist: pemikiranAhmad),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            Heading2red(title: "h. KH. Hasyim Asy’ari (1871–1947)"),
            ParagrafWidget(
                content:
                    "Kiai Hasyim dilahirkan di Gedang Jombang Jawa Timur pada hari Selasa Kliwon, 24 Dzulqa’dah 1287 H, bertepatan dengan 14 Februari 1871 M. Kiai Hasyim lahir dari pasangan Kiai Asy’ari dan Nyai Halimah dan masih keturunan Sunan Giri. "),
            ParagrafWidget(
                content:
                    "   Dalam mencari ilmu, Kiai Hasyim termasuk sosok yang tidak mengenal kata menyerah. Kiai Hasyim belajar ilmu agama langsung dengan bapak dan kakeknya yang sekaligus pengasuh pondok pesantren. Kemudian melanjutkan ke belajar ke berbagai Pondok Pesantren di Jawa. Di antaranya adalah Pondok Pesantren Wonorejo Mojokerto, Wonokoyo Probolinggo, Langitan Tuban, Tenggilis Surabaya, Kademangan Bangkalan Madura, Siwalan Panji Buduran Sidoarjo, dan Semarang. Waktu mondok di KH. Sholeh Darat Semarang, KH Hasyim belajar ilmu agama bersama KH. Ahmad Dahlan, pendiri Muhammadiyah."),
            ParagrafWidget(
                content:
                    "   Untuk memantapkan ilmu agama, Kiai Hasyim belajar sampai ke Makkah Arab Saudi selama tujuh tahun. Di antara gurunya adalah Syaikh Mahfudz al-Tirmisi, Syaikh Ahmad Khatib al-Minankabawi, Syaikh Nawawi al-Bantani, Syaikh Ahmad Khatib al-Sambasi, Syaikh Ahmad Amin al-Athtar, Sayyid Sulthan bin Hasyim, Sayyid Ahmad Nawawi, Sayyid Husain al-Habsyi yang saat itu menjadi mufti di Mekkah, dan masih banyak yang lain. Prestasi Kiai Hasyim yang menonjol selama belajar di Makkah adalah memperoleh kepercayaan untuk mengajar di Masjidil Haram. Beberapa ulama dari berbagai negara yang pernah belajar dengan Kiai Hasyim adalah: Syaikh Sa’dullah al-Maymani (mufti di Bombai India), Syaikh Umar Hamdan (ahli hadis di Mekkah), al-Syihab Ahmad bin Abdullah (Syiria), KH. Wahab Hasbullah (Tambakberas), KH. R. Asnawi (Kudus), dan masih banyak yang lain"),
            ParagrafWidget(
                content:
                    "   Di antara bentuk pembaharuan yang dilakukan oleh Kiai Hasyim yang sekarang masih bisa dilihat adalah mendirikan Pondok Pesantren Tebuireng Jombang Jawa Timur yang saat itu dusun Tebuireng penuh dengan perjudian, prostitusi, minuman keras, pencurian maupun perampokan. Dengan kesabaran Kiai Hasyim dalam mewujudkan gagasan, tidak menggunakan kekerasan dalam berdakwah menyebabkan masyarakat yang awalnya menentang, akhirnya menghentikan aksinya dan mendukung adanya pondok pesantren. Selain itu juga Kiai Hasyim merupakan pendiri organisasi Nahdlatul Ulama (NU). Penjelasan lebih lanjut tentang NU akan dijelaskan tersendiri pada kelas XII."),
            ParagrafWidget(
                content: "Di antara pemikiran KH. Hasyim Asy’ari adalah:"),
            ParagrafListAbjad(idlist: pemikiranHasyim),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: bagroundDarkOrange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Center(child: Heading2red(title: "Resolusi Jihad")),
                  ParagrafList(idlist: resolusiJihad),
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                  //
                ],
              ),
            ),

            ParagrafWidget(
                content:
                    "   Sosok Kiai Hasyim termasuk ’ulama yang produktif menulis. Di antara karyanya yang sampai sekarang masih bisa dikaji adalah:")

            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
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
            Heading2(title: "3. Pengaruh Islam Masa Modern bagi Indonesia"),
            ParagrafWidget(
                content:
                    "Adanya gerakan pembaruan dalam Islam, khususnya pada masa modern adalah wujud kesadaran umat Islam dari ketertinggalan dari Barat. Padahal, pada masa klasik, Islam mengalami zaman keemasan. Di antara gagasan cendekiawan muslim pada masa tersebut adalah Pan-Islamisme yang digaungkan Jamaludin al-Afghani merupakan cikal bakal dari gerakan kesatuan untuk menentang penjajah. "),
            ParagrafWidget(
                content:
                    "   Begitu juga di Indonesia, hal itu menjadi inspirasi agar di Indonesia dapat terlepas dari penjajah. Setidaknya sejak dibukanya Terusan Suez tahun 1869, setiap tahun ribuan umat Islam Indonesia menunaikan ibadah haji. Pada saat itu, umat Islam tidak hanya menunaikan ibadah haji, tetapi juga belajar dengan ‘ulama di Makkah, seperti K.H. Ahmad Dahlan dan K.H. Hasyim Asy’ari."),
            ParagrafWidget(
                content:
                    "   Setelah belajar dari Makkah, KH. Ahmad Dahlan mendirikan Muhammadiyyah dan KH. Hasyim Asy'ari mendirikan Nahdlatul Ulama. Kedua organisasi tersebut sampai sekarang berpengaruh di Indonesia maupun dunia."),
            ParagrafWidget(
                content:
                    "   Banyak para haji dan ulama yang melakukan perlawanan terhadap penjajah. Selama di Makkah, menurut Deliar Noer, mereka memperoleh bacaan-bacaan di tempat-tempat pendidikan agama dan turut serta dalam kehidupan dan usaha-usaha Pan-Islamisme. Di antara perang yang dimotori ulama melawan penjajah Belanda adalah Perang Padri di Minangkbau (1821-1837 M.), Perang Diponegoro di Jawa (1825-1830 M.), Perang Banjar di Kalimantan (1854-1864 M.), Perang Jambi (1858-1907 M.), Perang Aceh di Aceh (1873-1904 M.), pemberontakan rakyat di Cilegon Banten (1888 M.), dan lain-lain."),
            ParagrafWidget(
                content:
                    "   Selain itu, pengaruh yang lain adalah berdirinya beberapa organisasi masyarakat yang berbasis Islam. Di antaranya: Nahdlatul Ulama, Muhammadiyah, Al-Irsyad Al-Islamiyyah, Al-Jam’iyyah Al-Washliyyah, Persatuan Islam, Mathlaul Anwar, Pergerakan Tarbiyah, Nahdlatul Wathan, Al-Khairat, dan organisasi Islam lainnya. Pembahasan lebih lanjut tentang hal tersebut akan dibahas pada kelas XII. "),
            ParagrafWidget(
                content:
                    "   Kemudian dalam bidang pendidikan Islam, berdiri perguruan tinggi keislaman di Indonesia yang membuka jurusan keagamaan dan umum. Perguruan tinggi Islam yang pertama kali yang berdiri adalah Universitas Islam Indonesia (UII), pada tanggal 20 Februari 1951. Pada perkembangan selanjutnya, khusus Fakultas Agama, diambil oleh pemerintah, yang kemudian berdiri perguruan tinggi baru dengan nama Perguruan Tinggi Agama Islam Negeri (PTAIN) tanggal 26 September 1951 di bawah pengawasan Kementerian Agama."),
            ParagrafWidget(
                content:
                    "   Dari nama PTAIN kemudian berubah menjadi Insitut Agama Islam Negeri (IAIN) pada tahun 1960. Untuk menghadapi perubahan zaman, IAIN berubah menjadi Universitas Islam Negeri (UIN) yang membuka program studi agama dan program studi umum. Kemudian untuk Sekolah Tinggi Agama Islam Negeri (STAIN) berubah menjadi IAIN."),
            Heading2(
                title: "4. Hikmah Belajar Peradaban Islam pada Masa Modern"),
            ParagrafWidget(
                content:
                    "Setelah mempelajari materi Peradaban Islam pada masa modern, hikmah yang dapat diperoleh adalah:"),
            ParagrafListAbjad(idlist: hikmah),
            HPenerapan(),
            ParagrafWidget(
                content:
                    "Setelah mempelajari bab peradaban Islam pada masa modern, kalian diharapkan dapat menerapkan karakter dalam kehidupan sehari-hari, di antaranya sebagai berikut."),

            //
            //
            //
            //
            //
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
              child: ParagrafList(idlist: rangkuman10),
            ),
            KPenilai(),
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
            //
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
                    "Bagi kalian yang sudah memahami materi tentang Peradaban Islam pada Masa Modern, kalian bisa memperkaya lebih lanjut dengan membaca buku di bawah ini."),
            ParagrafList(idlist: pengayaan10)

            
          ]),
    );
  }
}
