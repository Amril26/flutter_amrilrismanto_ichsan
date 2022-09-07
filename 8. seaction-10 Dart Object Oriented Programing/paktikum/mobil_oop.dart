import 'hewan_oop.dart';

class Mobil {
  final double maxBeratMuatan;
  final List<Hewan> listHewan;
  Mobil({required this.maxBeratMuatan, required this.listHewan});
  List listMuatan = [];

  tambahMuataun() {
    double totalHewan = 0.0;
    for (var i = 0; i < listHewan.length; i++) {
      if (listHewan[i].berat <= maxBeratMuatan) {
        totalHewan += listHewan[i].berat;
        if (totalHewan > maxBeratMuatan) {
          print('Berat tidak memadai');
          continue;
        } else {
          listMuatan.add(listHewan[i].berat);
        }
      }
    }
    return listMuatan;
  }

  totalMuatanHewan() {
    double totalMuatan = 0;
    for (var hewan in listMuatan) {
      totalMuatan += hewan;
    }
    return totalMuatan;
  }
}
