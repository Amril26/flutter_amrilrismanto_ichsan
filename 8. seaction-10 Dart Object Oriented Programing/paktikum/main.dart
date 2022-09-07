import 'hewan_oop.dart';
import 'mobil_oop.dart';

void main(List<String> args) async {
  Hewan beratHewan = Hewan();
  double hewan1 = beratHewan.berat = 1;
  double hewan2 = beratHewan.berat = 2;
  double hewan3 = beratHewan.berat = 7;
  double hewan4 = beratHewan.berat = 1;
  double hewan5 = beratHewan.berat = 2;

  Mobil mobil = Mobil(
      maxBeratMuatan: 6, listHewan: [hewan1, hewan2, hewan3, hewan4, hewan5]);
  var hasil = mobil.tambahMuataun();
  var hasilTotal = mobil.totalMuatanHewan();
  print('semua muatan hewan => ' + mobil.listHewan.toString() + '\n');
  print('Muatan Berat Hewan Yang diterima adalah ==> ' + hasil.toString());
  print(
      'Total Muatan yang berhasil dibawah adalah ==> ' + hasilTotal.toString());
}
