*******************************Flutter Storage**************************

dalam pengembangan sebuah aplikasi terkadang ada suatu kondisi penggunaan penyimpanan lokal kita dimana suatu data akan tersimpan kedalam hp atau storage device kita. biasnaya digunakan agar ketika mengambil data dari api atau mengupdate data akan tersimpan di local storage yang akan mengefesiensikan waktu dalam meload data. ada 2 contoh penggunaan :

* **Shared Preferences**
* **Local Database**

************************************************************************

* **Shared Preferences** adalah sebuah penyimpanan local sederhana yang mempunyai format untuk pemyimpan data adalah **Key** dan **value** dan untuk mengambil sebuah data yang sudah disimpan kita menggunakan **Key**. pada local storage menggunakan SPref ini hanya dapat menyimpan data sederhana seperti text, angka, bollean dan list<String>

************************************************************************

* **Local Database(SQLite)** adalah sebuah penyimpanan dimana dapat menyimpan data dalam jumlah besar pada local storage. dalam penggunaan local database ini dapat menerapkan CRUD dan bersifat private. dalam penggunaannya kita harus mengimport package **sqflite**.