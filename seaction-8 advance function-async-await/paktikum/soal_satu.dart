class SeactionDelapanSoalSatu {
  // a. menerima 2 parameter yaitu list data dan pengali
  List soalSatu({required List dataList, required int pengali}) {
    //  list baru untuk menampung data baru dari perulangan list lama yang dikali pengali
    List newListValue = [];
    // perulangan dilakukan pada dataList
    for (var item in dataList) {
      if (dataList.isNotEmpty) {
        /// dimana setiap index pada data list dikali dengan pengali dan ditambahkan ke [newListValue]
        newListValue.add(item * pengali);
      } else {
        newListValue = [];
        print('masukan data list untuk melakukan perulangan');
      }
    }
    //  ketika perulangan selesai maka akan di return dalam tipe data List
    return newListValue;
  }
}
