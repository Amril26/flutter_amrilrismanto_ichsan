**Introduction Flutter Widget**

* Point I : What Is FLutter ? 
Flutter adalah sebuah Framework yang membatu developer untuk membangun sebuah produk aplikasi berupa mobile, desktop, dan web dalam satu baris code, dimana dalam 1 baris kode dapat bejalan di bebagai platform yang besifat cross platform. 

* Flutter dapat mudah dipahami dan produktivitas tinggi karena memiliki fitur hot reload dimana kita dapat melakukan pembaruan perubahan hanya dalam bebeapa detik saja. dalam pengembangan Flutter tentu memakai Sdk

* SDK adalah Sebuah alat alat yang membantu dalam proses pengembangan sebuah produk aplikasi dimana SDK adalah sebuah tools yang sangat lengkap untuk membantu developer.

* membuat project pertama kali dapat 2 cara yaitu mengetik tulisan pada terminal seperti ***flutter create nama_project*** dalam penamaan project flutter tidak boleh camel case. untuk cara kedua ada  dengan membuat pada IDE dengan menekan ***CTRL+P*** lalu klik create new project dan nanti akan memasukan nama project 

***********************************************
* Point II : Stuctur Directory ? 
dalam pengembangan project flutter terdapat bebeapa direktori platform yang akan otomatis dibuat ketika project flutter di inisialisasi ada ***android, Ios, web***. dalam penulisan kode untuk memberikan sebuah ui atau logic harus pada directory ***lib***

* dalam pembuatan project flutter ada method yang wajib di deklarasikan adalah method main, dimana method main tersebut akan dijalankan pertama kali ketika project flutter dijalankan

***********************************************
* Point III: What Is Widget? 
widget adalah sebuah komponen yang akan disusun yang akan digunakan untuk membuat antarmuka atau User Interface. widget memiliki 2 tipe yaitu **single child** dan **multi Children** perbedaanya hanya singlechild hanya dapat menampilkan 1 widget saja namun untuk Multi Children  dapat mengabungkan bebeapa widget didalam suatu 1 widget itu sendiri

* stateless widget : statles widget adalah sebuah state didalam flutter dimana state tersebut tidak akan melakukan sebuah perubahan data secara dynamic hanya befokus pada tampilan, pada penerapan ini biasanya dibuat dengan extends pada class ***StatelessWidget***

* statefull widget : pada state widget ini dapat melakukan perubahan tampilan secara dynamic dimana ketika ada suatu kondisi maka tampilan akan berubah, penerapan adalah dengan extends ***StatefullWidge*** dimana stukturnya adalah 1 widget dan 2 class widget dan state

* MaterialApp adalah sebuah widget yang akan befokus pada design material design yang diciptakan oleh google

* Scaffold adalah sebuah widget yang akan memberikan suatu halaman atau body pada aplikasi, dimana pada Scaffold ada bebeapa properti seperti, ***Appbar, body, floating, bottomNavigationBar***
* Appbar digunakan untuk memberi sebuah appbar atau headers pada aplikasi biasanya terletak pada bagian paling atas aplikasi

* body adalah sebuah properti yang akan menampung sebuah content yang akan di tampilkan pada body halaman

* floating adalah sebuah aksi tekan yang mengapung biasanya terletak pada atas Navbar

* BootmNavigationbar adalah sebuah widget yang menampilkan navigasi untuk bepindah halaman biasanya terletak pada bagian paling bawah aplikasi