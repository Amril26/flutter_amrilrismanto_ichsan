*******************************State Management Provider**************************

* **Introduction ** dalam pengembangan aplikasi perubahan suatu tampilan karena kita menekan sebuah aksi akan sering dilakukan, namun didalam flutter terdapat bebrapa cara yaitu di sebuth sebuah state dimana state tersebut akan merubah suatu widget atau tampilan secara dynamic, biasanya state dimiliki oleh Widget parrent **StatefullWidget** dimana dalam turunan akan dapat menampilkan tampilan secara dynamic.

namun ketika perubahan hanya sedikit kekurangan dari penggunaan **StatefullWidget** adalah akan meredraw semua widget yang sudah di buat maka akan memakan waktu pembuatan halaman tersebut maka karena itu ada State management dimana ada bebeapa package State management bloc, Provider dan GetX, namun kali ini akan menggunakan State Management Provider


* **Provider ** pacgage ini adalah sebuah package yang dapat memanaget seuatu fungsi yang akan kita buat dengan mudah dimana, dengan menggunakan state management ini ketika ada suatu perubahan Widget skala kecil maka tidak akan di widraw ulang namun hanya widget tertentu yang akan dirubah


*******************************Cara Penggunaan**************************

- import terlebih dahulu packgae provider pada file pubspec.yaml
- daftarkan state provider gunakan widget **MultiProvider** pada **root awal** widget
- buat class yang extends dari class ChangeNotifier
- ketika ingin memanggil atau membuat sebuah perubahan state **gunakan context.read<namaClass>().namamethod()**
- ketika ingin memanggil sebuah nilai state gunakan **context.watch<namaclass>().value**s 



--------------------------------------------------------------------
