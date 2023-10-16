class VokalPendek {
  final String tanda;
  final String nama;
  final String hurufLatin;
  final String nama2;

  VokalPendek({
    required this.tanda,
    required this.nama,
    required this.hurufLatin,
    required this.nama2,
  });
}

List<VokalPendek> vokalPendek = [
  VokalPendek(
      tanda: "Tanda", nama: "Nama", hurufLatin: "Huruf Latin", nama2: "Nama"),
  VokalPendek(tanda: "ــَـ", nama: "Fathah", hurufLatin: "A", nama2: "A"),
  VokalPendek(tanda: "ــَـ", nama: "Kasrah", hurufLatin: "I", nama2: "I"),
  VokalPendek(tanda: "ــُـ", nama: "Ḍammah", hurufLatin: "U", nama2: "U"),
];
List<VokalPendek> vokalPanjang = [
  VokalPendek(
      tanda: "Tanda",
      nama: "Nama",
      hurufLatin: "Huruf dan tanda",
      nama2: "Nama"),
  VokalPendek(
      tanda: "ــَـ",
      nama: "Fathah dan alif",
      hurufLatin: "ā",
      nama2: "a dan garis di atas"),
  VokalPendek(
      tanda: "ــَـٰـ",
      nama: "Kasrah dan ya",
      hurufLatin: "ī",
      nama2: "i dan garis di atas"),
  VokalPendek(
      tanda: "ــِيْـ ـ",
      nama: "Ḍammah dan wau",
      hurufLatin: "ū",
      nama2: "u dan garis di atas"),
];
