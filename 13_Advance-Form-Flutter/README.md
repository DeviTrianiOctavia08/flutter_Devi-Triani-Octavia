Advance form input

Interactive widgets
Interaksi antara aplikasi dan user, mengumpulkan input dan feedback dari user.

Menambahkan layout 
Layout untuk menyusun interactive Widget.
Widget build (BuildContext context) {
return Scaffold (
appBar: AppBar (
title: const Text ( ' interactive widgets '),
centerTitle: true,
), // AppBar
body: container(
Padding: const EdgeInsets.all(16),
Child: ListView (
Children: const [
// buildDatePicker
// buildColorpicker
// buildFilepicker
],
), // ListView
), // container
); // Scaffold
}

1. Date picker
Widget dimana user bisa memasukkan tanggal, tanggal kelahiran, waktu pemesanan tiket, waktu reservasi restoran, jadwal meeting, dll.

Cara membuat date picker
Menggunakan fungsi bawaan flutter showDatePicker, fungsi show date picker memiliki tipe data future, menampilkan dialog material design date picker.

Basic code: 
Final selectDate= await showDatePicker (
context: context,
initialDate: currentDate,
FirstDate: DateTime(1990),
LastDate: DateTime(currentDate.year + 5),
);
- Menambahkan packages intl di pubspec.yaml
dependencies:
flutter:
sdk: flutter
intl: ^0.17.0
- mempersiapkan variabel
Class _HomePageState extends State<HomePage> {
DateTime _dueDate = DateTime.now();
Final currentDate = DateTime.now();
- membangun UI
Widget buildDatePicker (BuildContext context) {
Return column (
CrossAxisAlignment: CrossAxisAlignment.start,
Children: [
Row(
mainAxisAlignment: mainAxisAlignment.spaceBetween,
Children: [
Const Text ('Date'),
TextButton(
Child: const Text ('Select'),
onPressed: () {},
), //TextButton
],
), //Row
Text (DateFormat('dd-MM-yyyy'). format(_dueDate)),
],
); //Column
}
- menambahkan fungsi showDatePicker di dalam onPressed.
onPressed: () async {
Final selectDate = await showDatePicker (
Context: context,
initialDate: currentDate,
FirstDate: DateTime (1990),
LastDate: DateTime (currentDate.year + 5),
);
- memanggil fungsi SetState di dalam onPressed.
SetState (() {
If (selectDate != null) {
_dueDate = selectDate;
}
});
- hasil akhir
Saat select button ditekan akan muncul dialog date, picker, tanggal yang ada di UI akan berubah sesuai dengan tanggal yang dipilih.

2. Color picker
Widget di mana user bisa memilih color, penggunaan color picker bisa digunakan untuk berbagai macam kondisi.

Cara membuat color picker
-Menggunakan packages flutter_colorpicker
-menambahkan packages flutter_colorpicker di pubspec.yaml
dependencies;
flutter:
sdk: flutter
intl: ^0.17.0
flutter_colorpicker: ^1.0.3
- mempersiapkan variabel
Color_currentColor = colors.orange;
- membangun UI
Widget buildColorPicker (BuildContext context) {
return column (
CrossAxisAlignmet: CrossAxisAlignmet.start,
children: [
Const Text ('color'),
Const SizedBox (height: 10),
Container (
height: 100,
Width: double.infinity,
Color: _currentColor,
), // Container
Const SizedBox (height: 10),
Center(
Child: ElvatedButton (
Style: ButtonStyle(
backgroundColor: MaterialStateProperty.all(_currentColor),
), // ButtonStyle
Child: const Text ('Pick Color'),
onPressed: () {},
), // ElvatedButton
), // Center 
],
); // column
}
- menambahkan fungsi show dialog di dalam onPressed dengan return widget alertdialog.
onPressed: () {
ShowDialog(
Context: context,
builder: (context) {
return Alertdialog (
title: const Text ('Pick Your Color '),
actions : [
TextButton (
onPressed: () {
Navigator.pop(context);
},
Child: const Text ('Save'),
), // TextButton
],
); // AlertDialog 
},
);
},
- import packages flutter_colorpicker dalam file dart
Import 'package:flutter_colorpicker/flutter_colorpicker.dart';
- membuat kode untuk penggunaan packages flutter_colorpicker
return AlertDialog (
title: const Text (' Pick Your Color '),
content: BlockPicker(
pickerColor: _currentColor,
onColorChanged: (color) {
SetState (() {
_currentColor = color;
});
},
), // BlockPicker

- Hasil Akhir
Packages flutter_colorpicker memiliki custom widget yang dapat digunakan, seperti BlockPicker, ColorPicker, dan SlidePicker.

3. File picker
Kemampuan widget untuk mengakses storage, memilih dan membuka file.
- menggunakan packages file_picker dan open_file
- menambahkan packages file_picker dan open_file di pubspec.yaml
dependencies;
flutter:
sdk: flutter
intl: ^0.17.0
flutter_colorpicker: ^1.0.3
file_picker: ^4.3.3
open_file: ^3.2.1
- impor packages file_picker dan open_file dalam dile dart
Import 'package: file_picker/file_picker.dart';
Import 'package: open_picker/open_picker.dart';
- membangun UI
Widget buildColorPicker () {
return column (
CrossAxisAlignmet: CrossAxisAlignmet.start,
children: [
Const Text ('Pick Files'),
Const SizedBox (height: 10),
Center (
Child: ElvatedButton (
Child Const Text ('Pick and open File'),
onPressed: () {},
), // ElvatedButton
), // Center 
],
); // column
}
- membuat fungsi untuk mengeksplor dan memilih file di storage
Void _pickFile() async {
final result = await FilePicker.platform.pickFiles();
If (result == null) return;
- memanggil fungsi _pickFile di dalam onPressed
Center(
Child: ElvatedButton (
Child Const Text ('Pick and open File'),
onPressed: () {},
_pickFile();
},
), // ElvatedButton
), // Center 
- membuat fungsi untuk membuka file yang telah dipilih
Void _openFile(platformFile file) {
openFile.open (file.path);
}
- mengambil file dari objek result dan memanggil fungsi _openFile didalam fungsi _pickFile
Void _pickFile() async {
final result = await FilePicker.platform.pickFiles();
If (result == null) return;

// mendapatkan file dari objek result
Final file = result.files.first;
_openFile(file);
}
- Hasil Akhir
Ketika batang ditekan maka akan membuka storage device dan file yang dipilih akan terbuka.