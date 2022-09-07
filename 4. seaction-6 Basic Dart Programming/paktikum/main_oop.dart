void main() {
  // hasil rumus dari luas lingkaran
  final luasLingkaran = SoalSatu(jari: 7);
  print('Soal I');
  luasLingkaran.luasLingkaran();

  // hasil membuat 3 variabel string dan menggabungkan String
  final soalDua =
      SoalDua(kalimat1: 'Amril', kalimat2: 'Rismanto', kalimat3: 'Ichsan');
  print('Soal II');
  soalDua.resultMergeString();
}

class SoalSatu {
  final int jari;
  SoalSatu({
    required this.jari,
  });

  luasLingkaran() {
    double hasilLuas = 22 / 7 * jari * jari;
    print("22/7 * $jari * $jari = " + hasilLuas.toString());
  }
}

class SoalDua {
  final String kalimat1, kalimat2, kalimat3;

  SoalDua({
    required this.kalimat1,
    required this.kalimat2,
    required this.kalimat3,
  });

  resultMergeString() {
    String mergeString = kalimat1 + ' ' + kalimat2 + ' ' + kalimat3;
    print(mergeString);
  }
}
