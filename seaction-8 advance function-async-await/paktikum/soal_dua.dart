class SeactionDelepanSoalDua {
  Map resultMaping = {};
  soalDua({required List listDataElement}) {
    if (listDataElement.length <= 3) {
      for (var i = 0; i < listDataElement.length; i++) {
        for (var j = 0; j < listDataElement[i].length; j++) {
          resultMaping['anggota_${i + 1}'] = {
            'nama': listDataElement[i][0],
            'umur': listDataElement[i][1],
            'hobby': listDataElement[i][2],
          };
          // listDataElement[i];
        }
      }
      return resultMaping;
    } else {
      print('error nih sublist maksimal panjangnya 3');
    }
  }
}
