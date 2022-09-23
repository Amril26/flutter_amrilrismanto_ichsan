--**penerapan Assets untuk implementasi font dan image**--

* **Assets** adalah sebuah file folder yang digunakan untuk beberapa pendukung seperti gambar atau custom font untuk dalam mengembangkan aplikasi, biasanya didalam sebuah folder assets ada beberapa type yang ada didalamnya adalah data json, icons, image, dan fontFile.

dalam mengimplementasikan ***Assets*** harus di daftarkan atau di inisialisasikan terelebih dahulu pada file flutter **pubspec.yaml** untuk mengidentidikasi agar dibutuhkan aplikasi

contoh penulisan  : 
assets:
  - assets/dumy.json => spesifik indentifikasi file
  - assets/ => untuk menginisialisasi semua file yang ada di folder assets

------------------------------------------------------------------

* **Image** dalam pengembangan aplikasi penggunaan gambar atau penerapan gambar saat ditampilkan sangat penting agar membuat tampilan lebih menarik, pada Flutter dapat menampilkan gambar dari ***Assets*** dan ***internet***

Penerapan Image Assets : 
 ** AssetImage('path_image');
 ** Image.asset('path_image');

Penerapan Image Network : 
 ** NetworkImage('url_image');
 ** Image.network('url_image');

------------------------------------------------------------------

* **Font** dalam penerapan aplikasi penggunaan jenis atau gaya pada text penerapan font dapat menggunakan font assets atau dari package 

** step penerapan Font Assets : 
- unduh terlebih dahulu jenis font yang akan digunakan
- jika sudah maka import file yang berekstensi .tff kedalam assets dan daftarkan kedalam  file flutter pubspec.yaml

fonts: 
    - family: Roboto
    - fonts:
        - asset: path_file_ttf1.ttf
        - asset: path_file_ttf2.ttf


** step penerapan font Package google : 
- cari package google_fonts pada website pub.dev
- import dan pub get pada file pubspec.yaml
- dalam penggunaanya dapat langsung di panggil saat penerapan style dengan menggunakan **GoogleFonts.namaFonts();**

------------------------------------------------------------------