1. Introduction Flutter and Flutter Widget
Flutter adalah alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi mobile desktop dan web.

Keunggulan Flutter
Mudah digunakan dan dipelajari, produktivitas tinggi, dokumentasi lengkap, komunitas yang berkembang.

Bagian dari Flutter
SDK (Software Development Kit)
Alat-alat untuk membantu proses pengembangan aplikasi.
Framework
Perlengkapan untuk membentuk aplikasi yang dapat dikustomisasi.

Membuat projek
Dilakukan dengan menjalankan perintah:
Flutter create <nama_project>

Menjalankan projek
Masuk direktori project, jalankan perintah : flutter run

Struktur direktori
Direktori platform:
Android, ios, web
Direktori project:
Lib - ruang kerja utama
Test - aktivitas pengujian

File utama
Pertama kali dibaca dan dijalankan, dalam direktori lib

2. Widget
Digunakan untuk membentuk antarmuka atau UI, berupa class, dapat terdiri dari beberapa widget lainnya.
Jenis stateful

3. Stateless Widget
Tidak bergantung pada perubahan data, hanya fokus pada tampilan, dibuat dengan extends pada class StatelessWidget.

Membuat Stateless Widget 
Class MyWidget extends StatelessWidget {
Const MyWidget ({Key? Key}) : super(key : key) ;

@override
Widget build(BuildContext context) {
return const MaterialApp(
home: Scaffold(
body: Text( ' Selamat datang di Flutter . ' ),
),
);
}
}

4. Stateful Widget
Mementingkan pada perubahan data, dibuat dengan extends pada class StatefulWidget, 1 widget menggunakan 2 class (widget dan state).

Membuat Stateful Widget 
Class MyWidget extends StatelessWidget {
Const MyWidget ({key? Key}) : super (key: key);

@override
CreateState() => MyWidgetState();
}

5. Built in Widget
Widget yang dapat langsung digunakan, sudah terinstal bersama flutter.

MaterialApp
Membangun aplikasi dengan desain material
Const MaterialApp ();

Const MaterialApp {
home: Text ( ' Selamat datang di Flutter. ' ),
} ;

Scaffold
Membentuk sebuah halaman
Const Scaffold ();

Const Scaffold {
body: Text( ' Selamat datang di Flutter. ' ),
};

AppBar
Membentuk application bar yang terletak pada bagian atas halaman.
AppBar ();

AppBar (
title: const Text ( ' Home ' ),
);

Text 
Menampilkan teks
Const Text(teks);

Const Text ( 'halooo...');

Hasil 
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold (
appBar: AppBar (
Title: const Text ('home'),
),
body: const Text ( 'Selamat datang di Flutter. '),
),
);
}

