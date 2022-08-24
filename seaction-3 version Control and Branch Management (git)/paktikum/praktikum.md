hasil dari prktik pada **seaction3** dengan [url github](https://github.com/Amril26/version-Control-and-Branch-Management-git.git)

**Penjelasan Terkait Praktik git management**
1. membuat repository **>** masuk kedalam account github dan pilih menu  repository **>** pilih new rapository **>** beri nama dan descripsi pada repository dan dapat memilih apakah respository bersifat private atau public.

2. membuat branch **>** untuk ketik perintah pada terminal jika menggunakan CLI/GLI **git branch *nama-branch***

3. implementasi gitpush, pull, stash, dan merge : 
    **.** push -> ketik perintah **git push origin name-branch** untuk melakukan async pada repository
    **.** pull -> ketik perintah **git pull origin name-branch** untuk mengambil source code dari branch lain dan langsung di merge
    **.** stash -> ketik perintah **git stash** untuk melakukan perubahan secara sementara
    **.** stash applay-> ketik perintah **git stash apply** menggunakan stash atau perubahan sementara
    **.** merge-> ketik perintah **git merge *name-branch*** digunakan untuk melakukan merge atau menggabungkan antara 2 branch

4. penyelesaiaan conflict dalam branch mengerjakan file dan line yang sama jika terjadi conflict seharunya yang dilakukan kita bisa menggunakan perubahan yang lama atau yang baru, dan juga bisa digunakan keduanya namun harus ditambahkan berbeda line pada branch master saat di merge

5, no fast forward **>** perintah untuk mengabungkan branch dengan tambahan merge commit, agar dapat dilihat pada diff **git merge --no-ff *name-branch***
