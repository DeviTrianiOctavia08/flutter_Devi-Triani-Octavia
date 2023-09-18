1. Assets
File yang dibundled dan dideployed bersamaan dengan aplikasi, tipe-tipe assets seperti static data (Json files), icons, images, dan front file (ttf).

Menentukan assets
Flutter menggunakan pubspec.yaml, pubspec.yaml terletak pada root project, untuk mengidentifikasi aset yang dibutuhkan aplikasi, gunakan karakter "/"untuk memasukkan semua aset di bawah satu direktori nama.
Assets:
- assets/my_icon.png
- assets/background.jpg

2. Image
Image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik, flutter mendukung format gambar seperti JPEG, WebP, gif, animated web/gif, PNG, BMP, dan wbmp, menampilkan gambar dari project aset dan internet.

Loading Images
Gunakan widget image, membutuhkan properti ini dengan nilai clasa AssetImage()
body : Column(
Children: const [
Image(
Image: AssetImage ('assets/background.jpg'),
), // image
Image(
Image : AssetImage ('assets/my_icon.png'),
), // image

Loading Images
Menggunakan method image.asset, mendapatkan image yang sudah ditambahkan dalam project, menggunakan method image.network, mendapatkan data image melalui internet dengan menggunakan string ustring.
body : Column(
Children : [
Image.asset('assets/background.jpg'),
Image.network('https://piscum.photos/id/1/200/300'),
],

3. Font
Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi, penentuan font yang mau dipakai biasanya oleh UI designer, penerapan font menggunakan custom font atau dari package.

Costum font
Cara menggunakan custom font:
- cari dan download font (Ex. https://fonts.google.com/)
- import file .ttf
- daftarkan font di pubspec.yaml
- mengatur font sebagai default
Widget build(BuildContext context) {
Return MaterialApp (
debugShowCheckedModeBanner : false,
title : 'Flutter Assets',
theme : ThemeData (fontFamily : 'Rowdies'),
home: const HomePage(),
); //MaterialApp
}
- gunakan font di spesifik Widget
Text(
'Star Hill',
style:TextStyle(
fontSize : 30,
fontFamily: 'Rowdies',
), //TextStyle
), //Text

Font dari package
Cara menggunakan font dari package:
- tambahkan package google__fonts di dependencies
dependencies:
flutter:
sdk: flutter
google_fonts: ^2.2.0
- impor package di file dart
import 'package:google_fonts/google_fonts.dart';
- gunakan font dengan memanggil GoogleFonts.namaFont()
Text(
'Star Hill',
style : GoogleFonts.rowdies(fontSize : 30),
), // Text

4. Aplikasi Task Management (Continue)
Menambahkan image
TODO 23 : menambahkan image pada empty_task_screen.dart
return Container (
Alignment : Alignment.center,
child: Column(
mainAxisAlignment: mainAxisAlignment.center,
Children: const [
Image (
Image: AssetImage (
'assets/empty_background.png',
), //AssetImage
height: 250,
), //image
], 
), // column
); // container

TODO 24: membuat profile picture di profile_sheet.dart, menggunakan widget CircleAvatar
CircleAvatar(
radius : 50,
backgroundImage: AssetImage ('assets/profile_pic.jpg'),
), // CircleAvatar

TODO 25: menambahkan font pada setiap teks
dependencies:
flutter:
sdk: flutter
provider : ^6.0.2
uuid : ^3.0.5
google_fonts: ^2.2.0

Text (
'Andre',
style : GoogleFonts.poppins(
fontSize:20,
fontWeight: fontWeight.w500,
),
), //Text

TODO 26: (profile_sheet.dart) menambahkan konten lain
SizedBox (
child: Column(
children: [
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children:[
Text(
'Task Completed',
style : GoogleFonts.poppins(fontSize: 17),
), // Text
const Icon (
Icons.chevron_right_rounded,
size:30,
) // Icon
],
), // Row
const SizedBox ( // SizedBox
Row ( // Row 
const SizedBox ( // SizedBox
Row ( // Row 
const SizedBox ( // SizedBox
ElvatedButton (
onPressed:() {},
child: Text(
'Log Out',
style: GoogleFonts.poppins(fontSize: 17),
), // Text
), // ElvatedButton
],
), // column
) // SizedBox

TODO 27: (empty_task_screen.dart) menambahkan teks di bawah image empty screen
Text(
'task main kosong...',
style : GoogleFonts.poppins(
fontSize: 30,
fontWeight : fontWeight.w500,
),
) // Text

- Full Source code:
https://bit.ly/3sgGr90 