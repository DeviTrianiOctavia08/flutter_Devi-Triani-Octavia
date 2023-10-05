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
              'Pilih Birthday Cake',
              style: GoogleFonts.poppins(fontSize: 24, color: Color.fromARGB(255, 238, 234, 234)), // Ubah gaya teks
            ),
            SizedBox(height: 10),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, // Jumlah kolom
                childAspectRatio: 0.55, // Rasio lebar-tinggi
              ),
              itemCount: 10, // Jumlah item
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return MenuCard(
                  itemName: 'Birthday Cake ${index + 1}',
                  itemPrice: 'RP.150.000',
                  imageUrl: 'image/kue${index + 1}.jpg',
                  cardColor: _getCardColor(index), // Ganti warna latar belakang card
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Color _getCardColor(int index) {
    switch (index % 5) {
      case 0:
        return Color.fromARGB(255, 219, 176, 112);
      case 1:
        return Color.fromARGB(255, 102, 147, 210);
      case 2:
        return Color.fromARGB(255, 238, 142, 174);
      case 3:
        return Color.fromARGB(255, 144, 202, 249);
      case 4:
        return Color.fromARGB(255, 141, 239, 169);
      default:
        return Colors.white; // Default color
    }
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150, // Tinggi gambar
            width: 250, // Lebar gambar
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  itemName,
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center, // Teks menjadi tengah
                ),
                SizedBox(height: 8),
                Text(
                  'Harga: $itemPrice',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 79, 54, 45),
                  ),
                  textAlign: TextAlign.center, // Teks menjadi tengah
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Page2Content extends StatelessWidget {
//   const Page2Content({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.teal[400], // Ganti warna latar belakang
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(height: 20),
//             Text(
//               'Pilihan Cake Birthday',
//               style: GoogleFonts.poppins(fontSize: 24, color: Colors.white), // Ubah gaya teks
//             ),
//             SizedBox(height: 10),
//             MenuCard(
//               itemName: 'Cake Birthday 1',
//               itemPrice: 'RP.150.000',
//               imageUrl: 'image/kue1.jpg', // Ganti dengan gambar yang sesuai
//               cardColor: Color.fromARGB(255, 219, 176, 112), // Ganti warna latar belakang card
//             ),
//             MenuCard(
//               itemName: 'Cake Birthday 2',
//               itemPrice: 'RP.150.000',
//               imageUrl: 'image/kue2.jpg',
//               cardColor: Color.fromARGB(255, 102, 147, 210), // Ganti warna latar belakang card
//             ),
//             MenuCard(
//               itemName: 'Cake Birthday 3',
//               itemPrice: 'RP.150.000',
//               imageUrl: 'image/kue3.jpg',
//               cardColor: const Color.fromARGB(255, 238, 142, 174), // Ganti warna latar belakang card
//             ),
//             MenuCard(
//               itemName: 'Cake Birthday 4',
//               itemPrice: 'RP.150.000',
//               imageUrl: 'image/kue4.jpg',
//               cardColor: const Color.fromARGB(255, 144, 202, 249), // Ganti warna latar belakang card
//             ),
//             MenuCard(
//               itemName: 'Cake Birthday 5',
//               itemPrice: 'RP.150.000',
//               imageUrl: 'image/kue5.jpg',
//               cardColor: Color.fromARGB(255, 141, 239, 169), // Ganti warna latar belakang card
//             ),
//             MenuCard(
//               itemName: 'Cake Birthday 6',
//               itemPrice: 'RP.150.000',
//               imageUrl: 'image/kue6.jpg',
//               cardColor: Color.fromARGB(255, 249, 103, 186), // Ganti warna latar belakang card
//             ),
//             MenuCard(
//               itemName: 'Cake Birthday 7',
//               itemPrice: 'RP.150.000',
//               imageUrl: 'image/kue7.jpg',
//               cardColor: Color.fromARGB(255, 205, 233, 96), // Ganti warna latar belakang card
//             ),
//             MenuCard(
//               itemName: 'Cake Birthday 8',
//               itemPrice: 'RP.150.000',
//               imageUrl: 'image/kue8.jpg',
//               cardColor: Color.fromARGB(255, 66, 154, 173), // Ganti warna latar belakang card
//             ),
//             MenuCard(
//               itemName: 'Cake Birthday 9',
//               itemPrice: 'RP.150.000',
//               imageUrl: 'image/kue9.jpg',
//               cardColor: Color.fromARGB(255, 112, 29, 72), // Ganti warna latar belakang card
//             ),
//             MenuCard(
//               itemName: 'Cake Birthday 10',
//               itemPrice: 'RP.150.000',
//               imageUrl: 'image/kue10.jpg',
//               cardColor: Color.fromARGB(255, 234, 157, 99), // Ganti warna latar belakang card
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MenuCard extends StatelessWidget {
//   final String itemName;
//   final String itemPrice;
//   final String imageUrl;
//   final Color cardColor;

//   MenuCard({
//     required this.itemName,
//     required this.itemPrice,
//     required this.imageUrl,
//     required this.cardColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3,
//       margin: EdgeInsets.all(16),
//       color: cardColor,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: 200, // Lebar gambar
//             child: Image.asset(
//               imageUrl,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     itemName,
//                     style: GoogleFonts.poppins(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Harga: $itemPrice',
//                     style: GoogleFonts.poppins(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.brown,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }