import 'package:book/app/widgets/heading_2.dart';
import 'package:book/app/widgets/heading_3.dart';
import 'package:book/app/widgets/paragraf_widget.dart';
import 'package:flutter/material.dart';

import '../../data/bab_5_model/list_paragraf_5.dart';
import '../../shared/constant.dart';
import '../list_paragraf.dart';

class PetunjukPenggunaanBuku extends StatelessWidget {
  const PetunjukPenggunaanBuku({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Petunjuk Penggunaan Buku Untuk Siswa",
          style: semiBold_title,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          "Untuk mengoptimalkan kalian belajar menggunakan Buku Pendidikan Agama Islam dan Budi Pekerti SMA dan SMK Kelas XI, mari pahami petunjuk penggunaannya. Setiap bab dalam buku ini, ada dua belas rubrik, kecuali Bab I dan VI hanya ada sebelas rubrik. Apa saja? Ayo, perhatikan penjelasannya berikut ini!",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          color: purpleBaground,
          child: Table(
            border: TableBorder.all(
              color: purple,
            ),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {
              0: const FractionColumnWidth(1 / 3),
              // 1: FractionColumnWidth(0.25),
            },
            children: [
              TableRow(children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.top,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Tujuan Pembelajaran",
                      style: h2.copyWith(color: black),
                    ),
                  ),
                ),
                TableCell(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Pada bagian ini adalah target yang akan kalian capai dalam setiap bab. Sehingga kalian dapat mengetahui dan menyiapkan segala sesuatunya sebelum mempelajari materi yang akan dipelajari",
                      style: regular_paragraf,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ]),
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Kata Kunci",
                        style: h2.copyWith(color: black),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Pada bagian ini adalah istilah penting yang ada dalam setiap bab. Karenanya, pahami dengan baik maksud dari setiap kata kunci yang ada. Harapannya, dengan adanya kata kunci ini memudahkan kalian mempelajari materi.",
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Infografis",
                        style: h2.copyWith(color: black),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Pada bagian ini merupakan penyajian garis besar materi dalam bentuk grafis. Bagian ini, kalian diajak untuk melihat poin-poin materi sebelum melihat secara detail penjelasan dalam setiap bab. Harapannya, kalian akan lebih mudah mengingatnya.",
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Ayo Tadarus ",
                        style: h2.copyWith(color: black),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Pada bagian ini berisi ayat-ayat Al-Qur’an yang berkaitan dengan materi dalam setiap bab. Kalian akan diajak untuk membaca dengan tartil sebelum memulai belajar. Harapannya, kalian terbiasa membaca Al-Qur’an dalam kehidupan sehari-hari. Dengan kata lain akan menguatkan keliterasian kalian",
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Tadabbur",
                        style: h2.copyWith(color: black),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Pada bagian ini, kalian diajak untuk mengamati 4 gambar dan menuliskan komentar sesuai dengan instruksi dalam box aktivitas. Selanjutnya kalian diajak untuk mencermati wacana berupa artikel terkait materi. Harapannya, kalian akan terbentuk sikap berfikir kritis (yang merupakan salah satu kecapakan abad ke-21) dalam kehidupan sehari-hari",
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Kisah Inspiratif",
                        style: h2.copyWith(color: black),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Pada bagian ini berisi tentang cerita yang menginspirasi berhubungan dengan materi masing-masing bab.",
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Wawasan Keislamaman",
                        style: h2.copyWith(color: black),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Bagian ini berisi materi pelajaran sesuai dengan Capaian Pembelajaran (CP) dan Alur CP Kelas XI SMA dan SMK. Bacalah materi dengan tuntas dan kerjakan aktivitas yang ada dalam kotak dalam setiap bab. Pada bagian ini, kalian diharapkan menjadi peserta didik yang aktif, inovatif, kreatif, religius, dan berkarakter.",
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Penerapan Karakter",
                        style: h2.copyWith(color: black),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Berisi butir-butir sikap dan karakter profil Pelajar Pancasila yang terdapat dalam materi dalam setiap bab. Harapannya, karakter tersebut kalian dapat menerapkan dalam kehidupan sehari-hari.",
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Refleksi",
                        style: h2.copyWith(color: black),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Pada bagian ini kalian diajak untuk merefleksikan manfaat apa saja setelah kalian mempelajari dalam setiap bab.",
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Rangkuman",
                        style: h2.copyWith(color: black),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Pada bagian ini berisi ringkasan materi yang disajikan dalam Wawasan keislaman. Membaca rangkuman tersebut akan membantu kalian menemukan garis besar pembahasan materi dalam setiap bab.",
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Penilaian",
                        style: h2.copyWith(color: black),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Pada bagian ini berisi penilaian sikap, pengetahuan, dan keterampilan. Kerjakanlah penilaian ini dengan sungguh-sungguh untuk mengukur tingkat kompetensi yang kalian miliki.",
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Pengayaan",
                        style: h2.copyWith(color: black),
                      ),
                    ),
                  ),
                  TableCell(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Pada bagian ini diperuntukkan bagi peserta didik yang sudah menuntaskan materi dalam setiap bab. Bentuk pengayaan materi tersebut adalah referensi buku atau kitab atau jurnal ilmiah yang dapat diibaca lebih lanjut oleh peserta didik.",
                        style: regular_paragraf,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 4,
        ),
        ParagrafWidget(
            content:
                "   Selamat belajar menggunakan buku ini. Semoga kalian menjadi pelajar yang beriman dan bertakwa kepada Allah Swt., berakhlak mulia, berilmu, menebarkan Islam yang rahmatan lil ālamīn, moderat, kreatif, mandiri, dan menjadi warga negara yang cinta kepada Negara Kesatuan Republik Indonesia."),
        const SizedBox(
          height: 40,
        ),
        Text(
          "Petunjuk Penggunaan Buku Untuk Guru",
          textAlign: TextAlign.center,
          style: semiBold_title,
        ),
        ParagrafWidget(
            content:
                "Pendidikan Agama Islam adalah pendidikan yang berlandaskan pada akidah, lalu mewujudkan syariah, akhirnya bermanifestasi dalam bentuk akhlak. Itu artinya, Pendidikan Agama Islam merupakan pendidikan yang ditujukan untuk dapat menyerasikan, menyelaraskan dan menyeimbangkan antara Iman, Islam, dan Ihsan."),
        ParagrafWidget(
            content:
                "   Kurikulum Pendidikan Agama Islam ini, sejalan dengan pengembangan kurikulum yang tertuang dalam Keputusan Kemendikbud Nomor 958/P/2020 tentang Capaian Pembelajaran (CP) pada Pendidikan Anak Usia Dini, Pendidikan Dasar, dan Pendidikan Menengah. "),
        ParagrafWidget(
            content:
                "   Itu sebabnya, ada penyesuaian dan penataan yang sebelumnya berdasarkan Kompetensi Inti (KI) dan Kompetensi Dasar (KD), menjadi Capaian Pembelajaran (CP). Berlandaskan CP tersebut disusun sarana atau instumen lain misalnya dalam bentuk Buku Guru (BG) yang menjadi unsur penting dalam proses pembelajaran."),
        ParagrafWidget(
            content:
                "   Buku Guru ini berisi 5 hal penting yang perlu mendapat perhatian khusus, yaitu: proses pembelajaran, enilaian, pengayaan, remedial dan interaksi guru dengan Tri Pusat Pendidikan yaitu; orang tua/keluarga, sekolah/peserta didik dan masyarakat yang melingkupi sekolah."),
        ParagrafWidget(
            content:
                "   Sebagai ikhtiar mewujudkan pembelajaran efektif, perlu adanya sinergi antara GPAI dengan guru lainnya, termasuk dukungan dari pimpinan sekolah dan orang tua. Penerapan tata nilai Islam dapat dilakukan melalui pelaksanaan praktikum PAI, baik di dalam kelas maupun di luar kelas atau tempat lainnya yang berada di lingkungan sekolah dan di luar sekolah (rumah, lingkungan masyarakat serta beragam majelis ilmu)."),
        ParagrafWidget(
            content:
                "   Sebagai upaya memaksimalkan penggunaan Buku Guru (BG) ini, tahapan berikut sangatlah penting diperhatikan oleh GPAI yang skemanya sebagai berikut:"),
        Image.asset("assets/images/guru.png"),
        const SizedBox(
          height: 10,
        ),
        ParagrafWidget(
            content:
                "   Selanjutnya, berikut ini penjelasan tentang Aktivitas, Latihan, Contoh dan Aplikasi Nyata, dan Studi Kasus yang penjelasannya sebagai berikut:"),
        Heading3(title: "a. Aktivitas"),
        ParagrafWidget(
            content:
                "Pembelajaran materi ajar ini, dikembangkan dengan menerapkan beragam pendekatan, model, metode, media dan sumber pembelajaran yang disesuaikan dengan karakteristik materi ajar."),
        ParagrafWidget(
            content:
                "   Pembelajaran dimulai dengan melakukan pengamatan terhadap beberapa fitur atau rubrik yang tertera pada Buku Siswa (BS). Peserta didik secara klasikal/kelompok diminta untuk mencermati fitur atau rubrik tersebut. "),
        ParagrafWidget(
            content:
                "   Setelah dilakukan pencermatan, guru menunjuk beberapa peserta didik/wakil dari kelompok untuk memaparkan hasil pengamatannya, sementara peserta didik/kelompok lain ikut mencermati dan memberikan tanggapan atas pemaparan tersebut."),
        ParagrafWidget(
            content:
                "   Selanjutnya, guru memberikan penguatan dengan memaparkan kembali keterkaitan fitur atau rubrik tersebut sesuai materi ajar yang akan dipelajari bersama. Selanjutnya, aktivitas pembelajaran pada materi/bahan ajar ini, ada 6 aktivitas yang dilakukan. Karena itu, silakan guru bersama peserta didik melakukannya sesuai urutannya, misalnya akivitas 1.1, 1.2, 1.3, 1.4, dst. (Lihat di Bab I di Buku Siswa)."),
        ParagrafWidget(
            content: "Berikut ini, dipaparkan 1 aktivitas saja, yakni: 1.1 "),
        ParagrafWidget(
            content:
                "   Pada akvitas 1.1 ini (lihat di box bawah), guru memberi pemahaman kepada peserta didik tentang kompetensi yang harus dimiliki terkait dengan Al-Qur’an, khususnya tentang membaca, menghafal, memahami dan axmengamalkan dalam kehidupan sehari-hari. "),
        ParagrafWidget(
            content:
                "   Harus ditekankan kepada peserta didik, agar kompetensi membaca Al-Qur’an, harus menjadi prioritas pertama dan utama. Karena itu, saat pembelajaran di awal semester (bagus sekali jika dilakukan saat PPDB/Penerimaan Peserta Didik Baru), harus ada usaha atau program TBQ (Tuntas Baca Al-Qur’an) yang dikordinasikan oleh GPAI bersama OSIS Sie Rohis. "),
        ParagrafWidget(
            content:
                "   Perihal teknisnya, kiranya GPAI sudah banyak memiliki pengalaman, yang penting Program TBQ ini terlaksana dengan baik. Cara yang dijelaskan pada nomor (2)/di box, dapat dijadikan salah satu akternatif."),
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
                  "Aktivitas 1.1", // Use the activityTitle parameter here
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Aktivitas Peserta Didik:", // Use the contentText parameter here
                      style: regular_paragraf,
                      textAlign: TextAlign.justify,
                    ),
                    ParagrafWidget(
                        content:
                            "Seluruh peserta didik harus menyadari bahwa:"),
                    ParagrafList(idlist: actv1),
                  ],
                ),
              ),
            ],
          ),
        ),
        Heading3(title: "b. Latihan"),
        ParagrafWidget(
            content:
                "Lihat di Buku Siswa (BS), guru dapat melaksanakan latihan secara mandiri, baik yang terkait dengan aktivitas dan tugas guru maupun peserta didik, bahkan dapat juga melakukan kolaborasi bersama untuk melakukan aktivitas (Lihat di box-box aktivitas di BS), termasuk peran aktif orang tua/wali untuk membantu putra/putrinya untuk setiap materi ajar (lihat di bagian Interaksi Guru Dengan Orang Tua di Buku Guru/BG)."),
        Heading3(title: "c. Contoh dan Aplikasi Nyata"),
        ParagrafWidget(
            content:
                "BG dengan BS ini sudah kami paparkan sedemikian rupa, sehingga para guru dapat menerapkan pembelajaran secara nyata, hanya yang menjadi catatan, semuanya tergantung dari kompetensi sang guru sendiri saat meramu pembelajaran, sehingga menjadi ‘hidup’."),
        ParagrafWidget(
            content:
                "   Sebagai catatan, dengan perkembangan ilmu pengetahuan dan teknologi (iptek), termasuk kecanggihan dunia informasi dan komunikasi sekarang ini, mayoritas materi-materi keagamaan dapat ditemukan atau dapat digambarkan secara visual. Memang akhirnya, kembali kepada sarana dan prasarana yang ada."),
        ParagrafWidget(
            content:
                "   Jika pun, sarana dan prasarana yang ada belum mencukupi atau memang tidak ada, ada satu hal yang sering dilupakan, yakni peran hati (kalbu, nurani) yang ada pada diri setiap GPAI. Hendaklah harus menjadi kesadaran bersama, bahwa dulu Nabi Muhammad Saw, para sahabat, dan ulama salaf-pun tidak ada teknologi yang canggih, tetapi keberhasilan mereka dalam mendidik generasinya kita akui sampai saat ini."),
        Heading3(title: "d. Studi Kasus"),
        ParagrafWidget(
            content:
                "Salah satu keberhasilan pendidikan, adalah keterlibatan secara aktif bagi peserta didik. Seperti pernyataan: Tidak perlu ada teori tentang kompetensi berenang, tetapi ajaklah peserta didik di kolam renang. Niscaya, keterampilan berenang dengan sendirinya dimiliki oleh seluruh peserta didik."),
        ParagrafWidget(
            content:
                "   Mengacu ke contoh tersebut, pembelajaran mapel PAI-BP juga tidak jauh dengan teori tersebut. Oleh karena itu, pembelajaran PAI harus banyak praktiknya. Biasakan menggunakan studi kasus atau true story (kisah nyata) yang ada di sekitar kita."),
        ParagrafWidget(
            content:
                "   Itu artinya, para peserta didik harus banyak mengalami sendiri dan pengalaman orang lain, dari beragam materi ajar yang disodorkan oleh guru, atau boleh juga antara guru dengan peserta didik mencari cara dan strategi yang tepat untuk materi ajar tersebut. "),
        SizedBox(
          height: 46,
        )
      ],
    );
  }
}
