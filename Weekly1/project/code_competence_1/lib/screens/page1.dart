import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:code_competence_1/screens/page2.dart';

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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '"Selamat Datang di Toko Kue Kami"',
                        style: GoogleFonts.pacifico(fontSize: 36, color: Colors.white),
                      ),
                      const SizedBox(height: 20), // Menambahkan jarak antara teks
                      Text(
                        'Menerima Pesanan Birthday Cake sesuai gambar yang diinginkan atau gambar yang sudah tersedia di Toko Kami...',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.white,
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
                        child: Text('Lihat Menu'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
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
