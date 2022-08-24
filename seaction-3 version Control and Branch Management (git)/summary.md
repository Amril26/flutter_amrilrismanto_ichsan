***Ringkasan Tentang Version Control dan Branch Management***
-----------------------------------------------------------
* Point 1 : git adalah Version controll system yang digunakan para developer untuk berkolaborasi dalam management project secara bersamaan agar pengelolaan dalam pengembangan lebih mudah

dalam git terdapat 3 Area yang biasanya digunakan yaitu: 
    * working directory : dimana folder ini adalah folder lokal yang terdapat di device kita yang bisa kita edit kapan saja

    * staging area : staging area adalah area dimana ketika working directory sudah melakukan peringah add dan commit di staging area ini belum memasuki repository

    *repository : dimana project kita sudah ada pada github yang sudah terdistribusi

* Point 2 : Perintah yang biasanya sering digunakan; 
    * git add adalah perintah untuk menambahakan sebuah perubahan project ke dalam staging area 
    * git commit -m "message" adalah dimana kita melakukan commit  kedalam repository poject kita (dalam melakukan sebuah pemberian pesan harus jelas dalam menjelaskan perubahan apa saja yang sudah dilakukan)
    * git push adalah perintah git untuk mensynchronised kedalam repository pada github kita 
    * git branch adalah perintah untuk membuat branch berfungsi agar dapat mengedit project tanpa merubah langsung kedalam master branch/project
    * git merge adalah digunakan untuk menyatuhkan antar dua branch menjadi satu untuk melakukan perubahan 

* Point 3 : dalama kolaborasi projet menggunakan git tidak bisa menggunakan satu branch saja perlu beberapa branch agar project dapat memnamagement code atau perubahan fitur dengan mudah dan optimal, dalam melakukan perubahan code hindari penulisan perubahan kode ke branch inti/master. dalam merge suatu feature harus branch development saja. untuk branch inti/master bisa dilakukan merge dari development ketika branch development sudah fixed dari bug dan final project
