Deep Dive Into Dart Object Oriented Programing

1. Constructor
Method yang dijalankan saat pembuatan objek, dapat menerima parameter, tidak memiliki return, nama sama dengan nama class.

Memberi constructor
Tambahkan method menggunakan nama sama dengan nama class
Contoh :
Class Hewan {
Var mata;
Var kaki

Hewan () {
Mata = 0;
Kaki = 0;
}
}

2. Inheritance
Membuat class baru dengan memanfaatkan class yang sudah ada, bertujuan agar kemampuan class yang sudah ada dapat dimiliki oleh class baru.

Melakukan inheritance
Menambahkan extends saat pembuatan class baru.
Contoh :
Class kambing extends hewan {
Kambing() {
Mata =2 ;
Kaki =4;
}
}

Penggunaan class
Proses membuat objek dari class yang terjadi inheritance seperti pembuatan objek pada umumnya.
Contoh : 
Void main () {
Var k1 = kambing ();
Print (k1.mata);

Var h1 = hewan ();
Print (h1.mata);
}

3. Method overriding

Menulis ulang method yang ada pada super-class, berjutuan agar class memiliki method yang sama dengan proses yang berbeda. 

Melakukan Overriding dilakukan pada class yang melakukan inheritance, method sudah ada pada class induk, method ditulis ulang seperti membuat method baru pada class anak, ditambahkan tanda@override di baris sebelum method dibuat.
Contoh :
Class hewan {
Reproduksi ( ) {
Print ( ' tidak diketahui ' );
}
Bernapas ( ) {
Print ( ' tidak diketahui ' );
}
}
Class kambing extends hewan {
@override
Reproduksi ( ) {
Print ( ' melahirkan ' );
}
@override
Bernapas ( ) {
Print ( ' paru paru ' ) ;
}
}

Penggunaan class
Proses membuat object dari class yang terjadi inheritance seperti pembuatan object pada umumnya.
Contoh :
Void main( ) {
Var k1= kambing ( );
K1. Reproduksi( );
K1. Bernapas( );

Var h1= hewan ( );
h1. Reproduksi ( );
h1. Bernapas ( );
}

4. Interface
Berupa class, menunjukkan method apa saja yang ada pada suatu class, seluruh metode wajib di-override, digunakan dengan menggunakan implements

Menggunakan interface
Sekilas mirip inheritance, pada class yang melakukan implements, wajib melakukan override semua method yang ada pada class induk. 
Contoh :
Class Hewan {
Reproduksi (){
Print ( ' tidak diketahui ' ) ;
}

Bernapas () {
Print (' tidak diketahui ' ) ;
}
}

Class kambing implements hewan {
@override
Reproduksi () {
Print ( ' melahirkan ' ) ;
}

@override
Bernapas () {
Print ( ' paru-paru ' );
}
}

Penggunaan class
Proses membuat objek dari class yang terjadi inheritance seperti pembuatan objek pada umumnya
Contoh :
Void main () {
Var k1 = kambing ();
k1.reproduksi();
k1.bernapas();

Var h1 = hewan ();
h1.reproduksi();
h1.bernapas();
}

5. Abstract class
Berupa class abstrak, menunjukkan method apa saja yang ada pada suatu class, digunakan dengan menggunakan extends, tidak dapat dibuat objek, tidak semua method harus di-override.

Menggunakan abstract class
Abstract class Hewan {
Reproduksi () {
Print ( ' tidak diketahui ' );
}

Bernapas () {
Print ( ' tidak diketahui ' ) ;
}
}

Class kambing extends hewan {
@override
Reproduksi () {
Print ( ' melahirkan ' ) ;
}
}

Penggunaan class
void main () {
Var k1 = kambing () ;
k1.reproduksi();
k1.bernapas();
}

6. Polymorphism

Kemampuan data berubah menjadi bentuk lain, tipe data yang dapat digunakan adalah super class, dapat dilakukan pada class dengan extends atau implements.

Melakukan polymorphism
Objek dari class kambing dengan tipe data class Hewan.
Contoh : 
Void main () {
Hewan k1 = kambing () ;
K1.reproduksi();
K1.bernapas();
}

7. Generics
Dapat digunakan pada class atau fungsi, memberi kemampuan agar dapat menerima data dengan tipe yang berbeda, tipe data yang diinginkan, ditentukan saat membuat class atau menjalankan fungsi.

Membuat class dengan generics
Class hadiah dapat dimasukkan data dengan tipe T, tipe T dapat digunakan di seluruh class hadiah.
Contoh :
Class Hadiah<T> {
Var isi;

Hadiah (T i) {
Isi = i;
}
}

Menggunakan class dengan generics
Setelah nama class menjadi tempat tipe data yang diinginkan.
Contoh :
Void main () {
Var h1 = Hadiah<String>('mobil');
Print(h1.isi);

Var h2 = Hadiah<int>(10);
Print(h2.isi);
}

Membuat fungsi dengan generics
Setelah nama fungsi menjadi tempat variabel generics.
Contoh :
Void cektipe<T>(T data) {
Print (data.runtimeType);
}

Menggunakan fungsi dengan generics
Setelah nama fungsi menjadi tempat tipe data yang diinginkan.
Contoh : 
Void main () {
cekTipe<String>("satu")
CekTipe<int>(1);
}

8. Enkapsulasi
Ini mempromosikan penyembunyian data, peningkatan integritas data, memungkinkan perubahan pada satu bagian kode tanpa mempengaruhi bagian lain, mengurangi kompleksitas dan potensi bug dalam kode.
Modifikasi akses dalam dart
Anggota publik: kata kunci publik memungkinkan akses dari mana saja.
Anggota private: awalan _private membatasi akses hanya dalam perpustakaan atau kelas.
Anggota dilindungi: dart tidak memiliki kata kunci protected secara alami, tetapi secara konvensional, awalan _protected menunjukkan akses terbatas dalam perpustakaan.
Contoh :
Class KelasSaya {
Int VariabelPublik; // Anggota Publik
String _variabelPrivat; // Anggota privat
double _variabelDilindungi; // Anggota dilindungi (konvensi)
}

Getter dan Setter
Getter dan Setter adalah metode yang memungkinkan akses terkontrol ke variabel private, mereka memungkinkan enkapsulasi dengan menyediakan cara untuk membaca dan memodifikasi data privat memastikan validasi atau perhitungan saat diperlukan.

Class RekeningBank {
double _saldo;
double get saldo => _saldo; // Getter
Set saldo (double saldoBaru) { // Setter
If (saldoBaru >= 0) {
_saldo = saldoBaru;
}
}
}