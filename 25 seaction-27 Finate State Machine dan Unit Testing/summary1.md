*******************************Finate State Machine & Unit Testing**************************

Finite State adalah sebuah lifecycle dimana mesin memiliki sejumlah state ddan pada tiap state menunjukan state apa yang sedang dijalankan, biasnay state yang digunakan adalah ada 3 State yaitu **IDDLE**. **Running**, **Error** dimana idle adalh state yang tidak melakukan proses apapun. dan running adalah saat state melakukan proses running, dan pada state Error gagal melakukan sebuah proses.

************************************************************************

* **Unit Test** adalah sebuah fungsi dimana kita mereview kode kita sendiri dengan membuat kode lain yang befungsi mengtest kode tersebut. pengujian dilakukan pada unit dalam perangkat lunak, biasanya dilakukan pada function/method. 

tujuan penggunaan unit test biasanya dapat mengola berbagai jenis input, memastikan hasil dari suatu fungsi atau method yang sudah selesai berjalan dengan normal, menjadi dokumentasi. terdapat 2 cara melakukan Unit Test.

* Manual = unit dijalankan dan dicek secara manual biasanya di test pada human

* Automated = menulist sebuah kode yang dapat dijalankan berkali kali menggunakan test runner

************************************************************************
* **Mocing** dimana adalah sebuah proses terkait dengan sistem eksternal dapat mempengaruhi berjalannya penguji dimana pengaruh tersebut dapat mempengaruhi proses pengujian, biasanya dalam mocking digunakan untuk menghindari masalah-masalah

* Cara Kerja Mocking 
* dimana suatu object dibuat bentuk tiruannya dimana tiduran tersebut memiliki input dan output yang sama dengan yang asli, bentuk tiruan menghilang ketergantungan pada sistem eksternal
*  menambahkan despendenci build_runner dan mockito pada ***dev_despendencies***
************************************************************************
 