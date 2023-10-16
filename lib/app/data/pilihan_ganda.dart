import 'package:book/app/shared/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PilihanGandaSoalItem extends StatefulWidget {
  final SoalPilihanGanda soal;
  final int noU;

  PilihanGandaSoalItem({required this.soal, required this.noU});

  @override
  _PilihanGandaSoalItemState createState() => _PilihanGandaSoalItemState();
}

class _PilihanGandaSoalItemState extends State<PilihanGandaSoalItem> {
  String? _selectedJawaban;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${widget.noU}.   ",
              style: regular_paragraf,
              textAlign: TextAlign.justify,
            ),
            Expanded(
              child: Text(
                widget.soal.pertanyaan,
                style: regular_paragraf,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.soal.pilihanJawaban
                .map(
                  (pilihan) => Text(pilihan, style: regular_paragraf),
                )
                .toList(),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class SoalPilihanGanda {
  final String pertanyaan;
  final List<String> pilihanJawaban;
  final String jawabanBenar;

  SoalPilihanGanda({
    required this.pertanyaan,
    required this.pilihanJawaban,
    required this.jawabanBenar,
  });
}

List<SoalPilihanGanda> pilihanGanda = [
  SoalPilihanGanda(
    pertanyaan:
        "Saat itu Rasulullah Saw. bersama istrinya, Aisyah Ra. lalu beliau minta izin untuk beribadah. Lama sekali sampai menjelang subuh, bahkan menangis tersedu-sedu, karena begitu dalamnya perenungan ayat yang dibaca. Adapun ayat yang dibaca adalah … .",
    pilihanJawaban: [
      "A. Q.S. al-Baqarah/2: 190-191 ",
      "B. Q.S. Ali ‘Imrān/3: 190-191",
      "C. Q.S. an-Nisā’/4: 150-151",
      "D. Q.S. al-Maidah/5: 109-110",
      "E. Q.S. al-An’ām/6: 145-146"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan Q.S. Ali ‘Imrān/3: 190 ini! \nاِنَّ فِيْ خَلْقِ السَّمٰوٰتِ وَالْاَرْضِ وَاخْتِلَافِ الَّيْلِ وَالنَّهَارِ لَاٰيٰتٍ لِّاُولِى الْاَلْبَابِۙ ١٩٠  Berdasarkan ayat tersebut, kata yang menunjukkan hukum bacaan Mad Thabi’i adalah ….",
    pilihanJawaban: [
      "A. خَلْقِ",
      "B. السَّمٰوٰتِ",
      "C. وَالْاَرْضِ",
      "D. لِّاُولِى ",
      "E. اِنَّ"
    ],
    jawabanBenar: " ",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan potongan Q.S. Ali ‘Imrān/3: 191 berikut ini!\nرَبَّنَا مَا خَلَقْتَ هٰذَا بَاطِلًاۚ  \nBerdasarkan potongan ayat tersebut, yang termasuk isi dan kandungannya adalah … .",
    pilihanJawaban: [
      "A. penciptaan yang beraneka ragam dan berwarna",
      "B. menyelimuti kelompok dari kebimbangan dan keraguan",
      "C. keimanan itu membuahkan ketenangan, serta kebahagiaan",
      "D. berpikir kritis yang menghasilkan kesimpulan tidak ada yang sia-sia ",
      "E. kemerdekaan berpikir kritis, agar menghasilkan wawasan yang utuh"
    ],
    jawabanBenar: " ",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Orang-orang yang memiliki akal pikiran yang sehat serta akal budi yang bersih dikenal dengan istilah ulil albab. Di antara tanda-tandanya adalah…",
    pilihanJawaban: [
      "A. keterlibatannya dalam berbagai peristiwa",
      "B. peduli aspek pendidikan dalam meningkatkan martabat",
      "C. pemikirannya mendalam tetapi membawa kesimpulan yang sia-sia",
      "D. semua kondisi yang menimpanya, menghasilkan banyak sekali manfaat ",
      "E. daya kritisnya utuh, sehingga tidak didapati keinginan yang meresap"
    ],
    jawabanBenar: " ",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Islam sangat menggalakkan untuk berpikir kritis, meneliti dan mengkaji segala hal yang terkait dengan makhluk ciptaan Allah Swt., tetapi dilarang memikirkan tentang ….",
    pilihanJawaban: [
      "A. qadha dan segala takdir-Nya",
      "B. nama-nama-Nya yang indah",
      "C. al-Asmaul Husna yang 99",
      "D. sifat-sifat-Nya yang utuh ",
      "E. Dzat-Nya atau Hakikat-Nya",
    ],
    jawabanBenar: " ",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Berpikir itu ada batasnya. Jika tidak, banyak kekacauan yang terjadi, termasuk yang terjadi di seputar kehidupan umat manusia. Di antara dampak negatifnya adalah … .",
    pilihanJawaban: [
      "A. indahnya dunia yang terus diperbaiki",
      "B. semakin banyak hasil perenungan yang didapatkan ",
      "C. kehidupan dunia tetap berjalan sesuai kehendak manusia ",
      "B. semakin banyak hasil perenungan yang didapatkan ",
      "E. akal pikirannya menjadi tumpul dan minim martabat yang didapat",
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Setiap orang harus bercita-cita memiliki ilmu setinggi langit. Namun harus disadari bahwa Ilmu yang salah, menjadi penyebab kegagalan dan kehancuran. Sebab itu, ilmu harus dipandu oleh … .",
    pilihanJawaban: [
      "A. landasan yang rinci seluas problema manusia",
      "B. kembali dan menyatunya jati diri bersama pihak lain",
      "C. sistem kepercayaan yang dapat diterima oleh orang banyak",
      "D. kematangan berpikir dan dalamnya penghayatan yang dilakukan",
      "E. iman yang kuat dan cara beribadah yang benar",
    ],
    jawabanBenar: " ",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan potongan Q.S. ar-Rahmān/55: 33 berikut ini! \n...يٰمَعْشَرَ الْجِنِّ وَالْاِنْسِ اِنِ اسْتَطَعْتُمْ اَنْ تَنْفُذُوْا \nBerdasarkan potongan ayat tersebut, yang termasuk isi dan kandungannya adalah … .",
    pilihanJawaban: [
      "A. perintah Allah Swt. kepada jin dan manusia untuk melintasi penjuru langit ",
      "B. kebebasan bagi jin dan manusia untuk kerjasama untuk hal yang baik",
      "C. tidak semua jin dan manusia mampu mengendalikan nafsunya",
      "D. kehinaan bagi siapa saja yang menuhankan semesta raya ",
      "E. luasnya penjuru langit dan bumi serta di antara keduanya",
    ],
    jawabanBenar: " ",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Berdasarkan Hadis Nabi Saw., silih bergantinya tahun dan bulan, bukan sekedar berubahnya waktu, namun itu cara Allah Swt. mengambil ilmu-Nya dengan cara … .",
    pilihanJawaban: [
      "A. timbul kemalasan di sebagian besar para penuntut iptek ",
      "B. jauhnya umat dari para pakar yang membidangi ilmu tersebut",
      "C. mewafatkan para ulama dengan ilmu yang dimilikinya",
      "C. mewafatkan para ulama dengan ilmu yang dimilikinya",
      "E. berkurangnya para tokoh yang menguasai",
    ],
    jawabanBenar: " ",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Cinta dan semangat menuntut ilmu, itu menjadi keharusan. Namun, ada faktor lain yang harus diperhatikan bagi penuntut ilmu. Hal itu adalah … .",
    pilihanJawaban: [
      "A. melakukan seleksi guru dan ilmu yang ingin dipelajari ",
      "B. kapasitas akal yang naik turun sesuai banyak tidaknya ilmu",
      "C. jumlah dana yang dibutuhkan dengan dana orang tua ",
      "D. olah batin yang menurunkan semangat lahir/fisik",
      "E. keamanan dan kesehatan yang melingkupinya ",
    ],
    jawabanBenar: "",
  ),
  // Tambahkan soal-soal lainnya ke dalam list ini sesuai kebutuhan
];

List<SoalPilihanGanda> pilihanGanda2 = [
  SoalPilihanGanda(
    pertanyaan:
        "Hakikat Islam adalah menebar keselamatan dan kedaimaian. Itu sebabnya, setiap muslim dilarang melakukan …",
    pilihanJawaban: [
      "khiyar dalam bertransaksi",
      "teror dan menakuti pihak lain",
      "hubungan yang ideal dengan non muslim",
      "hubungan yang ideal dengan non muslim",
      "jasa timbal balik yang saling menguntungkan"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Gunakan lisan dengan sopan dan ditata dengan baik! Kenapa? Karena membawa banyak maslahat. Berikut ini, maslahat yang didapat, kecuali …",
    pilihanJawaban: [
      "A. banyak orang menyukai orang tersebut",
      "B. keadilan nampak bagi seluruh masyarakat",
      "C. tertariknya orang sangat dipengaruhi lisan",
      "D. mendamaikan pihak-pihak yang berselisih",
      "E. mendekatnya pergaulan yang harmonis"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Jika aib itu terbuka, maka sama saja dengan menaruh arang di muka. Makna dari kiasan tersebut adalah … ",
    pilihanJawaban: [
      "A. pentingnya melihat keadaan setiap orang ",
      "B. terbatasnya kemurnian hati dari pribadi yang terpilih ",
      "C. betapa malunya siapa saja yang terbuka aibnya ",
      "D. martabat seseorang di atas segala-galanya",
      "E. melakukan kebaikan jauh dari bermanfaat",
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Teknologi bagai pisau bermata dua. Di satu sisi, banyak memudahkan hidup, tetapi disisi lain, disalahgunakan untuk hal-hal yang negatif, antara lain: … .",
    pilihanJawaban: [
      "A. salah pergaulan diakibatkan memilih twitter",
      "B. keamanan negara menjadi rapuh dan lumpuh",
      "C. mencari-cari keabsahan sistem nilai yang ingin dicari",
      "D. menjatuhkan nama baik dan martabat seseorang",
      "E. digunakan penelitian untuk mengkloning hewan",
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Saat berada di alam rahim, setiap diri sudah menyampaikan janji setia kepada Allah Swt. Di antara janji tersebut adalah … .",
    pilihanJawaban: [
      "A. kembali ke jalan yang dijanjikan",
      "B. menjauhi gaya hidup yang seimbang",
      "C. tidak lupa akan keberadaan dunia dan akhirat",
      "D. akan kembali ke alam akhirat sesuai batas waktunya",
      "E. menjadi hamba Allah yang baik dan tetap hidup di jalan fitra",
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Keselamatan manusia tergantung kepada kemampuannya dalam menjaga lisan. Itulah sebabnya, Rasulullah Saw. bersabda: Tanda muslim sejati adalah … . ",
    pilihanJawaban: [
      "A. tersedianya sandang dan pangan",
      "B. keamanan yang melingkupi keluarga",
      "C. memberikan sedekah sekedar kemampuan",
      "D. selamatnya pihak lain dari ganngguannya",
      "E. terhindarnya keadaan yang melelahkan",
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Aib berasal dari salah, dosa dan kemaksiatan yang dilakukan. Bertumpuknya dosa sama saja dengan menumpuk aib. Namun, selalu ada waktu untuk memperbaiki. Berikut ini yang diperbolehkan untuk membuka aib seseorang, yaitu: … ",
    pilihanJawaban: [
      "A. menggunakan bukti-bukti yang handal",
      "B. mengerem keinginan pihak-pihak yang terlibat",
      "C. bertujuan menyelidiki untuk kebaikan masyarakat",
      "D. coba-coba mengusut kasus yang membawa mesteri",
      "E. memperlakukan lembaga yang faham tentang masalah",
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Saat ini, membuka aib bukan sekedar dari lisan, tetapi melalui jari-jari pada media sosial (medsos) masing-masing. Itu sebabnya, sebagai muslim harus selektif menggunakannya, yaitu",
    pilihanJawaban: [
      "A. bersumber dari pemerintah",
      "B. benar isinya dan sumbernya jelas",
      "C. isinya mengubah tatanan masyrakat",
      "D. ada dalil yang menguatkan tentang itu",
      "E. susunan kalimatnya sangat bagus dan teratur",
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Memenuhi janji menjadi faktor penting keberhasilan dan kesuksesan seseorang. Rasulullah mencari contoh terbaik tentang itu. Berikut ini, keuntungan orang menepati janji, kecuali … . ",
    pilihanJawaban: [
      "A. terus dicari keberadaanya, karena amanah sekali",
      "B. hidupnya menjadi berkah dan tidak pernah kurang",
      "C. dikembalikan fungsi imannya ke dalam dada manusia",
      "D. jauh dari keresaan dan kebimbangan dalam hidupnya",
      "E. hilang kekhawatiran dan kecemasan di segala situasi",
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Mensyukuri nikmat yang ada, menjadi kunci kebahagiaan. Hanya sayangnya, seringkali banyak manusia yang tidak menghargai apa yang sudah dimiliki, akibatnya … . ",
    pilihanJawaban: [
      "A. tidak menyatunya nurani, kalbu dan hati",
      "B. jiwanya menjadi rendah dan rusak jasadnya",
      "C. jiwanya selalu melayang sampai ke ujung dunia",
      "D. mencari-cari lagi sampai semua keluarganya merasa puas",
      "E. hidupnya menjadi gelisah, bahkan mencari yang tidak halal",
    ],
    jawabanBenar: "",
  ),
  // Tambahkan soal-soal lainnya ke dalam list ini sesuai kebutuhan
];

List<SoalPilihanGanda> pilihanGanda3 = [
  SoalPilihanGanda(
    pertanyaan:
        "Kenakalan pelajar atau remaja, menurut Sarlito W. Sarwono adalah tindakan oleh seseorang yang belum dewasa yang sengaja melanggar hukum yang bentuknya adalah …",
    pilihanJawaban: [
      "A. diketahui sendiri hukumannya",
      "B. tidak diketahui sanksinya",
      "C. melanggar disiplin",
      "D. melawan petugas",
      "E. ikut-ikutan"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Adanya perkelahian pelajar dipengaruhi banyak faktor. Salah satunya karena faktor yang dikenal dengan sebutan Social Disorganization yang maksudnya adalah … .",
    pilihanJawaban: [
      "A. faktor tekanan yang besar dari masyarakat",
      "B. disebabkan faktor individu dan keinginan pribadi",
      "C. perkelahian pelajar disebabkan faktor lingkungan",
      "D. pelajar itu sendiri yang salah memilih pergaulan",
      "D. pelajar itu sendiri yang salah memilih pergaulan"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Penanganan pelajar yang menyimpang, membutuhkan banyak cara yang intinya difokuskan kepada pribadi pelajar, antara lain: … .",
    pilihanJawaban: [
      "A. kepentingan besar dari yang empunya kebutuhan",
      "B. kemurnian hati dan tidak bersyarat bagi yang menangani",
      "C. melibatkan banyak unsur yang menangani situasi dan kondisi",
      "D. posisi pelajar sendiri dengan problema yang dibuat",
      "E. kebesaran niat untuk melakukan perbaikan"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Khamr adalah segala apapun yang memabukkan atau merusak akal sehat. Berlandaskan pengertian tersebut, yang termasuk makna dari khamr adalah … .",
    pilihanJawaban: [
      "A. segala jenis narkoba termasuk makna dari khamr",
      "B. zat yang mempengaruhi perasaan dan keinginan",
      "C. jenis bahan yang dapat mengubah kekalutan",
      "D. bahan-bahan tanaman yang tumbuh di bukit",
      "E. semua jenis zat yang merusak keimanan"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Berdasarkan Q.S. al-Māidah/5: 91, banyak akibat buruk yang didapatkan, apabila seseorang itu meminum khamr dan melakukan maisir, yaitu: … .",
    pilihanJawaban: [
      "A. derajat dan martabatnya jauh dari jalan Allah Swt. ",
      "B. pola pikirnya runtuh dan kemalasan yang terus menerus",
      "C. kepentingan jangka pendek dan jauh semakin berpadu",
      "D. iman yang menjadi penopang mencari rezeki menjadi turun",
      "E. tidak shalat, jauh dari Allah, timbul permusuhan dan kebencian"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Allah Swt. tidak serta merta mengharamkan sesuatu, tetapi terlebih dahulu pola pikir dan jiwa manusia diajak untuk bersama-sama menilainya, sehingga ini wajib dan itu haram. Berikut ini, merupakan ayat yang terakhir menjelaskan tentang khamr, yakni:",
    pilihanJawaban: [
      "A. Q.S. al-Māidah/5: 90",
      "B. Q.S. al-Māidah/5: 191",
      "C. Q.S. al-Māidah/5: 195",
      "D. Q.S. al-Māidah/5: 196",
      "E. Q.S. al-Māidah/5: 197"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Begitu berbahayanya khamr dalam kehidupan pribadi, keluarga, masyarakat, termasuk kelangsungan bangsa dan negara, maka sikap tepat yang perlu dilakukan adalah … .",
    pilihanJawaban: [
      "A. keandalan dalam menggunakan zat dan bahan ",
      "B. mengerem kehendak dan keinginan yang berlebih ",
      "C. lebih jitu dalam memperlakukan semua hal yang terkait",
      "D. tidak pernah coba-coba memakai atau meminum khamr",
      "E. memperlakukan zat atau bahan tersebut secara wajar "
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Melalui Q.S. al-Nahl/16: 67, terdapat 2 buah yang diterangkan oleh Allah Swt. kepada manusia, yang dari buah-buahan tersebut bisa dijadikan sebagai khamr atau rezeki yang halal. Dua buah tersebut adalah … .",
    pilihanJawaban: [
      "A. delima dan anggur",
      "B. mangga dan kurma",
      "C. kurma dan anggur",
      "D. anggur dan mangga",
      "E. tin dan zaitun"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Khamr itu kebiasaan (buruk). Karena itu, perlu diluruskan secara bertahap. Berikut ini, cara yang dicoba diluruskan, yaitu:",
    pilihanJawaban: [
      "A. menggerakkan rasa keagamaan dan jiwa manusia, agar berhenti",
      "B. berpalingnya kebiasaan yang menopang perilaku manusia",
      "C. dikembalikan fungsi iman ke dalam dada manusia",
      "D. ketahanan diri dan keluarga menghadapi ujian",
      "E. menumbuhkan perasaan malu dan peduli"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Penyalahgunaan narkoba merupakan gangguan perilaku dan perbuatan anti sosial. Berikut ini tanda-tandanya, yaitu: … .",
    pilihanJawaban: [
      "A. ide dan gagasan yang tidak menyatu ",
      "B. tekad rendah dan minat yang bertambah",
      "C. jiwa yang kurang dan sentimen bertambah",
      "D. berbohong, membolos, minggat, dan malas",
      "E. berubah fungsi dan keinginan yang optimal"
    ],
    jawabanBenar: "",
  ),
];

List<SoalPilihanGanda> pilihanGanda4 = [
  SoalPilihanGanda(
    pertanyaan:
        "Hendaknya khutbah, tablig dan dakwah yang dilakukan tidak bersifat seremonial, tetapi mencapai sasaran. Sebab itu, semuanya perlu wujud nyata melalui hal-hal berikut ini, kecuali … .",
    pilihanJawaban: [
      "A. bil lisāni wal hāl",
      "B. uswatun hasanah",
      "C. mau’idhah hasanah",
      "D. bil hikmah",
      "E. bil ra’yi"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Mulai zaman Nabi Adam As. sampai zaman Rasulullah Saw. serta diteruskan oleh generasi sampai akhir zaman, tujuan Dakwah Islamiyah tidak akan pernah berubah, yaitu … .",
    pilihanJawaban: [
      "A. mengajar orang agar bisa membaca Al-Qur’an dengan tartil",
      "B. mengubah perilaku manusia yang telah menyimpang dari aturan Allah",
      "C. mengajak manusia mentaati perintah Allah dan menjauhi larangan-Nya",
      "D. menyeru manusia tentang indahnya surga dan seramnya neraka",
      "E. menerapkan kaidah hukum fiqh dalam semua aspek kehidupan"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Dakwah harus memiliki sasaran yang jelas, karena itu harus menggunakan metode. Berlandaskan Q.S. al-Nahl/16: 125, dijelaskan metode yang dilakukan dai berikut ini, kecuali … .",
    pilihanJawaban: [
      "A. dakwah disampaikan dengan cara hikmah",
      "B. dalam berdakwah harus di jalan Allah Swt.",
      "C. dengan cara yang indah dan menyenangkan",
      "D. apabila diperlukan boleh dengan cara berdebat kusir",
      "E. adanya dialog yang baik antara dai dan yang didakwahi"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan Hadis di bawah ini! \nبَلِّغُواعَنِّي وَلَوْ آيَةً Banyak hal yang memengaruhi keberhasilan tablig. Namun, ada hal terpenting, sesuai dengan isi kandungan Hadis, yaitu: .. .  ",
    pilihanJawaban: [
      "A. ketenteraman saat melakukan tablig",
      "B. metode, strategi, dan cara yang dipakai",
      "C. keterlibatan semua pihak menggalang dana",
      "D. tablig itu tidak mengenal derajat dan martabat",
      "E. kewajiban setiap mubalig menyesuaikan kemampuan"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan Q.S. al-Jumu’ah/62: 9 berikut ini! \nيٰٓاَيُّهَا الَّذِيْنَ اٰمَنُوْٓا اِذَا نُوْدِيَ لِلصَّلٰوةِ مِنْ يَّوْمِ الْجُمُعَةِ فَاسْعَوْا اِلٰى ذِكْرِ اللّٰهِ وَذَرُوا الْبَيْعَۗ ذٰلِكُمْ خَيْرٌ لَّكُمْ اِنْ كُنْتُمْ تَعْلَمُوْنَ    (الجمعة /٦٢: ٩)  Isi yang terkandung dari ayat tersebut adalah … .",
    pilihanJawaban: [
      "A. kewajiban melakukan shalat",
      "B. menghentikan kegiatan jual beli",
      "C. bersiap-siap mendengarkan khutbah",
      "D. segera ke masjid untuk Shalat Jum’at",
      "E. kewajiban melakukan 2 kali khutbah"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Adanya khutbah menjadi bagian penting dari Shalat Jum’at. Khutbah bukan sekadar dilaksanakan, namun ada juga fungsi lain dari khutbah, yaitu … .",
    pilihanJawaban: [
      "A. mengingatkan kembali tentang kehidupan yang benar",
      "B. timbulnya kesadaran mendalam tentang kewajiban shalat",
      "C. membebaskan seorang muslim dari kewajiban shalat",
      "D. gugurnya kewajiban shalat bagi seorang muslim",
      "E. terbebasnya kewajiban karena ada udzur"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Dakwah itu diwajibkan bagi setiap muslim. Ketentuan menjadi dai lebih longgar dibanding khatib. Salah satu yang bukan syarat menjadi dai adalah … .",
    pilihanJawaban: [
      "A. memiliki ilmu dan pengetahuan yang memadai",
      "B. mengembangkan wawasan ke-Islam-an dan kebangsaan",
      "C. memilah ilmu sesuai dengan besar kecilnya manfaat yang didapat",
      "D. hidupnya harus sejalan dengan ajaran Islam yang disampaikan",
      "E. memberikan contoh dan teladan bagi diri dan pihak lain"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Hanya orang tertentu yang dapat menjadi khatib. Di antara ketentuannya adalah muslim yang sudah balig, berakal sehat dan taat beribadah. Semua itu bagian dari … ",
    pilihanJawaban: [
      "A. rukun khutbah",
      "B. syarat khutbah",
      "C. tata tertib khatib",
      "D. adab khutbah",
      "E. syarat khatib"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Menjadi pemimpin yang adil, begitu juga menjadi rakyat yang taat, menjadi harapan kita semua. Jika ada persoalan yang belum dapat dipecahkan, harus tetap dicari solusinya secara adil, yang maknanya adalah … .",
    pilihanJawaban: [
      "A. mencari solusi dari beberapa pilihan yang sama-sama menyulitkan",
      "B. keterlibatan beberapa komponen masyarakat yang bersatu padu",
      "C. semua orang tanpa kecuali diperlakukan sama di mata hukum",
      "D. bersikap menyatukan dan mendamaikan masyarakat",
      "E. tertibnya lingkungan dari kesadaran masyarakat"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Kehidupan saat ini sering kita temukan konflik kepentingan antar berbagai kelompok masyarakat. Semua itu harus kita hadapi dengan adil dan bijak. Jika tidak, muncul kelompok penyusup yang berdampak negatif bagi … .",
    pilihanJawaban: [
      "A. kerusakan fasilitas umum dan kerugian fisik serta materi",
      "B. berlalunya waktu dan sumber daya masyarakat yang mengitari",
      "C. keamanan menjadi kondusif dan belum dapat dipisahkan",
      "D. sikap dari sebagian masyarakat yang ingin damai",
      "E. sikap dari sebagian masyarakat yang ingin damai"
    ],
    jawabanBenar: "",
  ),
];

List<SoalPilihanGanda> pilihanGanda5 = [
  SoalPilihanGanda(
    pertanyaan:
        "Saat jayanya  kerajaan Islam, peran ulama sangat menonjol sebagai bagian dari pejabat elite. Adapun perannya yang paling penting adalah … . ",
    pilihanJawaban: [
      "A. duduk menemani para pemimpin yang membidangi pemerintahan ",
      "B. berbeda-beda peran sesuai wilayah atau daerah yang dikuasai ",
      "C. menjadi penasehat di bidang keagamaan bagi kerajaan ",
      "D. mempengaruhi pemimpin agar menegakkan aturan",
      "E. dikembalikan aturan bernegara yang menyimpang"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Syekh Nawawi pernah menjadi imam di Masjidil Haram, mengajar di Haramain, dan mendapatkan gelar Sayyidul Hijaz. Saat itu, yang termasuk Hijaz adalah wilayah … .",
    pilihanJawaban: [
      "A. Timur Tengah seluruhnya",
      "B. Makkah, Madinah, dan Damaskus",
      "C. Palestina, Yordania dan Yaman",
      "D. Saudi Arabia, Irak dan Iran",
      "E. Jazirah Arab, Makkah, Madinah"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Sampai saat ini, karya-karya beliau masih dipelajari, dikaji, dan ditelaah di pesantren. Misalnya kitab Sullam al-Munâjah syarah Safînah al-Shalâh dan Nashâih al-‘Ibâd syarah al-Manbaĥâtu ‘ala al-Isti’dâd li yaum al-Mi’âd. Itu adalah karya tulis dari … .",
    pilihanJawaban: [
      "A. Abu Abdul Mu’thi Nawawi al-Tanari al-Bantani  ",
      "B. Syaikh Yusuf Abul Mahasin Tajul Khalwati al-Makasari",
      "C. Abdus Samad bin Abdullah al-Jawi al-Palimbani",
      "D. Muhammad Sholeh bin Umar al-Samarani ",
      "E. Nuruddin bin Ali ar-Raniri"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Setiap tanah yang dipijak, selalu melakukan dakwah, bahkan saat diasingkan, beliau bahkan diberi gelar oleh Nelson Madela (Presiden Afrika Selatan) sebagai ‘Salah Seorang Putra Afrika Terbaik’. Beliau adalah … .",
    pilihanJawaban: [
      "A. Syaikh Yusuf Abul Mahasin Tajul Khalwati al-Makasari",
      "B. Abdus Samad bin Abdullah al-Jawi al-Palimbani ",
      "C. Muhammad Sholeh bin Umar al-Samarani",
      "D. Nuruddin bin Ali ar-Raniri",
      "E. Hamzah Fansuri"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Syekh Abdus Samad merupakan tokoh kunci pembuka dan pelopor perkembangan intelektualisme Nusantara Indonesia. Jumlah karyanya + 20 kitab/buku. Namun, karyanya yang terkenal dan sampai saat ini masih dipergunakan adalah … .",
    pilihanJawaban: [
      "A. Kaifiyāt al-Dzikir",
      "B. Al-Tafsir al-Munîr li al-Mu’âlim",
      "C. Al-Tausyîh/Quwt al-Habîb al-Gharîb",
      "D. Hidayatus Salikin dan Siyarus Salikin",
      "E. An-Nafhatu As Sailaniyah."
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Beliau adalah negarawan, ahli fikih, teolog, sufi, sejarawan dan sastrawan penting dalam sejarah Melayu pada abad ke-17. Perannya dalam perkembangan Islam di Nusantara tidak dapat diabaikan. Beliau adalah … .",
    pilihanJawaban: [
      "Abu Abdul Mu’thi Nawawi al-Tanari al-Bantani ",
      "Syekh Yusuf Abul Mahasin Tajul Khalwati al-Makasari",
      "Abdus Samad bin Abdullah al-Jawi al-Palimbani",
      "Muhammad Sholeh bin Umar al-Samarani ",
      "Syekh Nuruddin bin Ali ar-Raniri"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Syekh Abdul Rauf dapat dikatakan sebagai poros sejumlah ulama Nusantara. Adapun nama muridnya yang paling berjasa, sehingga mampu mendakwahkan Islam kepada kaum bangsawan Kerajaan Pagaruyung adalah … .",
    pilihanJawaban: [
      "Abu Abdul Mu’thi Nawawi",
      "B. Abul Mahasin Tajul Khalwati ",
      "C. Syekh Burhanudin Ulakan ",
      "D. Sholeh bin Umar",
      "E. Ali ar-Raniri"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Kiai Sholeh Darat menjadi salah satu pengajar di Makkah. Muridnya berasal dari seluruh penjuru dunia, termasuk dari Jawa dan Melayu. Berikut ini, murid dan santrinya yang berhasil di didik, kecuali … .",
    pilihanJawaban: [
      "A. Hadratu Syekh KH Hasyim Asy’ari",
      "B. KH Ahmad Dahlan",
      "C. RA. Kartini",
      "D. Iskandar Zulkarnain",
      "E. KH Amir Idris"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Sepanjang hayatnya, beliau tidak hanya fasih berbahasa Melayu, tetapi juga Jawa, Siam (Thailand), Hindi, Arab, dan Persia. Namun, karya tulisnya menggunakan Bahasa Melayu. Beliau adalah … .",
    pilihanJawaban: [
      "A. Mbah Sholeh Darat",
      "B. Muhammad Arsyad",
      "C. Bukhari al-Jauhari",
      "D. Syekh Hamzah Fansuri",
      "E. KH Dahlan Tremas"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Ajaran pokok tarekat Syekh Yusuf berkisar pada usaha manusia untuk mendekatkan diri kepada Allah Swt. Di antara risalah yang ditulisnya berjudul an-Nafhatu as-Sailaniyah yang pokok isinya tentang … .",
    pilihanJawaban: [
      "A. memohon (berdoa) itu semestinya hanya kepada Allah Swt",
      "B. petunjuk-petunjuk bagi orang yang akan mulai memasuki tarekat",
      "C. berdiam diri tidak bicara, kecuali mengucapkan kalimat dzikir",
      "D. berwudhu terlebih dahulu, jika ada hadas (besar dan kecil)",
      "E. ada 20 macam adab berdzikir"
    ],
    jawabanBenar: "",
  ),
];
