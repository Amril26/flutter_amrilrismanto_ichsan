**Flutter CLI dan Package Management**

* **FLutter CLI** = seuatu perintah yang dijalankan pada terminal untuk mengeksekusi suatu tools di dalam SDK

- ***FLutter Doctor*** = perintah untuk menampilkan software yang dibtuhkan untuk informasi foctor 
(flutter doctor)

- ***FLutter Create*** = adalah suatu perintah flutter yang digunakan untuk membuat project flutter dimana perintah ini akan mendownlaod package yang dibutuhkan dalam pengembangan project flutter 
(flutter create (nameProject))

- ***FLutter run*** = suatu perintah flutter yang dimana digunakan untuk menjalankan suatu project aplikasi flutter flutter run akan menjalankan aplikasi di emulator ataupun di device
(flutter rn)

- ***FLutter emulator*** = perintah yang berfungsi untuk meilihat daftar emulator atau device apa saja yang tersedia yanga akan digunakan untuk menjalankan project flutter, perintah ini juga dapat digunakan untuk menjalankan emulator atau membuat emulator baru
(flutter emulators) => menampilkan emulator
(flutter emulators --launch idEmulator) =>  menjalankan emulator
(flutter emulators --create --name) =>  membat daftar emulator baru 

- ***FLutter channel*** = pada perinah ini digunakan untuk melihat channel atau standar flutter apa saja yang ada ada 3 macam channel yaitu master, beta, stable.

- ***FLutter pub get*** = suatu perintah yang digunakan untk mendownload ulang semua package atau dependencies yang ada pada file pubspec.yaml

- ***FLutter pub add name_package*** = digunakan untk nemambahkan suatu package pada file pubspec.yaml yang akan digunakan

- ***FLutter build***  = adalah perintah dimana suatu project akan dirubah atau membuat file berextensi .apk yang akan digunakan untuk merelese sebuah product aplikasi tersebut

- ***FLutter clean*** = pada perintah ini harus dijalankan dalam lingkup project flutter karena project ini berfungsi untuk menghapus semua package biasanya perintah ini digunakan untuk sebelum mengupload project ke git karena ketika mengupload project tidak terlalu berat karena tidak mengupload semua package

**Package Management** = adalah sebuah package yang membantu suatu pengembangan aplikasi biasanya package dikembangkan oleh orang lain yang kita bisa menggunakannya 
biasanya package diletakan name dan versinya pada file pubspec.yaml ketika package sudah ada dalam filet harus mendownload terlebih dahulu package tersebut dengan menggunakan perintah pada terminal ***flutter pub get***
dengan memakai package ini kita tidak perlu repot lagi membuat suatu tampilan atau fungsi untuk menampilkan ui tertentu.
untuk mencari package dapat membuka website ****pub.dev****