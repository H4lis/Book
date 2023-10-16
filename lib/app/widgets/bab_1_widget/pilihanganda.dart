import 'package:flutter/material.dart';
import '../../data/pilihan_ganda.dart';

class PilihanGandaSoal extends StatelessWidget {
  final List<SoalPilihanGanda> daftarSoal;

  PilihanGandaSoal({
    required this.daftarSoal,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: daftarSoal.length,
      itemBuilder: (BuildContext context, int index) {
        final soal = daftarSoal[index];
        final no = index + 1;
        return PilihanGandaSoalItem(soal: soal, noU: no);
      },
    );
  }
}
