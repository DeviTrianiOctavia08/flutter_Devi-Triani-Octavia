import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'contact.dart';
import 'galery.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dialog Bottom Sheet',
      home: HomePage(),
      routes: {
        '/contact': (context) => Contact(),
        '/gallery': (context) => GalleryApp(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Contact', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Pindah ke halaman Contact saat item Contact diklik
                Navigator.of(context).pushNamed('/contact');
              },
            ),
            ListTile(
              title: const Text('Gallery', style: TextStyle(color: Colors.black)),
              onTap: () {
                // Pindah ke halaman Gallery saat item Gallery diklik
                Navigator.of(context).pushNamed('/gallery');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Lottie.asset(
            'assets/apel.jpg',
            // repeat: false,
            frameRate: FrameRate.max,
            fit: BoxFit.fill,
          ),
      ),
    );
  }
}