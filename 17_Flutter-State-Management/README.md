Flutter Global State Management

1. State
Data yang dapat dibaca saat pembuatan widget, dapat berubah saat widget sedang aktif, hanya dimiliki oleh StatefulWidget.

Global state perlu agar antara widget dapat memanfaatkan state yang sama dengan mudah 

Memanfaatkan state
Dibuat sebagai properti dari class, digunakan pada widget saat build
//Property
var number = 0;

// build
Text (' $number');

Mengubah state
Menggunakan method setState
ElevatedButton (
child: const Text (' Tambah '),
onPressed: () {
setState (() {
number = number + 1;
});
},
);

2. Global state
State biasa yang dapat digunakan pada seluruh widget

Provider
State management, perlu diinstall agar dapat digunakan

Instalasi provider
Menambah package provider pada bagian dependencies dalam file pubspec.yaml, jalankan perintan flutter pub get
dependencies:
provider:
,
$ flutter pub get
Running "flutter pub get" in phonebookapp...

Membuat state provider
Buat file bernama contact.dart, definisikan state dalam bentuk class.
import 'package:flutter/material.dart';

Class Contact with ChangeNotifier {
List<Map<String, String>> _contact = [ ];

List<Map<String, String>> _contacts => _contacts;

void add(Map<String, String> contact) {
_contacts.add(contact);
notifyListeners ();
}
}

Mendaftarkan state provider
Import dalam file main.dart, daftarkan pada runApp dengan MultiProvider
import 'package:flutter/material.dart';
Import 'package:provider/provider.dart';
import 'package: phonebookapp/stores/contact.dart' as contact_store;

void main() {
runApp(
MultiProvider (
providers: [
ChangeNotifierProvider (create: (_) => contact_store.Contact())
],
child: MyWidget (),
),
);
}

Menggunakan state dari provider
Simpan provider dalam variabel, ambil data dari provider melalui getter
// build
final contactProvider = Provider.of<contact_store.Contact>(context);

//return
ListView.builder(
itemCount: contactProvider.contacts.length,
ItemBuilder: (context, index) {
return ListTile(
title: Text(contactProvider.contacts[index]['name'] ?? ' '),
subtitle: Text(contactProvider.contacts[index]['phone'] ?? ' '),
);
},
);