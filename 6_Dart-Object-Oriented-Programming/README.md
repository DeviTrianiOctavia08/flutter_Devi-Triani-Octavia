1. Fundamental object oriented programming
Deskripsi :
Biasa disebut OOP, program disusun dalam bentuk abstraksi objek, data dan proses diletakkan pada abstraksi tersebut.

2. Keuntungan :
Mudah di-troubleshoot, mudah digunakan ulang.

3. Penggunaan :
Dart dan berbagai bahasa pemrograman lainnya, seperti C++, Java, Javascript, Python.

4. Komponen :
OOP memiliki beberapa bagian, diantaranya ada class, object, property, method, inheritance, generics.

5. Class : 
Deskripsi : 
Abstraksi dari sebuah benda (object), memiliki ciri-ciri yang disebut properti, memiliki sifat dan kemampuan yang disebut method.

Membuat class 
Menggunakan kata kunci class, memiliki nama, detail class diletakkan dalam kurawal. 
Contoh : 
Class Hewan {
//Property
//Method
}

Membuat object
Bentuk sebenarnya dari class, disebut juga instance of class, diperlakukan seperti data.
Contoh : 
Void main() {
Var h1 = Hewan();
Var h2 = Hewan();
Var h3 = Hewan();
}

6. Property
Deskripsi : 
Ciri-ciri suatu class, hal-hal yang dimiliki suatu class, memiliki sifat seperti variabel.

Membuat property 
Seperti variabel tetapi terletak dalam sebuah class.
Contoh : 
Class Hewan {
Var mata = 0;
Var kaki = 0;
}

Mengakses property seperti menggunakan variabel tetapi melalui sebuah objek.
Contoh : 
Void main () {
Var h1 = Hewan ()
Print (h1.mata);
}

7. Method
Deskripsi :
Sifat suatu class, aktivitas yang dapat dikerjakan suatu class, memiliki sifat seperti fungsi.

Membuat method
Seperti fungsi tetapi terletak dalam sebuah class.
Contoh : 
Class Hewan {
Void bersuara() {
Print (' ');
}
}

Menjalankan method
Seperti menggunakan fungsi tetapi melalui sebuah object.
Contoh :
Void main () {
Var h1 = hewan () ;
h1.bersuara();
}
