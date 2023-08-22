import 'package:book/app/shared/constant.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      children: [
        Center(
          child: Text("Kata Pengantar", style: semiBold_title),
        ),
        Text(
          "   Pusat Perbukuan; Badan Standar, Kurikulum, dan Asesmen Pendidikan Kementerian Pendidikan, Kebudayaan, Riset dan Teknologi sesuai tugas dan fungsinya mengembangkan kurikulum yang mengusung semangat merdeka belajar mulai dari satuan Pendidikan Anak Usia Dini, Pendidikan Dasar, dan Pendidikan Menengah. Kurikulum ini memberikan keleluasaan bagi satuan pendidikan dalam mengembangkan potensi yang dimiliki oleh peserta didik. Untuk mendukung pelaksanaan kurikulum tersebut, sesuai Undang-Undang Nomor 3 tahun 2017 tentang Sistem Perbukuan, pemerintah dalam hal ini Pusat Perbukuan memiliki tugas untuk menyiapkan Buku Teks Utama. ",
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
          "Sebagai dokumen hidup, buku ini tentunya dapat diperbaiki dan disesuaikan dengan kebutuhan. Oleh karena itu, saran-saran dan masukan dari para guru, peserta didik, orang tua, dan masyarakat sangat dibutuhkan untuk penyempurnaan buku teks ini. Pada kesempatan ini, Pusat Perbukuan mengucapkan terima kasih kepada semua pihak yang telah terlibat dalam penyusunan buku ini mulai dari penulis, penelaah, penyunting, ilustrator, desainer, dan pihak terkait lainnya yang tidak dapat disebutkan satu per satu. Semoga buku ini dapat bermanfaat khususnya bagi peserta didik dan guru dalam meningkatkan mutu pembelajaran.",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Kata Sambutan",
          style: semiBold_title,
          textAlign: TextAlign.center,
        ),
        Text(
          "   Puji syukur kepada Allah Swt., bahwa penulisan Buku Pendidikan Agama Islam dan Budi Pekerti hasil kerjasama antara Kementerian Agama dengan Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi ini dapat diselesaikan dengan baik. Buku ini disusun sebagai upaya untuk menyiapkan peserta didik agar menjadi insan yang religius dan berbudi pekerti sebagaimana diamanatkan pada Pasal 3 Undang-Undang Nomor 20 Tahun 2003 tentang Sistem Pendidikan Nasional, bahwa tujuan pendidikan adalah berkembangnya potensi peserta didik agar menjadi manusia yang beriman dan bertakwa kepada Tuhan Yang Maha Esa, berakhlak mulia, sehat, berilmu, cakap, kreatif, mandiri, dan menjadi warga negara yang demokratis serta bertanggung jawab.",
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
        const SizedBox(
          height: 20,
        ),
        Text(
          "Prakata",
          style: semiBold_title,
          textAlign: TextAlign.center,
        ),
        Text(
          "Bismillāhirrahmānirrahīm.",
          style: regular_paragraf,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "Alhamdulillāhirabbil ālamīn. Segala puji bagi Allah Swt. penguasa alam semesta sehingga penulisan buku Pendidikan Agama Islam dan Budi Pekerti (PAI dan BP) Kelas XI SMA/SMK ini dapat selesai. Semoga kita semua selalu dikaruniai kesehatan, kesuksesan, dan keberkahan dalam menjalankan tugas. Āmīn. Shalawat dan salam tetap tercurahkan kepada Nabi Muhammad Saw. keluarga, dan sahabat-sahabatnya",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "Dalam sistem pendidikan, kurikulum bersifat dinamis dalam menghadapi perubahan dan tantangan zaman. Namun demikian, perubahan dan pengembangan kurikulum harus dilakukan secara terarah dan dapat menjawab tantangan perubahan zaman. Pengembangan kurikulum dengan semangat merdeka belajar adalah bagian dari ikhtiar untuk mewujudkan Indonesia Maju melalui peningkatan sumber daya manusia.",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "   Pengembangan kurikulum baru ini, khususnya pada mata pelajaran PAI dan BP adalah dengan memasukkan profil pelajar Pancasila. Adapun karakter yang dikembangkan adalah, 1) beriman, bertakwa kepada Tuhan Yang Maha Esa dan berakhlak mulia, 2) mandiri, 3) bernalar kritis, 4) kreatif, 5) bergotong-royong, dan 6) berkebinekaan global. Tentunya, di luar enam karakter tersebut, guru di sekolah dapat mengembangkan karakter lain yang sesuai dengan kondisi dan karakteristik masing-masing. Selain itu juga menguatkan literasi, Islam yang rahmatan lil alamīn, moderasi beragama, kebangsaan/keindonesiaan, mengembangkan Higher Order Thinking Skills (HOTS), dan kecakapan abad 21.",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "   PAI dan BP sebagai salah satu mata pelajaran wajib pada semua jenjang, mulai dari tingkat dasar, menengah, dan tinggi harus mengikuti perubahan tersebut. Perubahan tersebut, seharusnya dimaknai hal yang positif untuk memperbaiki implementasi PAI dan BP pada saat sekarang dan yang akan datang. Apalagi dengan adanya revolusi industri 4.0, peran mata pelajaran PAI dan BP sangat dibutuhkan peserta didik maupun masyarakat.",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "   Kebutuhan peserta didik dalam memahami materi PAI dan BP SMA/SMK Kelas XI dengan baik diperlukan buku sebagai pemandu dalam belajar. Buku ini menjawab kebutuhan tersebut baik aspek sikap, pengetahuan, dan keterampilan. Harapannya setelah mempelajari buku ini, menguatkan kalian menjadi pelajar muslim yang rahmatan lil ālamīn, moderat, berkarakter profil pelajar Pancasila, sehingga meraih kesuksesan di dunia dan akhirat. Penulis berusaha seoptimal mungkin untuk menghadirkan buku PAI dan BP dengan sebaik-baiknya. Meskipun begitu, penulis memberi kesempatan kepada bapak/ibu guru PAI, peserta didik atau pembaca memberikan masukan yang konstruktif. Semoga buku ini bermanfaat di dunia dan akhirat. Āmīn.",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Petunjuk Penggunaan Buku",
          style: semiBold_title,
          textAlign: TextAlign.center,
        ),
        Text(
          "Untuk mengoptimalkan kalian belajar menggunakan Buku Pendidikan Agama Islam dan Budi Pekerti SMA dan SMK Kelas XI, mari pahami petunjuk penggunaannya. Setiap bab dalam buku ini, ada dua belas rubrik, kecuali Bab I dan VI hanya ada sebelas rubrik. Apa saja? Ayo, perhatikan penjelasannya berikut ini!",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Pedoman Transliterasi",
          style: semiBold_title,
          textAlign: TextAlign.center,
        ),
        Text(
          "Buku Pendidikan Agama Islam dan Budi Pekerti Kelas XI ini tidak lepas dari penulisan transliterasi. Adapun pedoman transliterasinya berdasarkan atas Keputusan Bersama Menteri Agama dan Menteri Pendidikan dan Kebudayaan Republik Indonesia No. 158 Tahun 1987 dan No. 0543 b/u/1987 sebagai berikut",
          style: regular_paragraf,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),


        







        const SizedBox(
          height: 40,
        ),
      ],
    ));
  }
}
