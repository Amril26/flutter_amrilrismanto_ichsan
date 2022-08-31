***basic dart programing***

* Point 1 : dalam membuat suatu program atau aplikasi pengambilan keputusan sebuah alur program sangatlah penting, untuk mengatur sebuah kondisi yang sudah dilakukan oleh aksi yang diberikan dan akan menghasilkan apa yang diinginkan.

dalam bahasa pemrograman ada sebuah kondisi dengan menggunakan preintah IF atau switch case.

* IF : dimana memerlukan suatu nilai bool untuk memvalidasi suatu kondisi dimana jika kondisi tersebut bernilai true maka proses pertama akan dijalankan. untuk menambahkan sebuah aksi lebih dari 1 perlu menambahkan perinah *else if* dan memberikan sebuah kondisi

* Contoh Penggunaan if :
if(kondisi){
    aksi1
} else {
    aksi lainnya
}
 
* Switch Case : dimana hampir sama dengan perintah IF dengan menyeleksi suatu kondisi dimana ketika valunya adalah true maka akan menjalankan aksi didalamnya. untuk memberikan sebuah aksi/pilihan lebih dari 1 gunakan case lagi untuk menambah sebuah kondisi.

* Contoh penggunaan Switch case: 
Switch(*value_kondisi*){
case kondisi : {
    aksi1;
}
break;
}
default: {
    aksi lainnya
}

**=================================**
* Point 2 :  **perulangan**
perulangan adalah sebuah perintah dimana kita melihat seuatu data yang banyak dengan proses berulang kali dengan memerlukan nilai awal dan memerlukan sebuah kondisi dan memerlukan sebuah aksi untuk pengubah nilai

biasanya digunakan untuk mengload data dimana ada sebuah data list yang sangat banyak akan di looping untuk melihat seluruh data tersebut dengan memetkan data dan mengambil data tersebut

ada beberapa perulangan yaitu **for**, **while**, **do while**.
**Perbedaan** : 
**FOR** : sebuah aksi yang memerlukan nilai awal dan sebuah kondisi, untuk merubah sebuah nilai maka perlu untuk merubah nilai di perintah ini.

**while**   : sama seperti for digunakan untuk mengulang sebuah data. 
 
**do while** : perulangan ini agak unik karena kondisi harus dijalankan ketika perulangan pertama selesai dijalankan. jadi apapun kondisi di awal looping pertama pasti akan dijalankan dan mengeluarkan nilai.

dalam suatu perulangan pada suatu saat ada sebuah kondisi akan behenti atau menghiraukan suatu nilai dengan menggunakan perintah break, countinue: 

**break** : digunakan untuk menghentikan sebuah perulangan.
**countinue** : perintah ini digunakna untuk menghiraukan sebuah nilai jika *countinue* di jalankan dan saat kondisi bernilai true.
 
**=================================**
* point 3 :  ***FUNGSI***
fungsi adalah sebuah behavior yang digunakan untuk menaruh sebuah logic dimana fungsi akan melakukan sebuah proses dan manampilan/ mengembalikan sebuah nilai. 

* keuntungan menggunakan fungsi adalah dapat membuat sebuah kode dan bisa digunakan untuk berulang kali ketika dibutuhkan.

* fungsi dengan ***parameter*** : dimana fungsi akan menerima sebuah nilai ketika fungsi digunakan dan dijalankan.

* fungsi dengan ***return*** : sebuah perintah yang digunakan untuk mengembalikan nilai kepada siapapun yang menggunakan fungsi tersebut