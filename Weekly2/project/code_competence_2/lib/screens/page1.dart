import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:code_competence_2/screens/page2.dart';

class Page1Content extends StatelessWidget {
  final double height;

  Page1Content({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
  height: height,
  child: Stack(
    children: [
      Positioned.fill(
        child: Image.asset(
          'image/cake.jpg',
          fit: BoxFit.cover,
        ),
      ),
      SingleChildScrollView(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 50), // Menambahkan jarak antara gambar dan teks
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20), // Padding di sekitar teks
                      decoration: BoxDecoration(
                        color: Color.fromARGB(100, 0, 0, 0), // Warna latar belakang dengan transparansi
                        borderRadius: BorderRadius.circular(10), // Bentuk pinggiran
                      ),
                      child: Text(
                        '"Selamat Datang di Toko Kue Kami"',
                        style: GoogleFonts.pacifico(fontSize: 36, color: Color.fromARGB(255, 251, 250, 250)),
                      ),
                    ),
                    const SizedBox(height: 20), // Menambahkan jarak antara teks
                    Container(
                      padding: EdgeInsets.all(20), // Padding di sekitar teks
                      decoration: BoxDecoration(
                        color: Color.fromARGB(100, 0, 0, 0), // Warna latar belakang dengan transparansi
                        borderRadius: BorderRadius.circular(10), // Bentuk pinggiran
                      ),
                      child: Text(
                        'Menerima Pesanan Birthday Cake sesuai gambar yang diinginkan atau gambar yang sudah tersedia di Toko Kami...',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color.fromARGB(255, 251, 246, 246),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20), // Menambahkan jarak antara teks
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Page2Content()),
                        );
                      },
                      child: Text('Lihat Gambar'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 197, 44, 85),
                        textStyle: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 50), // Menambahkan jarak antara gambar dan teks
            ],
          ),
        ),
      ),
    ],
  ),
);

  }
}
