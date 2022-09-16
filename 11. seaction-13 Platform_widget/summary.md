**Introduction Flutter Widget**

* Point I : Pengertian widget android dan ios
dalam pengembangan aplikasi menggunakan framework flutter untuk mengembangkan platform Android dan ios tentun ada beberapa perbedaan kecil dalam penggunaan widget dimana menyesuaikan ui guide yang sudah ditentukan di masing masing platform,

***********************************************
* Point II : Mateial App

***Material app*** adalah sebuah widget dasar yang mengikuti material ui dari android untuk mengemas seluruh widget dalam aplikasi

**STRUKTUR MATERIAL APP**
* **theme** dimana parameter theme berfungsi memberikan default tema yang akan digunakan dalam aplikasi

* **theme** home adalah properti dari material app yagn digunakan untuk memanggil tampilan pertama yang akan di tampilkan pada aplikasi  

* **initialRoute dan roots** 
dalam penggunaan initialRoute dan roots tidak boleh menggunakan parameter **home** dimana **initialRoute** berfungsi sebagai tampilan utama yang menggunakan dari path class pada widget tersebut

untuk menginsialisasi pada path setiap layout/page maka menggunakan **routes** dimana routes berfungsi untuk memberikan setiap layout atau page sebuah path string agar dapat digunakan untuk berpindah halaman

**SCAFFOLD**
widget ini berfungsi untuk membuat sebuah halaman pada tampilan layar dimana biasanya dalam mendeklarasikan sebuah sacaffold ada beberapa parameter yang dapat digunakan seperti menampilkan ***body pada, appbar, drawer,botomNavbar, dll***

* appBar => biasanya digunakna untuk memberikan tampilan pada bagian atas pada tampilan aplikasi

* body => pada body biasanya berisikan sebuah kontent yang akan mau ditampilkan atau ditunjukan kepada pengguna 

* bottomNavbar => adalah bagian dimana pada bagian bawah terdapat beberapa pilihan menu 

* drawer => adalah sebuah aksi dimana kita dapat menekan sebuah tombol dan akan muncul beberapa content dari samping pada bagian tampilan aplikasi

***********************************************
* Point III: Cupertino App
***Cupertino app*** adalah sebuah widget dasar yang mengikuti Cupertino ui dari IOS untuk mengemas seluruh widget dalam aplikasi dalam beberapa kasus untuk penggunaan widget cuppertiono hampir sama dengan widget Material hanya yang membedakan pemberian atau pemanggilan widget saja 