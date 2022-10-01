*******************************Flutter Navigation**************************


* **Navigation** Navigation adalah seuatu kondisi dimana seuatu aplikasi bisa berpindah tempat ke tampai yang lain contohnya adalah dengan suatu tampilan hanya menampilkan sebuah data list jika salah satu list itu di tekan maka akan menampilkan sebuah detial. pada Flutter ada 2 navigation yaiut interactif dan deklaratif dimana interactif.



----------------------Macam Macam Navigation------------------------

* **Navigator.push()** navigation ini berfungsi untuk berpindah padah halam 1 ke halaman lainnya 

* **Navigator.pop()** navigation ini berfungsi kembali ke halaman awal atau pada memory stack navigation sebelumnya 

* **Navigator.PushReplace()** pada navigasi ini hampir sama dengan push() namun ketika navigasi ini digunakan pada navigasi sebelumnya atau tampilan sebelumnya akan di hapus atau tidak akan bisa kembali ke halaman sebelumnya 



----------------------Navigation dengan Route------------------------
sebenarnya dalam navigasi ini hampir sama dengan sebelumnya namun named route ini harus menginisialisasi setiap halaman pada MaterialApp() dimana properti *initialRoutes:* digunakan untuk halam awal yang akan di tampilakn dan untuk properti ***routes:{}*** digunakan untuk menginisialisasi semua tampilan atau wajib mendaftarkan agar dapat menggunakan navigation named

--------------------------------------------------------------------
