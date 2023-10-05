import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2Content extends StatelessWidget {
  const Page2Content({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[400], // Ganti warna latar belakang
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Pilihan Cake Birthday',
              style: GoogleFonts.poppins(fontSize: 24, color: Colors.white), // Ubah gaya teks
            ),
            SizedBox(height: 10),
            MenuCard(
              itemName: 'Cake Birthday 1',
              itemPrice: 'RP.150.000',
              imageUrl: 'image/kue1.jpg', // Ganti dengan gambar yang sesuai
              cardColor: Color.fromARGB(255, 219, 176, 112), // Ganti warna latar belakang card
            ),
            MenuCard(
              itemName: 'Cake Birthday 2',
              itemPrice: 'RP.150.000',
              imageUrl: 'image/kue2.jpg',
              cardColor: const Color.fromARGB(255, 153, 187, 113), // Ganti warna latar belakang card
            ),
            MenuCard(
              itemName: 'Cake Birthday 3',
              itemPrice: 'RP.150.000',
              imageUrl: 'image/kue3.jpg',
              cardColor: const Color.fromARGB(255, 238, 142, 174), // Ganti warna latar belakang card
            ),
            MenuCard(
              itemName: 'Cake Birthday 4',
              itemPrice: 'RP.150.000',
              imageUrl: 'image/kue4.jpg',
              cardColor: const Color.fromARGB(255, 144, 202, 249), // Ganti warna latar belakang card

            ),
            MenuCard(
              itemName: 'Cake Birthday 5',
              itemPrice: 'RP.150.000',
              imageUrl: 'image/kue5.jpg',
              cardColor: Color.fromARGB(255, 130, 235, 160), // Ganti warna latar belakang card

            ),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imageUrl;
  final Color cardColor;

  MenuCard({
    required this.itemName,
    required this.itemPrice,
    required this.imageUrl,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(16),
      color: cardColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200, // Lebar gambar
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemName,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Harga: $itemPrice',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
