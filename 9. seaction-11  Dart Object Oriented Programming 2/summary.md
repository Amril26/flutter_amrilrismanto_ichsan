***basic dart programing***

* Constructor = dimana sebuah class akan di jadikan sebuah
method dan dimana method tersebut akan di panggil ketika objek dari class tersebut dibuat, biasanya digunakan untuk menerima sebuah nilai pada suatu objek ketika di panggil. karena method tersbut memiliki nama yang sama dengan classnya maka constructor tidak dapat mengembalikan sebuah nilai

contoh penerapan : 
NamaClass{
    NamaClass(){
    }
}

* Inheritance dan Interface = adalah sebuah paren class atau super clas menurunkan sifat class tersebut kepada class childnya atau class turunan. dimana class turunan dapat memakai semua method dan properti yagn dimiliki oleh parrent class tersebut. untuk mengimplementasikan sebuah inheritance class pada child class menggunakan **extends**

contoh penerapan : 
ChildClass extends ParrentClass{

}

* Interface hampir sama dengan Inheritance perbedaannya hanya jika menggunakan interface maka setiap method yang berada di super class atau parent class maka class turunan wajib mengambil semua method yang ada dan cara memakai Interface adalah dengan menggunakan **implements**

contoh penerapan : 
ChildClass implements ParrentClass{
    @ovveride   
    method1(){
    }
}

* method @Ovveride = ketika menggunakan method overide tersebut kita harus memiliki class paren dan class parent wajib memiliki method . dimana method tersebut akan dipakai oleh class child dan dapat membuat baru logic pada method tersebut 

contoh penerapan : 
ChildClass implements ParrentClass{
    @ovveride   
    method1(){
    }
    method2(){
    }
}

* Abstract Class = Abstract class adalah sebuah abstract pada class yang dimana menunjukan method apa saja yang ada pada suatu class. berbeda dengan biasanya abstract class tidak dapat digunakan sebuah object. untuk menggunakan sebuah abstract class dapat menggunakan **extends**. biasanya pada abstract class digunakan untuk menampung sebuah method apa saja yang akan digunakan lalu akan di ovveride pada child method 

contoh penerapan : 
abstract class NameAbstract{
       
    method1(){
    }
    method2(){
    }
}

* Polymorphism adalah kemampuan tipe data class dimana dapat memanggil turunan dari parrent class tersebut saat membuat objek, polymorphism bisa dilakukan pada inheritance dan interface.

contoh penerapan : 
ParentClass obj = ChildClass();

* Generics = adalah suatu fungsi dimana fungsi atau method dapat menerima data dengan tipe yang berbeda. tipe data yang diinginkan ditentukan saat membuat class atau menjalankan fungsi. 

class NameClassT>{

}


