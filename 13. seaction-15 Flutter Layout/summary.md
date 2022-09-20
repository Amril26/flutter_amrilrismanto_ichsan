**Flutter Flutter Layout**

* **Layout** 
 *** dalam membangun sebuah aplikasi penataan letak sebuah widget atau komponen pada pengembangan aplikasi flutter adalah sangat penting dimana layout adalah bergfungsi untuk mengatur tata letak suatu tampilan dimana layout berbentuk widget yang mengatur widget dialamnya.

dalam penggunaan widget ada beberapa sifat widget yaitu **single child** dan **multi child**

--------------------------------------------------------------------
* **single child**  adalah sebuah widget yang hanya memiliki child 1 widget saja dimana widget tersebut dapat menampung hanya 1 widget sebagai contoh beberapa widget seperti berikut: 

***** **Container** adalah sebuah widget basic dari sebuah komponen dimana COntainer memiliki beberapa properti yang dapat di manfaatkan untuk membentuk suatu komponen dengan dynamic apa yang kita suka

***** **Center** adalah sebuah widet pembungkus yang memiliki sifat dimana childnya akan berada di bagian tengah dari suatu komponen pada tampilan layar

***** **SizedBox** widget ini sama seperti COntainer namun properti yang dimiliki sangat terbatas yaitu tinggi, lebar, dan child saja. biasanya widget ini digunakan untuk membungkus suatu komponen agar tinggi dan lebar spesifik dan bisa juga hanya dibuat sebagai batas antara komponen.

--------------------------------------------------------------------
* **Multi child** adalah sebuah widget dimana widget tersebut dapat menampung beberapa widget sekaligus dalam 1 tampilan biasanya widget ini digunakan untuk mengatur tata letak sebuah tampilan atau komponen seperti contaoh sebuah komponen yang sejajar atau yang menumpuk

***** **Column** column adalah sebuah widget yang dapat menampung banyak widget didalamnya untuk menaruh beberapa widget harus menggunakan properti children didalamnya kita dapat memasukan sebuah list widget yang akan di tampilkan secara **Vertical** dari bagian atas ke bawah.

***** **Row** dalam widget row ini kebalikan dari pada Column dimana Row bersifat horizontal dimana widget akan diletakan menyamping dari kiri ke kanan

***** **Stack** untuk memakai widget Stack berbeda dengan widget lainnya dimana widget stack ini dapat menampung banyak widget namun bersifat menumpuk dimana widget yang pertama di deklarasikan adalah sebagai alas atau di taruh di bagian paling bawah dalam tumpukan. 

***** **ListView** listview adalah sebuah widget yang dapat menyimpan banyak item di sebuah componen list dan ketika data item tersebuth melebihi layar maka listview dapat menscroll item item yand dimiliki

***** **GridView** adalah sebuah widget yang dapat menampung sebuah item yang banyak namun akan di tampilkan berbentuk grid atau galery.

--------------------------------------------------------------------

* **Widget Form** adalah sebuah widget yang dapat memasukan sebuah data dimana data terseut akan di tampilkan pada layar biasanya contoh widget yang dipakai adalah **Form** dan contoh penggunaanya adalah memasukan sebuah deskripsi atau password dan email.

* **WIdget Input** adalah sebuah widget yang dapat menerima input dari pengguna biasanya widget yang digunakan adalah **TextFields**, **DropDown**, **CheckBox**  

--------------------------------------------------------------------
\t***Properti yang dimiliki oleh multiaChildren***

* **MainAxisSize** = digunakan untuk menentukan seberapa banyak space yang akan digunakan, main axis dari *Row* adalah *horizontal*, MainAxis dari *Column* adalah *vertical* 

* **MainAxisAlingmnet** = properti yang digunakan *Row* dan *Column* untuk memposisikan children pada space layout parent

    * memiliki 6 value yang dapat digunakan:
    * *MainAxisAlignment.start* dimana layout akan rata pada bagian **kiri** untuk Row dan bagian **atas** untuk Column

    * *MainAxisAlignment.end* dimana layout akan rata pada bagian **kanan** untuk Row dan bagian **bawah** untuk Column

    * *MainAxisAlignment.center* untuk menampilkan pada bagian tengah *vertical* untuk Column dan bagian tengah *horizontal* untuk Row

    * *MainAxisAlignment.spaceBetween* untuk menampilkan tata letak dimana pada bagian awal dan akhir akan menempal pada masing masing sisi layout dan sisanya dibagi di bagian tengah tampilan

    * *MainAxisAlignment.spaceEvenly* untuk menampilkan tata letak dimana pada komponen spacenya akan dibagi rata dari kanan hingga kiri

    * *MainAxisAlignment.spaceAround* hampir sama dengan spaceEvenly namun di bagian space awal dan akhir hanya memiliki space setengah dari space lainnya 


* **CrossAxisAlignment** = Cross Axis dari *Row* adalah *vertical* dan Cross Axis dari *column* adalah *horizontal*

    * memiliki 5 value yang dapat digunakan:
    * *MainAxisAlignment.start* dimana layout akan rata pada bagian **kiri** untuk *Column* dan bagian **atas** untuk *Row*

    * *MainAxisAlignment.end* dimana layout akan rata pada bagian **kanan** untuk Column dan bagian **bawah** untuk Row

    * *MainAxisAlignment.center* untuk menampilkan pada bagian tengah *horizontal* untuk *Column* dan bagian tengah *vertical* untuk *Row*

    * *MainAxisAlignment.Strecth* mengambbil semua space yang tersisa pada column dimana akan mempengaruhi bentuk childrennya itu sendiri

    * *MainAxisAlignment.baseLine* dalam menggunakan properti ini waji juga menggunakan properti textBaseLine juga karena propeti ini akan mensejaarkan semua children pada bagian bawah


--------------------------------------------------------------------
    ***widget pembantu reponsif device***

* **Flexible** membungkus widget child sehingga child dari flexible memiliki space menjadi flexible atau resizable biasanya digunakan untuk tampilan dapat mengikuti perbedaan device, untuk perubahan ukuran ditentukan denga properti flex dan fit.

* **Expanded** untuk widget ini hampir sama dengan Flexible namun Expanded akan mekanan semua space yang tersedia. untuk melakukan perubahan ukuran ditentukan dengan properti flex