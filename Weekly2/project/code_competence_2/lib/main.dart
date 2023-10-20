import 'package:code_competence_2/screens/about_us_page.dart';
import 'package:code_competence_2/screens/page1.dart';
import 'package:code_competence_2/screens/page2.dart';
import 'package:code_competence_2/screens/page3.dart';
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
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Text(
          'Toko Kue Mbak Devi',
          style: GoogleFonts.poppins(fontSize: 24, color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 228, 89, 252),
        elevation: 5.0,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Contact Us'),
              onTap: () {
                // Tambahkan aksi ketika Contact Us ditekan
                Navigator.pop(context); // Tutup sidebar setelah dipilih
              },
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {
                // Tambahkan aksi ketika About Us ditekan
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Login'),
              onTap: () {
                // Tambahkan aksi ketika Login ditekan
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Page1Content(
                height: MediaQuery.of(context).size.height,
              ),
              Page2Content(),
              AboutUsPage(),
            ],
          ),
        ),
      ),
    );
  }
}
