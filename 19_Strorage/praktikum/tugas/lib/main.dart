// main.dart
import 'package:flutter/material.dart';
import 'package:storage/contact.dart';
import 'package:storage/page/login.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Storage',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: '/', // Atur rute awal ke halaman login
      routes: {
        '/': (context) => Login(), // Rute untuk halaman login
        '/contact': (context) => Contact(), // Rute untuk halaman contact
      },
    );
  }
}
