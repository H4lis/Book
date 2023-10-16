import 'package:flutter/material.dart';

import '../../shared/constant.dart';

class KataSambutan extends StatelessWidget {
  const KataSambutan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Kata Sambutan",
          style: semiBold_title,
          textAlign: TextAlign.center,
        ),
        Text(
          "Puji syukur kepada Allah Swt., bahwa penulisan Buku Pendidikan Agama Islam dan Budi Pekerti hasil kerjasama antara Kementerian Agama dengan Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi ini dapat diselesaikan dengan baik. Buku ini disusun sebagai upaya untuk menyiapkan peserta didik agar menjadi insan yang religius dan berbudi pekerti sebagaimana diamanatkan pada Pasal 3 Undang-Undang Nomor 20 Tahun 2003 tentang Sistem Pendidikan Nasional, bahwa tujuan pendidikan adalah berkembangnya potensi peserta didik agar menjadi manusia yang beriman dan bertakwa kepada Tuhan Yang Maha Esa, berakhlak mulia, sehat, berilmu, cakap, kreatif, mandiri, dan menjadi warga negara yang demokratis serta bertanggung jawab.",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "   Untuk mencapai sasaran di atas, maka sudah selayaknya kita mendukung Visi dan Misi Presiden untuk mewujudkan Indonesia Maju yang berdaulat, mandiri, dan berkepribadian melalui terbentuknya Pelajar Pancasila. Pelajar Pancasila adalah perwujudan pelajar Indonesia sebagai pelajar sepanjang hayat yang memiliki kompetensi global dan berperilaku sesuai dengan nilainilai Pancasila, dengan enam ciri utama, yaitu beriman, bertakwa kepada Tuhan YME, dan berakhlak mulia, berkebinekaan global, bergotong royong, mandiri, bernalar kritis, dan kreatif",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "   Buku Pendidikan Agama Islam dan Budi Pekerti ini disusun sesuai dengan Peta Jalan Pendidikan Nasional 2020–2035 bahwa peningkatan kualitas pendidikan nasional dilakukan dengan memperbaiki kurikulum nasional, pedagogi, dan penilaian. Materi yang diajarkan dalam buku ini sejalan dengan upaya untuk pengembangan peserta didik, yaitu nilai-nilai dan ajaran Islam yang sangat mulia dan luhur untuk dijadikan suatu habitdalam penanaman sikap, memperluas wawasan dan pengetahuan, serta mengembangkan keterampilan peserta didik agar menjadi muslim yang kaaffah.",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "   Buku ini juga menghadirkan nilai-nilai moderasi beragama yang perlu diserap oleh peserta didik. Penguatan moderasi beragama di Indonesia saat ini penting dilakukan karena bangsa Indonesia adalah bangsa yang majemuk dengan bermacam suku, bahasa, budaya dan agama. Indonesia merupakan negara yang memandang penting nilai-nilai agama, walaupun bukan merupakan suatu negara yang berdasarkan pada agama tertentu.",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "   Moderasi beragama penting untuk digaungkan dalam konteks global di mana agama menjadi bagian penting dalam perwujudan peradaban dunia yang bermartabat. Moderasi beragama diperlukan sebagai upaya untuk senantiasa menjaga agar tafsir dan pemahaman terhadap agama tetap sesuai dengan koridor berbangsa dan bernegara sehingga tidak memunculkan cara beragama yang ekstrem",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "   Kementerian Agama dalam kesempatan ini menyampaikan apresiasi yang tinggi kepada Pusat Kurikulum dan Perbukuan yang telah bekerja dengan sungguh-sungguh bersama Tim Penulis dalam menyiapkan buku ini.",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "   Semoga buku ini menjadi sesuatu yang bermakna bagi masa depan anak-anak bangsa. Amin.",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        Row(
          children: [
            Spacer(),
            Text(
              "\nJakarta, Oktober 2021\nDirektur Pendidikan Agama Islam\n\n\nDr. Rohmat Mulyana Sapdi\n\n",
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
