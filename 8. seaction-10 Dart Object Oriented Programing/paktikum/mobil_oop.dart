class Mobil {
  final double maxBeratMuatan;
  final List listHewan;
  Mobil({required this.maxBeratMuatan, required this.listHewan});
  List listMuatan = [];

  tambahMuataun() {
    double totalHewan = 0.0;
    for (var i = 0; i < listHewan.length; i++) {
      totalHewan += listHewan[i];
      if (totalHewan < maxBeratMuatan) {
        if (totalHewan <= maxBeratMuatan && totalHewan < maxBeratMuatan) {
          listMuatan.add(listHewan[i]);
        } else {
          continue;
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
