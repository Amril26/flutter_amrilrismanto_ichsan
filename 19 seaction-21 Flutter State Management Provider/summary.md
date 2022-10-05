*******************************State Management Provider**************************

* **Introduction ** dalam pengembangan aplikasi perubahan suatu tampilan karena kita menekan sebuah aksi akan sering dilakukan, namun didalam flutter terdapat bebrapa cara yaitu di sebuth sebuah state dimana state tersebut akan merubah suatu widget atau tampilan secara dynamic, biasanya state dimiliki oleh Widget parrent **StatefullWidget** dimana dalam turunan akan dapat menampilkan tampilan secara dynamic.

dalam penggunaan ui flutter memiliki sifat declaravtive dimana flutter membangun UI yang mencermikan keadaan state saat ini 

* **State** adalah sebuah kondisi dimana widget yang sedang akftif akan menyimpan data di memori dimana uinya akan ada state atau data yang berubah

* **State** adalah sebuah kondisi dimana widget yang sedang akftif akan menyimpan data di memori dimana uinya akan ada state atau data yang berubah

* **Ephemeral State** digunakan untuk bagian lain pada widget tree yang membutuhkan widget khusus hanya memeerplukan StatefulWidget karena membutuhkan setState() function

* **App State** digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses data state widget

* **Pendekatan State Management** 


namun ketika perubahan hanya sedikit kekurangan dari penggunaan **StatefullWidget** adalah akan meredraw semua widget yang sudah di buat maka akan memakan waktu pembuatan halaman tersebut maka karena itu ada State management dimana ada bebeapa package State management bloc, Provider dan GetX, namun kali ini akan menggunakan State Management Provider

* **Bloc ** adalah sebuah state management yang simple dan poweful dimana bloc akan menerima even sebagai input dan di analisa dikelola oleh strem bloc dan menghasilkan state sebagai output 
 
* **Provider ** pacgage ini adalah sebuah package yang dapat memanaget seuatu fungsi yang akan kita buat dengan mudah dimana, dengan menggunakan state management ini ketika ada suatu perubahan Widget skala kecil maka tidak akan di widraw ulang namun hanya widget tertentu yang akan dirubah


*******************************Cara Penggunaan**************************

- import terlebih dahulu packgae bloc pada file pubspec.yaml
- daftarkan state provider gunakan widget **BlocBuilder** pada **awal Widget**
- buat class yang extends dari class Bloc<> dengan generik event dan state hasil
 



--------------------------------------------------------------------
