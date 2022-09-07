void main() {
  int jari = 7;
  String kalimat1 = 'Amril';
  String kalimat2 = 'Rismanto';
  String kalimat3 = 'Ichsan';

  // hasil rumus dari luas lingkaran
  double hasilLuas = 22 / 7 * jari * jari;
  print("Soal I = 22/7 * $jari * $jari = " + hasilLuas.toString());

  // hasil membuat 3 variabel string dan menggabungkan String
  String mergeString = kalimat1 + ' ' + kalimat2 + ' ' + kalimat3;
  print('Soal II = ' + mergeString);
}
