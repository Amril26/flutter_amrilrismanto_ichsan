*******************************Basic Layout**************************


***** **Column** column adalah sebuah widget yang dapat menampung banyak widget didalamnya untuk menaruh beberapa widget harus menggunakan properti children didalamnya kita dapat memasukan sebuah list widget yang akan di tampilkan secara **Vertical** dari bagian atas ke bawah.

***** **Row** dalam widget row ini kebalikan dari pada Column dimana Row bersifat horizontal dimana widget akan diletakan menyamping dari kiri ke kanan

***** **Stack** untuk memakai widget Stack berbeda dengan widget lainnya dimana widget stack ini dapat menampung banyak widget namun bersifat menumpuk dimana widget yang pertama di deklarasikan adalah sebagai alas atau di taruh di bagian paling bawah dalam tumpukan. 

***** **ListView** listview adalah sebuah widget yang dapat menyimpan banyak item di sebuah componen list dan ketika data item tersebuth melebihi layar maka listview dapat menscroll item item yand dimiliki

***** **GridView** adalah sebuah widget yang dapat menampung sebuah item yang banyak namun akan di tampilkan berbentuk grid atau galery.

--------------------------------------------------------------------
***Properti yang dimiliki oleh  Row dan Column***

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

**--------------------------------------------------------------------**
**--------------------------------------------------------------------**

*******************************FORM Picker**************************

* **Date Picker** adalah sebuah widget dimana widget tersebut akan menampilkan sebuah date calender dimana user akan berinterakti dengan calender tersebut dan memilih sebuah tanggal, tahun. atau hari dimana dalam sebuah aplikasi akan ada beberapa fitur yang akan memanfaatkan DatePicker. Contoh Implementasi: 

* import package intl pada file .yaml
* gunakan fungsi pada flutter yaitu showDatePicker dalam fungsi ini memiliki tipe data future, dan ketika sebuah aksi di klik akan menampilkan sebuah dialog yang menampilkan calender, dimana didalam fungsi tersebut ada beberapa properti yang wajib digunakan seperti initialDate, firstDate, lastDate.

* **Color Picker** dimana user dapat menggunakan widget untuk untuk memilih sebuah color dimana cara pengunakannya dengan insialisai package flutter_colorpicker pada file .yaml

* **File Picker** dalam sebuah aplikasi terkadang ada sebuah kondiri dimana user akan disuruh oleh aplikasi untuk mengupload sebuah data file atau foto dimana contohnya mengganti sebuah profile dalam aplikasi, dimana aplikasi perlu berinteraksi untuk mengambil foto yang kita miliki dan perlu diingin bahwa setiap aplikasi berinteraksi dengan device kita harus meminta permission untk meminta izin. dalam pembuatan file picker biasanya menggunakan package file_picker atau open_file