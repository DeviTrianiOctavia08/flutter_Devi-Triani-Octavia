import 'package:flutter/material.dart';
import 'gallery.dart'; // Sesuaikan dengan nama berkas GalleryPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => GalleryPage(),
        
      },
    );
  }
}
