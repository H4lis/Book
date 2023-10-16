import 'package:flutter/material.dart';

import '../../shared/constant.dart';

class KataPengantar extends StatelessWidget {
  const KataPengantar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text("Kata Pengantar", style: semiBold_title),
        ),
        Text(
          "Pusat Perbukuan; Badan Standar, Kurikulum, dan Asesmen Pendidikan Kementerian Pendidikan, Kebudayaan, Riset dan Teknologi sesuai tugas dan fungsinya mengembangkan kurikulum yang mengusung semangat merdeka belajar mulai dari satuan Pendidikan Anak Usia Dini, Pendidikan Dasar, dan Pendidikan Menengah. Kurikulum ini memberikan keleluasaan bagi satuan pendidikan dalam mengembangkan potensi yang dimiliki oleh peserta didik. Untuk mendukung pelaksanaan kurikulum tersebut, sesuai Undang-Undang Nomor 3 tahun 2017 tentang Sistem Perbukuan, pemerintah dalam hal ini Pusat Perbukuan memiliki tugas untuk menyiapkan Buku Teks Utama. ",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "   Buku teks ini merupakan salah satu sumber belajar utama untuk digunakan pada satuan pendidikan. Adapun acuan penyusunan buku adalah Keputusan Menteri Pendidikan dan Kebudayaan Republik Indonesia Nomor 958/P/2020 tentang Capaian Pembelajaran pada Pendidikan Anak Usia Dini, Pendidikan Dasar, dan Pendidikan Menengah. Penyusunan Buku Teks Pelajaran Pendidikan Agama Islam dan Budi Pekerti ini terselenggara atas kerja sama antara Kementerian Pendidikan dan Kebudayaan (Nomor: 57/IX/PKS/2020) dengan Kementerian Agama (Nomor: 5341 TAHUN 2020). Sajian buku dirancang dalam bentuk berbagai aktivitas pembelajaran untuk mencapai kompetensi dalam Capaian Pembelajaran tersebut. Penggunaan buku teks ini dilakukan secara bertahap pada Sekolah Penggerak dan SMK Pusat Keunggulan, sesuai dengan Keputusan Menteri Pendidikan dan Kebudayaan Nomor 162/M/2021 tentang Program Sekolah Penggerak. ",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "   Sebagai dokumen hidup, buku ini tentunya dapat diperbaiki dan disesuaikan dengan kebutuhan. Oleh karena itu, saran-saran dan masukan dari para guru, peserta didik, orang tua, dan masyarakat sangat dibutuhkan untuk penyempurnaan buku teks ini. Pada kesempatan ini, Pusat Perbukuan mengucapkan terima kasih kepada semua pihak yang telah terlibat dalam penyusunan buku ini mulai dari penulis, penelaah, penyunting, ilustrator, desainer, dan pihak terkait lainnya yang tidak dapat disebutkan satu per satu. Semoga buku ini dapat bermanfaat khususnya bagi peserta didik dan guru dalam meningkatkan mutu pembelajaran.",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        Row(
          children: [
            Spacer(),
            Text(
              "\nJakarta, Oktober 2021\nPlt. Kepala Pusat,\n\n\nSupriyatno\nNIP 19680405 198812 1 001\n\n",
              style: regular_paragraf,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
