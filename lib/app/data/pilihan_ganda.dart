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

List<SoalPilihanGanda> pilihanGanda6 = [
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan Q.S. Yūnus/10: 40, di bawah ini! \n              ..... وَمِنْهُمْ مَّنْ يُؤْمِنُ بِهِ وَمِنْهُمْ مّنْ لَّا يُؤْمِنُ بِهِ ۗ  وَرَبُّكَ  \n Sambungan ayat di atas yang tepat adalah ….",
    pilihanJawaban: [
      "A.  مِمَّآ اَعْمَلُ ",
      "B.  أَنْتُمْ بَرِيٓ‍ُٔوْنَ",
      "C.  اَعۡلَمُ بِالۡمُفۡسِدِيْنَ",
      "D.  مِّمَّا تَعۡمَلُوْنَ",
      "E.  وَأَنَا۠ بَرِيْٓءٌ"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Dalam Q.S. Yūnus/10: 41 ada kalimat  ...فَقُلْ لِّيْ عَمَلِيْ  Terjemahan yang tepat untuk kalimat di atas adalah ….",
    pilihanJawaban: [
      "A. maka dengarkanlah, “Bagiku pekerjaanku…",
      "B. maka dengarkanlah, Bagimu pekerjaanku…",
      "C. maka katakanlah, “Bagimu pekerjaanku…",
      "D. maka katakanlah, “Bagiku pekerjaanmu…",
      "E. maka katakanlah, “Bagiku pekerjaanku…"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Diantara isi Q.S. Yūnus/10: 40-41 adalah agar umat Islam mempunyai sikap …. ",
    pilihanJawaban: [
      "A. wira’i",
      "B. zuhud",
      "C. qana’ah",
      "D. samhah",
      "E. syaja’ah"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan ayat di bawah ini!\n وَاِنْ كَذَّبُوْكَ فَقُلْ لِّيْ عَمَلِيْ وَلَكُمۡ عَمَلُكُمۡۖ اَنْتُمْ بَرِيٓ‍ُٔوْنَ مِمَّآ اَعۡمَلُ وَاَنَا۠ بَرِيْٓءٌ مِّمَّا تَعۡمَلُوْنَ   \nDari ayat yang digaris bawahi di atas bacaan tajwid yang benar dan urut adalah….",
    pilihanJawaban: [
      "A. idzhar syafawi, ikhfa’, ghunnah dan mad wajib munfasil",
      "B. ikhfa’ syafawi, ikhfa’, ghunnah, dan mad jaiz munfasil ",
      "C. ikhfa, ikhfa’ syafawi, mad jaiz munfasil, dan ghunnah",
      "D. mad wajib muttasil, ghunnah, ikhfa, ikhfa’ syafawi",
      "E. ikhfa’, idzhar syafawi, ghunnah, dan mad jaiz munfasil"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Dalam Hadis Nabi Muhammad Saw., dari Abu Hurairah r.a., bahwa al-Thufail bin ‘Amr menemui Nabi Muhammad Saw. dan menceritakan bahwa Daus (salah satu kabilah Yaman) telah durhaka dan menolak ajaran dakwahnya, dan meminta agar Nabi mendoakan mereka binasa. Terhadap hal tersebut, respon Nabi Muhammad Saw. Sesuai dengan hadis tersebut adalah ….",
    pilihanJawaban: [
      "A. Nabi berdoa, “Ya Allah berilah azab kepada kabilah Daus dan datangkanlah (mereka) bersama orang yang binasa.” ",
      "B. Nabi berdoa, “Ya Allah berilah azab kepada kabilah Daus dan datangkanlah (mereka) bersama orang yang kufur.”",
      "C. Nabi berdoa, “Ya Allah berilah petunjuk kepada kabilah Daus dan datangkanlah (mereka) bersama orang muslim (masuk Islam).”",
      "D. Nabi berdoa, “Ya Allah berilah petunjuk kepada kabilah Daus dan datangkanlah (mereka) bersama orang yang ahl al-ilmi.”",
      "E. Nabi berdoa, “Ya Allah berilah petunjuk kepada kabilah Daus dan datangkanlah (mereka) bersama pemimpin yang adil.”"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan ayat di bawah ini! \n   مَنْ أَحْيَاهَا فَكَأَنَّمَا أَحْيَا النَّاسَ جَمِيعًا  \nTerjemahan yang tepat dari ayat di atas adalah ….",
    pilihanJawaban: [
      "A. Barangsiapa memelihara kehidupan seorang manusia, maka seakan-akan dia telah memelihara kehidupan semua manusia",
      "B. Barangsiapa memelihara kehidupan seorang manusia, maka seakan-akan dia telah memelihara kehidupan banyak manusia",
      "C. Barangsiapa memelihara kehidupan yang ada di bumi, maka seakan-akan dia telah memelihara kehidupan semua makhluk",
      "D. Barangsiapa memelihara kehidupan seluruh makhluk, maka seakan-akan dia telah memelihara kehidupan di alam semesta",
      "E. Barangsiapa memelihara kehidupan banyak manusia, maka seakan-akan dia telah memelihara kehidupan seluruh manusia"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan Q.S. Al-Maidah/ 5: 32 di bawah ini!  مِنۡ اَجۡلِ ذٰلِكَ  كَتَبۡنَا عَلىٰ بَنِيْٓ إِسۡرَٰٓءِيْلَ اَنَّهٗ مَنْ قَتَلَ نَفۡسًاۢ بِغَيۡرِ نَفۡسٍ اَوۡ فَسَادٍ فِى الۡاَرۡضِ فَكَاَنَّمَا قَتَلَ النَّاسَ جَمِيْعًاۗ   Dari ayat di atas yang digarisbawahi mempunyai bacaan tajwid secara urut adalah ….",
    pilihanJawaban: [
      "A. idzhar khalqi, qalqalah sughra, ikhfa’, ghunnah, dan mad thabi’i ",
      "B. idzhar khalqi, qalqalah kubra, ikhfa’, ghunnah, dan mad thabi’i",
      "C. idzhar khalqi, qalqalah sughra, ikhfa’ syafawi, ghunnah, dan mad thabi’i",
      "D. idzhar khalqi, qalqalah sughra, ikhfa’, iqlab, dan mad thabi’i",
      "E. idzhar khalqi, qalqalah sughra, ikhfa’, ghunnah, dan mad ’arid"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Pernyataan di bawah ini yang merupakan penerapan dari Q.S. Al-Maidah/ 5: 32 adalah ….",
    pilihanJawaban: [
      "A. melaksanakan shalat lima waktu di awal waktu",
      "B. melaksanakan shalat tahajud pada sepertiga malam",
      "C. memberikan santunan kepada anak yatim piatu",
      "D. berpuasa sunah setiap hari senin dan kamis",
      "E. membaca al-Quran setiap hari di rumah dan masjid"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Diriwatkan dari ‘Abdullah bin ‘Amr, dari Nabi Muhammad Saw., beliau bersabda: ”Barangsiapa yang membunuh mu’ahid (nonmuslim yang mendapatkan janji jaminan keamanan dari orang muslim) tidak akan dapat mencium harumnya surga, padahal harumnya dapat dicium dari perjalanan ….",
    pilihanJawaban: [
      "A. sepuluh tahun",
      "B. dua puluh tahun",
      "C. tiga puluh tahun",
      "D. empat puluh tahun",
      "E. lima puluh tahun"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Dalam hadis riwayat Muslim, bahwa Nabi Muhammad Saw. menyebutkan bahwa orang yang datang pada hari kiamat membawa shalat, puasa dan zakat. Tetapi di samping itu juga pernah mencaci si ini, menuduh si ini, makan harta si ini, menumpahkan darah si ini, dan memukul si ini. Dalam hadis tersebut disebut dengan orang yang ….",
    pilihanJawaban: [
      "A. al-mukhlis",
      "B. al-muflis",
      "C. al-muhsin",
      "D. al-dzalim",
      "E. al-‘ashi"
    ],
    jawabanBenar: "",
  ),
];
List<SoalPilihanGanda> pilihanGanda7 = [
  SoalPilihanGanda(
    pertanyaan:
        "Dalam Hadis Nabi Muhammad Saw. yang diriwayatkan Al-Bukhāri, bahwa maksudnya kekayaan itu adalah ….",
    pilihanJawaban: [
      "A. kekayaan harta",
      "B. kekayaan hati",
      "C. kekayaan pikiran",
      "D. kekayaan materi",
      "E. kekayaan intelektual"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan Q.S. Al-Ahzab/33: 35 di bawah ini!  \nاِنَّ الْمُسْلِمِيْنَ وَالْمُسْلِمٰتِ وَالْمُؤْمِنِيْنَ وَالْمُؤْمِنٰتِ وَالْقٰنِتِيْنَ وَالْقٰنِتٰتِ وَالصّٰدِقِيْنَ وَالصّٰدِقٰتِ وَالصّٰبِرِيْنَ وَالصّٰبِرٰتِ وَالْخٰشِعِيْنَ وَالْخٰشِعٰتِ وَالْمُتَصَدِّقِيْنَ وَالْمُتَصَدِّقٰتِ وَالصَّاۤىِٕمِيْنَ وَالصّٰۤىِٕمٰتِ وَالْحٰفِظِيْنَ فُرُوْجَهُمْ وَالْحٰفِظٰتِ وَالذّٰكِرِيْنَ اللّٰهَ كَثِيْرًا وَّالذّٰكِرٰتِ اَعَدَّ اللّٰهُ لَهُمْ مَّغْفِرَةً وَّاَجْرًا عَظِيْمًا  (الاحزاب/ ٣٣: ٣٥)    \nDari ayat di atas, merupakan dalil naqli tentang salah satu cabang iman yaitu ….",
    pilihanJawaban: [
      "A. menjaga kehormatan",
      "B. ikhlas",
      "C. malu",
      "D. zuhud",
      "E. taqarrub"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Di bawah ini yang merupakan pemahaman yang benar tentang sifat zuhud adalah . . . .",
    pilihanJawaban: [
      "A. tidak boleh memiliki harta karena akan melalaikan kepada Allah",
      "B. mencari harta dengan optimal untuk keluarga mumpung masih hidup",
      "C. mengesampingkan kewajiban kerja dengan selalu beribadah",
      "D. mencari nafkah sepanjang waktu dalam hidup karena waktu adalah uang",
      "E. menjadikan harta dunia untuk mengantarkan kebahagiaan di akhirat"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Meninggalkan kenikmatan duniawi untuk mendapatkan kenikmatan akhirat merupakan salah satu ciri orang yang memiliki sifat zuhud. Namun tidak hanya itu, orang yang memiliki sifat zuhud memiliki ciri lain yaitu . . . .",
    pilihanJawaban: [
      "A. senang mencela dan susah untuk memuji orang lain",
      "B. membenci orang yang memberikan celaan kepadanya",
      "C. marah-marah ketika mendapat pujian orang lain",
      "D. sangat senang akan pujian yang datang dari orang lain",
      "E. bersikap sederhana baik saat dipuji maupun saat dicela"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan: "Di bawah ini merupakan tingkatan ikhlas dengan urut adalah ….",
    pilihanJawaban: [
      "A. awam, khas, dan khawasul khas",
      "B. awam, khawasul khawas, dan khawas",
      "C. awam, khawas, dan khawasul khawas",
      "D. awam, khas, dan khawasul khawas",
      "E. awam, khawas, dan khawasul khas"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan: "Di bawah ini yang termasuk ciri-ciri orang ikhlas adalah ….",
    pilihanJawaban: [
      "A. malas beribadah jika sendirian dan rajin dihadapan banyak orang",
      "B. senantiasa beramal dan bersungguh-sungguh dalam beramal",
      "C. bergairah beribadah ketika dipuji dan tidak bersemangat jika dicela",
      "D. melakukan segala sesuatu yang dilarang oleh Allah Swt.",
      "E. membedakan antara amal yang rewardnya besar dan kecil"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan: "Di bawah ini merupakan manfaat ikhlas adalah ….",
    pilihanJawaban: [
      "A. menambah kekayaan di dunia",
      "B. terhindar dari tipu daya setan",
      "C. menjadi orang yang terkenal ",
      "D. mendapatkan pujian dari teman",
      "E. dicari banyak orang untuk dibantu"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Dalam Hadis Nabi Muhammad Saw. yang diriwayatkan Al-Tirmidzī bahwa yang termasuk malu kepada Allah dengan sebenarnya adalah ….",
    pilihanJawaban: [
      "A. menjaga seluruh jiwanya dengan mengikutsertakan program asuransi",
      "B. menjaga harta benda yang dimilikinya dengan menabung di Bank Syari’ah",
      "C. menjaga seluruh anggota badan dari perbuatan yang dilarang oleh agama Islam",
      "D. menjaga seluruh keluarga dengan memasang CCTV di dalam dan di luar rumah",
      "E. menjaga lingkungan sekitar dengan melakukan jaga malam secara bergantian "
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan pernyataan di bawah ini! \n1) menghindari dari perbuatan maksiat\n2) menghantarkan hambanya melakukan kebaikan \n3) mengurangi rezeki \n4) lebih dekat dengan Allah Swt.\n5) tidak mendapatkan pekerjaan \nDari pernyataan di atas, yang termasuk manfaat sikap malu sebagai /ncabang Iman adalah ….",
    pilihanJawaban: [
      "A. 1), 2), dan 3)",
      "B. 1), 3), dan 4)",
      "C. 2), 3), dan 4)",
      "D. 2), 4), dan 1)",
      "E. 3), 5), dan 1)"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Malu merupakan tanda baik atau tidaknya iman seseorang. Malu berbeda dengan tidak percaya diri. Oleh karenanya, malu ini harus ditempatkan pada posisi yang tepat. Salah satu penerapan sifat malu yang tepat di bawah ini adalah….",
    pilihanJawaban: [
      "A. malu tidak mengerjakan tugas",
      "B. malu menghadiri pengajian umum ",
      "C. malu diejek teman apabila berjilbab",
      "D. malu salat berjama’ah di masjid",
      "E. malu tidak mempunyai HP terbaru"
    ],
    jawabanBenar: "",
  ),
];
List<SoalPilihanGanda> pilihanGanda8 = [
  SoalPilihanGanda(
    pertanyaan:
        "Adab dari segi bahasa menunjuk kepada sesuatu yang sudah lama dikakukan dan sudah membudaya dalm kehidupan. Dari sini dapat diketahui bahwa makna dari adab adalah kecuali….",
    pilihanJawaban: [
      "A. adat istiadat",
      "B. kebiasaan",
      "C. etika",
      "D. norma",
      "E. kehendak"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan Q.S. Al-Hujurāt/49: 6 dibawah ini!\n يٰٓاَيُّهَا الَّذِيْنَ اٰمَنُوْٓا اِنْ جَاۤءَكُمْ فَاسِقٌۢ بِنَبَاٍ فَتَبَيَّنُوْٓا اَنْ تُصِيْبُوْا قَوْمًاۢ بِجَهَالَةٍ فَتُصْبِحُوْا عَلٰى مَا فَعَلْتُمْ نٰدِمِيْنَ  (الحجرٰت/ ٤٩: ٦)  \nDari ayat di atas dapat diketahui bahwa apabila seorang yang fasik datang kepadamu membawa suatu berita, maka kalian hendaknya …. ",
    pilihanJawaban: [
      "A. mengamati kebenaran beritanya",
      "B. mengembalikan kembali ke orang tersebut",
      "C. menyerahkan orang lain untuk menerimanya",
      "D. meneliti kebenaran beritanya",
      "E. meneruskan berita tersebut kepada orang lain"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan hadis Nabi Muhammad Saw. di bawah ini!\n عَنْ أَبِي الْخَيْرِ أَنَّهُ سَمِعَ عَبْدَ اللّٰهِ بْنَ عَمْرِو بْنِ الْعَاصِ يَقُولُ إِنَّ رَجُلًا سَأَلَ رَسُوْلَ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ أَيُّ الْمُسْلِمِينَ خَيْرٌ قَالَ مَنْ سَلِمَ الْمُسْلِمُوْنَ مِنْ لِسَانِهِ وَيَدِهِ (رواه مسلم) \nDari hadis di atas dapat diketahui bahwa maksud muslim yang paling baik adalah …. ",
    pilihanJawaban: [
      "A. seorang muslim yang keluarganya merasa aman dari gangguan lisan dan tangannya",
      "B. seorang muslim yang orang lain merasa aman dari gangguan lisan dan tangannya",
      "C. seorang muslim yang kelompoknya merasa aman dari gangguan lisan dan tangannya ",
      "D. seorang muslim yang temannya merasa aman dari gangguan lisan dan tangannya",
      "E. seorang muslim yang adiknya merasa aman dari gangguan lisan dan tangannya"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Al-Qur’an memberikan panduan dalam menggunakan media sosial. Diantaranya adalah dalam Q.S. Al-Haj/22: 30. Dalam ayat tersebut, hendaknya kalian mematuhi adab menggunakan media sosial, yaitu ….",
    pilihanJawaban: [
      "Al-Qur’an memberikan panduan dalam menggunakan media sosial. Diantaranya adalah dalam Q.S. Al-Haj/22: 30. Dalam ayat tersebut, hendaknya kalian mematuhi adab menggunakan media sosial, yaitu ….",
      "B. menyampaikan informasi tanpa rekayasa atau manipulasi",
      "C. bersikap bijak dalam menerima informasi atau berkomentar",
      "D. berniat yang baik dalam menggunakan media sosial",
      "E. dapat mengambil hikmah dalam menggunakan media sosial"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Dalam mengupdate status atau mengunggah tulisan di media sosial, umat Islam harus mengikuti perintah dalam Al-Qur’an. Diantaranya dalam Q.S. Al-Hujurāt/49: 12. Di bawah ini adalah isi perintahnya, yaitu….",
    pilihanJawaban: [
      "A. menghindari husnudzan, tajassus, dan ghibah",
      "B. melaksanakan husnudzan, tajassus, dan ghibah",
      "C. menghindari su’udzan, tajassus, dan melaksanakan ghibah",
      "D. menghindari su’udzan, dan melaksanakan tajassus, dan ghibah",
      "E. menghindari su’udzan, tajassus, dan ghibah"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan pernyataan di bawah ini!\n1) mengajak kepara orang lain untuk berbuat kebaikan \n2) memilih teman bermain dari daerahnya sendiri\n3) menyampaikan argumentasi dengan cara yang baik\n4) berniat yang baik dalam menggunakan media sosial\n5) memproduksi konten yang bersifat hate speech\nDari pernyataan tersebut, yang termasuk adab menggunakan media sosial adalah ….",
    pilihanJawaban: [
      "A. 1), 2), dan 3)",
      "B. 1), 2), dan 4)",
      "C. 2), 3), dan 5)",
      "D. 3), 4), dan 5)",
      "E. 3), 4), dan 1)"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Dalam Hadis Nabi Muhammad Saw. yang diriwayatkan oleh Tirmidzī disebutkan bahwa maksud sebagian dari kebaikan Islam seseorang adalah ….",
    pilihanJawaban: [
      "A. meninggalkan daerahnya untuk mencari rezeki",
      "B. meninggalkan teman yang berbuat kemaksiatan",
      "C. meninggalkan kemaksiatan menuju ketakwaan",
      "D. meninggalkan sesuatu yang tidak bermanfaat baginya",
      "E. meninggalkan kampungnya untuk menuntut ilmu"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Dalam Hadis Nabi Muhammad Saw. yang diriwayatkan Muslim bahwa barangsiapa yang menunjukkan kepada kebaikan, maka ….",
    pilihanJawaban: [
      "A. orang tersebut akan mendapatkan pahala yang lebih besar orang yang menjalankan kebaikan tersebut",
      "B. orang tersebut akan mendapatkan pahala yang sama seperti orang yang menjalankan kebaikan tersebut",
      "C. orang tersebut akan mendapatkan pahala kurang lebih sama dari orang yang menjalankan kebaikan tersebut",
      "D. orang tersebut akan mendapatkan pahala dua kali lipat dari orang yang menjalankan kebaikan tersebut",
      "E. orang tersebut akan mendapatkan pahala tiga kali lipat dari orang yang menjalankan kebaikan tersebut"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Saat ini banyak para ustadz dan artis menggunakan media sosial untuk mengupload kegiatan kajian keislaman. Hal ini menunjukkan bahwa media sosial dapat bermanfaat sebagai ….",
    pilihanJawaban: [
      "A. media pertunjukkan ibadah",
      "B. sarana dalam berdakwah",
      "C. media menunjukkan status",
      "D. perantara datangnya rizki",
      "E. menaikkan popularitas"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Di bawah ini adalah bentuk penerapan adab dalam menggunakan media sosial yang benar, yaitu ….",
    pilihanJawaban: [
      "A. saling menghormati dan menghargai antaranggota dalam satu grup",
      "B. mengirimkan berita di media sosial yang mengandung unsur tajassus",
      "C. menanggapi komentar teman satu daerah saja di media sosial",
      "D. mengajak teman untuk menyebarkan informasi yang belum tahu sumbernya",
      "E. menghindari informasi yang mengajak untuk berbuat baik kepada sesama"
    ],
    jawabanBenar: "",
  ),
];
List<SoalPilihanGanda> pilihanGanda9 = [
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan hadis di bawah ini! \nيَا مَعْشَرَ الشَّبَابِ مَنِ اسْتَطَاعَ مِنْكُمُ الْبَاءَةَ فَلْيَتَزَوَّجْ فَإِنَّهُ أَغَضُ لِلْبَصَرِ وَأَحْصَنُ لِلْفَرْجِ وَمَنْ لَمْ يَسْتَطِعْ فَعَلَيْهِ بِالصَّوْمِ فَإِنَّهُ لَهُ وِجَاءٌ  (رواه البخاری) \nHadis di atas menjadi dasar penetapan hukum menikah bagi seorang laki-laki. Sesuai hadis tersebut, menikah hukumnya wajib bagi orang yang....  ",
    pilihanJawaban: [
      "A. sudah memiliki pekerjaan tetap dan memiliki rumah sendiri serta memiliki tabungan",
      "B. tidak ada alasan untuk menolak ataupun menerima dilakukannya sebuah pernikahan",
      "C. sudah mampu menikah secara lahir batin serta tidak sanggup menghindar dari zina",
      "D. sudah mampu menikah secara lahir batin dan mampu menghindar dari zina",
      "E. sudah memiliki syarat-syarat sesuai dengan peraturan di lingkungan masyarakat"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Seorang pria dan wanitia pergi melaksanakan umrah ke tanah suci. Disela-sela ibadah umrah, sebelum melakukan tahalul, dia melangsungkan pernikahan yang disaksikan oleh dua orang saksi. Dari peristiwa tersebut, hukum pernikahannya adalah ….",
    pilihanJawaban: [
      "A. sunah",
      "B. haram",
      "C. wajib",
      "D. mubah ",
      "E. makruh"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan pernyataan di bawah ini!\n1) harta\n2) status\n3) jabatan\n4) agama \n5) kecantikan/ketampanan\n6) keturunan\nDari pernyataan di atas yang termasuk pertimbangan dalam menikah sebagaimana yang dituntunkan oleh Nabi Muhammad Saw. adalah ….",
    pilihanJawaban: [
      "A. 1), 2), 3), dan 6)",
      "B. 1), 2), 4), dan 6)",
      "C. 1), 2), 5), dan 6)",
      "D. 4), 5), 6), dan 1)",
      "E. 4), 5), 6), dan 2)"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Rukun nikah adalah suatu perkara yang harus dipenuhi dalam pelaksanaan nikah, jika tidak maka nikahnya tidak sah. Rukun nikah itu adalah sebagai berikut, kecuali …. ",
    pilihanJawaban: [
      "A. calon suami ",
      "B. calon istri",
      "C. ijab kabul",
      "D. dua orang saksi",
      "E. bapak calon istri"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan: "Kewajiban material suami kepada istrinya adalah …. ",
    pilihanJawaban: [
      "A. memberi perlindungan keselamatan kepada istrinya",
      "B. memberi kesehatan badan dan rohani istri",
      "C. memberi nafkah istri sesuai kemampuannya ",
      "D. memperhatikan keadaan istrinya dan melindungi istri",
      "E. meningkatkan mutu keislaman istrinya"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan: "Di bawah ini yang bukan merupakan tujuan nikah adalah …..",
    pilihanJawaban: [
      "A. supaya hidup manusia tenteram dan bahagia",
      "B. melaksanakan perintah Allah Swt.",
      "C. membina rumah tangga dengan kasih sayang ",
      "D. mengikuti sunah Rasulullah Saw. ",
      "E. terpenuhinya kebutuhan biologis semata"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Perhatikan daftar di bawah ini!\n1) Calon suami;\n2) Calon Istri;\n3) Mahar;\n4) Wali;\n5) 2 orang saksi;\n6) Walimah\n7) Ijab qabul\nDari daftar di atas, yang termasuk rukun menikah ditunjukkan pada nomor ….",
    pilihanJawaban: [
      "A. 1), 2), 3), 4), 5)",
      "A. 1), 2), 3), 4), 5)",
      "C. 1), 2), 3), 6), 7)",
      "D. 1), 2), 4), 5), 6)",
      "E. 1, 2), 4), 5), 7) "
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Batas usia minimal menurut UU No. 16 Tahun 2019 baik laki-laki maupun perempuan adalah … ",
    pilihanJawaban: [
      "A. 17 tahun",
      "B. 18 tahun",
      "C. 19 tahun",
      "D. 20 tahun",
      "E. 21 tahun"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Hukum menikah ditujukan untuk orang yang sudah mampu dari segi lahir dan batin untuk menikah namun masih sanggup mengendalikan dirinya dari godaan yang menjurus kepada perzinaan adalah ….",
    pilihanJawaban: [
      "A. wajib",
      "B. sunah",
      "C. haram",
      "D. mubah",
      "E. makruh"
    ],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan:
        "Di bawah ini yang bukan termasuk hikmah dalam pernikahan adalah ….",
    pilihanJawaban: [
      "A. dapat melaksanakan perintah Allah Swt. dan Rasul-Nya;",
      "B. terbentuknya keluarga bahagia dan saling menyayangi;",
      "C. terhindar dari bahan ejekan dari masyarakat",
      "D. terjalinnya hubungan yang diridhai oleh Allah Swt. ",
      "E. mendatangkan pahala dan menjauhkan dari dosa besar"
    ],
    jawabanBenar: "",
  ),

];

List<SoalPilihanGanda> pilihanGanda10 = [
  SoalPilihanGanda(
    pertanyaan: "Ajaran Islam bukan hanya mementingkan soal akhirat, tetapi juga soal dunia. Umat Islam juga harus memperhatikan kehidupan dunia. Pemikiran ini dikemukakan oleh ….",
    pilihanJawaban: ["A. Jamaludin al-Afghani", "B. Muhammad Rasyid Ridha", "C. Muhammad Abduh", "D. Sultan Mahmud II", "E. Rifa’ah Baidawi R. al-Tahtawi"],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan: "Perhatikan tokoh di bawah ini!\n1) Muhammad Ali Pasya\n2) Muhammad Abduh\n3) Rifa’ah Baidawi Rafi’at at-Tahtawi\n4) KH. Ahmad Dahlan\n5) KH. Hasyim Asy’ari\n6) Muhammad Iqbal\nDari tokoh Islam pada masa modern yang berkiprah di Mesir adalah ….",
    pilihanJawaban: ["A. 1), 2), dan 3)", "B. 2), 3), dan 4)", "C. 3), 4, dan 5)", "D. 4), 5), dan 6)", "E. 5), 6), dan 1)"],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan: "Menurut Harun Nasution, membagi sejarah Islam ke dalam tiga periode besar. Di antaranya masa tahun 1800 sampai sekarang. Pada masa itu oleh Harun Nasution disebut dengan ….",
    pilihanJawaban: ["A. masa klasik ", "B. masa pertengahan", "C. masa transisi ", "D. masa modern", "E. masa kejayaan"],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan: "Pintu ijtihad masih terbuka lebar bagi umat Islam. Ijtihad merupakan dasar penting dalam menafsirkan kembali ajaran Islam. Pemikiran tersebut dikemukakan oleh….",
    pilihanJawaban: ["A. Jamaludin al-Afghani dan Sayyid Ahmad Khan", "B. Muhammad Rasyid Ridha dan Jamaludin al-Afghani", "C. Muhammad Abduh dan Muhammad Iqbal", "D. Sultan Mahmud II dan Namik Kemal", "E. Rifa’ah Baidawi dan Muhammad Ali Pasya"],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan: "Tokoh pembaharu pada abad ke-18 yang mendirikan sekolah Maktebi Ma’aarif dan Maktebi Ulum’i edibiyet dan sekolah kedokteran, militer, dan teknik adalah… ",
    pilihanJawaban: ["A. Jamaludin al-Afghani", "B. Muhammad Rasyid Ridha", "C. Muhammad Abduh", "D. Sultan Mahmud II", "E. Rifa’ah Baidawi"],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan: "Perhatikan kitab di bawah ini\n1) Al-Qadha wa al-Qadar\n2) Risalah tauhid\n3) Syarh Nahjil Balaghah\n4) Ishlahu al-Mahakim al-Syar’iyyah\n5) Adab al-Alim wa al-Muta’allim\nDari kitab di atas yang merupakan karya Muhammad Abduh adalah ….",
    pilihanJawaban: ["A. 1), 2), dan 3)", "B. 2), 3), dan 4)", "C. 3), 4, dan 5)", "D. 4), 5), dan 1)", "E. 5), 1), dan 2)"],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan: "Di bawah ini adalah tokoh pembaharu yang dikenal dengan bapak pendiri Negara Pakistan adalah ….",
    pilihanJawaban: ["A. Jamaludin al-Afghani", "B. Muhammad Rasyid Ridha", "C. Muhammad Abduh", "D. Sultan Mahmud II", "E. Muhammad Iqbal"],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan: "Di bawah ini adalah pokok-pokok pikiran KH. Ahmad Dahlan adalah kecuali ….",
    pilihanJawaban: ["A. fondasi dalam pemerintahan dalam Islam mempunyai tujuan memberi persamaan bagi setiap muslim, melayani kepentingan dengan cara perundingan, dan menjaga keadilan", "B. model pendidikan memadukan dua jenis yatu pesantren dan sekolah umum. Dalam pengajarannya menggabungkan antara sistem pengajaran pesantren dan Pendidikan Barat", "C. tujuan utama pendidikan Islam adalah membentuk manusia yang berbudi luhur, alim dalam agama, memiliki pandangan luas, dan paham tentang masalah ilmu keduniaan", "D. pendidikan harus mencetak manusia-manusia yang berjiwa nasionalisme dan patriotisme, sehingga bersedia berjuang untuk kemajuan masyarakat", "E. materi pendidikan harus meliputi: pendidikan moral dan akhlak, pendidikan individu, dan pendidikan kemasyarakatan"],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan: "KH. Hasyim Asy’ari adalah sosok yang produktif menulis kitab. Karya beliau yang berisi tentang pentingnya persatuan dan kesatuan di antara sesama umat Islam dalam merespon upaya-upaya yang telah dilakukan Belanda adalah….",
    pilihanJawaban: ["A. Adab al-alim wa al-muta’allim", "B. Al-Mawa’idz", "C. Al-Nur al-Mubin", "D. Al-Tanbihat wa al-wajibat ", "E. Al-Durar al-Muntatsirah "],
    jawabanBenar: "",
  ),
  SoalPilihanGanda(
    pertanyaan: "Di bawah ini yang bukan merupakan hikmah mempelajari perkembangan Islam pada abad modern, adalah ….",
    pilihanJawaban: ["A. mendorong umat Islam untuk menguasai IPTEK", "B. mendorong umat Islam untuk menjadi orang kaya", "C. mendorong semangat untuk berjuang", "D. mendorong umat Islam meraih kemajuan yang hakiki", "E. mendorong umat Islam memiliki prinsip hidup yang kuat "],
    jawabanBenar: "",
  ),
];
