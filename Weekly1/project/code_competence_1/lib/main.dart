import 'package:code_competence_1/screens/page1.dart';
import 'package:code_competence_1/screens/page2.dart';
import 'package:code_competence_1/screens/page3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => OnePageScroll(),
        '/page2': (context) => Page2Content(),
        // Tambahkan rute untuk Page3 jika diperlukan
      },
    ),
  );
}

class OnePageScroll extends StatelessWidget {
  const OnePageScroll({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Toko Kue Mbak Devi',
          style: GoogleFonts.poppins(fontSize: 24, color: Colors.white), // Ubah ukuran teks
        ),
        backgroundColor: Color.fromARGB(255, 228, 89, 252), // Ganti warna latar belakang
        elevation: 5.0,
        actions: [
          IconButton(
          icon: Icon(
            Icons.cake, // Menggunakan ikon kue dari paket Flutter
            size: 24, // Ubah ukuran ikon sesuai keinginan
            color: Colors.white, // Ubah warna ikon sesuai keinginan
          ),
          onPressed: () {
            // Tambahkan aksi yang sesuai ketika ikon kue ditekan
          },
        ),

        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Tambahkan padding di sini
        child: SingleChildScrollView(
          child: Column(
            children: [
              Page1Content(
                height: MediaQuery.of(context).size.height,
              ),
              // Page2Content(),
              ContactUsPage(),
              // Tambahkan tombol atau aksi untuk Page3 jika diperlukan
            ],
          ),
        ),
      ),
    );
  }
  
  Page3Content() {}
}
