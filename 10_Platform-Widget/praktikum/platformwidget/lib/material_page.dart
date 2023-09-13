import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Tambahkan navigasi ke halaman home di sini
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Tambahkan navigasi ke halaman about di sini
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('This is MaterialApp'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
