class MengidentifikasiTajwidModel {
  final String kalimat;
  final String hukumBacaan;
  final String sebab;

  MengidentifikasiTajwidModel({
    required this.kalimat,
    required this.hukumBacaan,
    required this.sebab,
  });
}

List<MengidentifikasiTajwidModel> mengidentifikasiTajwid = [
  MengidentifikasiTajwidModel(
      kalimat: "Kalimat", hukumBacaan: "Hukum Bacaan", sebab: "Sebab"),
  MengidentifikasiTajwidModel(
      kalimat: "اِنَّ",
      hukumBacaan: "غنة  (Ghunnah) ",
      sebab: "Nun Bertasydid"),
  MengidentifikasiTajwidModel(
      kalimat: "السَّمٰوٰتِ",
      hukumBacaan: "الْ شمسة (Al Syamsiah)",
      sebab: "ال ← س"),
  MengidentifikasiTajwidModel(
      kalimat: "وَالنَّهَارِ",
      hukumBacaan: "مد طبيمي (Mad Thabi’i)",
      sebab: "Ada Alif, huruf sebelumnya berfathah"),
  MengidentifikasiTajwidModel(
      kalimat: "قِيَامًا وَّقُعُوْدًا ",
      hukumBacaan: "ادغام بغنة",
      sebab: "Tanwin bertemu huruf و"),
  MengidentifikasiTajwidModel(
      kalimat: "خَلَقْتَ ",
      hukumBacaan: "قلقلة Qalqalah",
      sebab: "Huruf ق bersukun (mati) "),
  MengidentifikasiTajwidModel(
      kalimat: "عَذَابَ ",
      hukumBacaan: "مد طبيعي (Mad Thabi’i)",
      sebab: "Ada Alif, huruf sebelumnya berfathah"),
];
