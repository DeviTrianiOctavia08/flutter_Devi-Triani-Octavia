Flutter platform widget
Abstract
Memanfaatkan widget dengan gaya berbeda pada Android dan iOS.

1. MaterialApp 
Widget dasar yang mengemas seluruh widget dalam aplikasi, Widget yang digunakan pada sistem Android, Di-impor dari package: flutter/material.dart

Struktur
Widget yang pertama kali dibuka, diletakkan pada bagian home.
-theme : mengatur tema aplikasi
-home : halaman utama
mengatur halaman juga dapat dilakukan dengan menggunakan routes dan initialRoute.
-theme : mengatur tema aplikasi
-initialRoute : Route utama
- 'home' : mendaftarkan halaman pada routes


2. Scaffold
Widget dasar untuk membangun sebuah halaman pada MaterialApp.

 Struktur
Membentuk tata letak dasar sebuah halaman yang ditulis melalui properti-properti.
- appBar : bar menu bagian atas halaman
- drawer : menu bagian samping halaman
- body : bagian utama halaman
- bottomNavigattionBar : menu bagian bawah halaman

3. CupertinoApp
Widget dasar yang mengemas seluruh widget dalam aplikasi, Widget yang digunakan pada sistem iOS, di-diimpor dari package: flutter/cupertino.dart.

Struktur
Variabel_themeDark dibuat untuk menyimpan tema, diperlukan karena cupertino tidak menyediakan ThemeData.dark() seperti pada material.
- const CupertinoThemeData.raw : membuat dasar tema
- Brightness.dark : mengatur brightness menjadi dark.

Widget yang pertama kali dibuka diletakkan pada bagian home.
-theme : mengatur tema aplikasi
- home : mengatur halaman utama

4. CupertinoPageScaffold
Widget dasar untuk membangun sebuah halaman pada CupertinoApp

Struktur
Membentuk tata letak dasar sebuah halaman yang ditulis melalui properti-properti.
-navigationBar : bar menu bagian atas halaman
- child : bagian utama halaman..