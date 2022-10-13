*******************************Rest API JSON**************************

dalam aplikasi terdapat suatu feature yang akan mengambil sebuah data dari server dimana terdapat berbagai cara untuk memanggil data tersebut, dengan salah satunya adalah menggunakan REST API dimana fungsinya adalah alat berkomunikasi antara server dan client, dalam flutter kita bisa mengambi data tersebut dengan suatu package yaitu DIO, dan HTTP.

* **Rest API** adalah Representatioinal State Transfer, Application Programming Interface. dimana ini digunakan untuk komunikasi antara server dan client dimana akan terhubung melalui HTTP Request

* **HTTP** dan **Dio** adalah sebuah package yang biasnaya digunakan untuk request API biasanya data tersebut berbentuk media web

* **Serialisasi JSON** (toJson) adalah cara dimana mengubah struktur data ke Bentuk Json dapat menggunakan fungsi json.Encode()

(fromJson) dimana mengubah struktur json menjadi struktu data/jsonModel
************************************************************************

* **Struktur Request**s
 * Url : adalah sebuah link yang menjadikan halaman Akses API
 * Method : method adalah seuatu fungsi yang digunakan untuk menunjukan aksi yang diinginkan seperti POST, Delete, Put, Get
 * Header : digunakan untuk memberikan informasi tambahan yang akan di post
 * Body : adalah sebuah parameter yang diminta oleh API

* **Struktur Response**
 * Status Code :  dimana dalam status code ini adalah ketika respond memberikan status baik suskes maupun gagal
 * Header : informasi terkasit respond 
 * Body : data yang disertakan bersama response