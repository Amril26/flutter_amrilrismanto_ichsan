void main(List<String> args) {
  double sisi = 10;
  double panjang = 2;
  double lebar = 6;
  double tinggi = 4;

  BangunRuang bangunKubus = Kubus(sisi: sisi);
  final resultKubus = bangunKubus.volume();
  print(' volum kubus dari $sisi adalah  ' + resultKubus.toString() + 'cm');

  BangunRuang bangunBalok = Balok(p: panjang, l: lebar, t: tinggi);
  final resultBalok = bangunBalok.volume();
  print(
      'volum Balok Dari panjang = $panjang, lebar = $lebar, tinggi = $tinggi adalah $resultBalok');
}

class Balok extends BangunRuang {
  double p, l, t;
  Balok({required this.p, required this.l, required this.t});

  @override
  double get panjang => p;
  @override
  double get lebar => l;
  @override
  double get tinggi => t;

  @override
  volume() {
    double _hasil = panjang * lebar * tinggi;
    return _hasil;
  }
}

class Kubus extends BangunRuang {
  final double sisi;

  Kubus({required this.sisi});

  @override
  volume() {
    double _hasil = sisi * sisi * sisi;
    return _hasil;
  }
}

abstract class BangunRuang {
  double panjang = 0;
  double lebar = 0;
  double tinggi = 0;

  volume() {
    print('rumus bangun ruang taruh sini ya ');
  }
}
