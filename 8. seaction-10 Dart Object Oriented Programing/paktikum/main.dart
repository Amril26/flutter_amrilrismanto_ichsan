import 'hewan_oop.dart';
import 'mobil_oop.dart';

void main(List<String> args) async {
  Hewan hewan1 = Hewan(berat: 1);
  Hewan hewan2 = Hewan(berat: 2);
  Hewan hewan3 = Hewan(berat: 7);
  Hewan hewan4 = Hewan(berat: 1);
  Hewan hewan5 = Hewan(berat: 2);
  Hewan hewan6 = Hewan(berat: 2);

  Mobil mobil = Mobil(
      maxBeratMuatan: 6,
      listHewan: [hewan1, hewan2, hewan3, hewan4, hewan5, hewan6]);
  var hasil = mobil.tambahMuataun();
  var hasilTotal = mobil.totalMuatanHewan();
  print('Muatan Berat Hewan Yang diterima adalah ==> ' + hasil.toString());
  print(
      'Total Muatan yang berhasil dibawah adalah ==> ' + hasilTotal.toString());
}
