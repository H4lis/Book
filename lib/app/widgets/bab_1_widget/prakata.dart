import 'package:flutter/material.dart';

import '../../shared/constant.dart';

class Prakata extends StatelessWidget {
  const Prakata({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            "Prakata",
            style: semiBold_title,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "Bismillāhirrahmānirrahīm.",
          style: regular_paragraf.copyWith(fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 8,
        ),
        RichText(
          text: TextSpan(
            style: regular_paragraf,
            children: <TextSpan>[
              TextSpan(
                  text: "Alhamdulillāhirabbil ālamīn.  ",
                  style:
                      regular_paragraf.copyWith(fontStyle: FontStyle.italic)),
              TextSpan(
                  text:
                      "Segala puji bagi Allah Swt. penguasa alam semesta sehingga penulisan buku Pendidikan Agama Islam dan Budi Pekerti (PAI dan BP) Kelas XI SMA/SMK ini dapat selesai. Semoga kita semua selalu dikaruniai kesehatan, kesuksesan, dan keberkahan dalam menjalankan tugas. Āmīn. Shalawat dan salam tetap tercurahkan kepada Nabi Muhammad Saw. keluarga, dan sahabat-sahabatnya")
            ],
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "   Dalam sistem pendidikan, kurikulum bersifat dinamis dalam menghadapi perubahan dan tantangan zaman. Namun demikian, perubahan dan pengembangan kurikulum harus dilakukan secara terarah dan dapat menjawab tantangan perubahan zaman. Pengembangan kurikulum dengan semangat merdeka belajar adalah bagian dari ikhtiar untuk mewujudkan Indonesia Maju melalui peningkatan sumber daya manusia.",
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
        Row(
          children: [
            Spacer(),
            Text(
              "\nJakarta, Oktober 2021\nPenulis\n\n\nDrs. H. Abd. Rahman, MA.\nHery Nugroho, S.Pd.I, M.S.I, M.Si.\n\n",
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
