import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final List<String> images = [
    'assets/apel.jpg',
    'assets/belimbing.jpg',
    'assets/mangga.jpg',
    'assets/pisang.jpg',
    // Tambahkan path gambar yang Anda miliki di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeri Gambar'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _showImageBottomSheet(context, images[index]);
            },
            child: Image.asset(images[index]),
          );
        },
      ),
    );
  }

  void _showImageBottomSheet(BuildContext context, String imagePath) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(imagePath),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NewPage(),
                    ));
                  },
                  child: Text('Ya'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Tidak'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Baru'),
      ),
      body: Center(
        child: Text('Ini adalah halaman baru setelah memilih "Ya".'),
      ),
    );
  }
}