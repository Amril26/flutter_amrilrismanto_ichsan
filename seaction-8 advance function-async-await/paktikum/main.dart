import 'soal_dua.dart';
import 'soal_satu.dart';

void main(List<String> args) async {
  // List dataList = [2, 3, 4];
  List _dataList = [2, 3, 4, 6, 7, 8, 9, 11];
  int _pengali = 3;

  List multiList = [
    // name, age, hobby
    ['Amril Rismanto Ichsan', 80, 'Menulis Tulisan Berwarna'],
    ['Tejo sutejo', 5, 'Bug bounty'],
    ['Clarissa', 10, 'Meracik Obat'],
  ];

  SeactionDelapanSoalSatu _soalSatu = SeactionDelapanSoalSatu();
  List printResult =
      await _soalSatu.soalSatu(dataList: _dataList, pengali: _pengali);
  print('Befor not run function => ' + _dataList.toString());
  print('Result after list x pengali => ' + printResult.toString());

  print('\n==========================================\n');

  SeactionDelepanSoalDua _soalDua = SeactionDelepanSoalDua();
  Map resultDua = _soalDua.soalDua(listDataElement: multiList);
  print(resultDua);

  print('\n Example get keys');
  print(resultDua['anggota_1']);
}
