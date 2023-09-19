import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaterialApp'),
        backgroundColor: Color(0xFF525358),
      ),
      drawer: Drawer(
  child: Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 36, 30, 30), // Ganti dengan warna latar belakang yang Anda inginkan
    ),
    child: ListView(
      children: [
        ListTile(
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white), // Warna teks
          ),
          onTap: () {
            // Tambahkan navigasi ke halaman home di sini
          },
        ),
        ListTile(
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.white), // Warna teks
          ),
          onTap: () {
            // Tambahkan navigasi ke halaman about di sini
          },
        ),
      ],
    ),
  ),
),


      backgroundColor: Color.fromARGB(255, 36, 30, 30), // Ganti dengan warna latar belakang yang Anda inginkan
  body: ListView(
  children: const [
    ListTile(title: Row(children: [CircleAvatar(
      backgroundColor: Colors.grey,
      child: Icon(Icons.person,color: Colors.white,
    ),
    ),
    SizedBox(width: 10),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Leane Graham', style: TextStyle(color: Colors.white)),
        SizedBox(height: 5,),
        Text('1-770-736-8031 x56442',style: TextStyle(color: Colors.white),
        ),
      ],
    )
    ],
    ),
    ),
    ListTile(title: Row(children: [CircleAvatar(
      backgroundColor: Colors.grey,
      child: Icon(Icons.person,color: Colors.white,
    ),
    ),
    SizedBox(width: 10),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Ervin Howell', style: TextStyle(color: Colors.white)),
        SizedBox(height: 5,),
        Text('010-692-6593 x09125',style: TextStyle(color: Colors.white),
        ),
      ],
    )
    ],
    ),
    ),
    ListTile(title: Row(children: [CircleAvatar(
      backgroundColor: Colors.grey,
      child: Icon(Icons.person,color: Colors.white,
    ),
    ),
    SizedBox(width: 10),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Clementine Bauch', style: TextStyle(color: Colors.white)),
        SizedBox(height: 5,),
        Text('1-463-123-4447',style: TextStyle(color: Colors.white),
        ),
      ],
    )
    ],
    ),
    ),
    ListTile(title: Row(children: [CircleAvatar(
      backgroundColor: Colors.grey,
      child: Icon(Icons.person,color: Colors.white,
    ),
    ),
    SizedBox(width: 10),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Patricia Lebsack', style: TextStyle(color: Colors.white)),
        SizedBox(height: 5,),
        Text('493-170-9623 x156',style: TextStyle(color: Colors.white),
        ),
      ],
    )
    ],
    ),
    ),
    ListTile(title: Row(children: [CircleAvatar(
      backgroundColor: Colors.grey,
      child: Icon(Icons.person,color: Colors.white,
    ),
    ),
    SizedBox(width: 10),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Chelsey Dietrich', style: TextStyle(color: Colors.white)),
        SizedBox(height: 5,),
        Text('(254)954-1289',style: TextStyle(color: Colors.white),
        ),
      ],
    )
    ],
    ),
    ),
    ListTile(title: Row(children: [CircleAvatar(
      backgroundColor: Colors.grey,
      child: Icon(Icons.person,color: Colors.white,
    ),
    ),
    SizedBox(width: 10),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Mrs. Dennis Schulist', style: TextStyle(color: Colors.white)),
        SizedBox(height: 5,),
        Text('1-477-935-8478 x6430',style: TextStyle(color: Colors.white),
        ),
      ],
    )
    ],
    ),
    ),
    ListTile(title: Row(children: [CircleAvatar(
      backgroundColor: Colors.grey,
      child: Icon(Icons.person,color: Colors.white,
    ),
    ),
    SizedBox(width: 10),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Kurtis Weissnat', style: TextStyle(color: Colors.white)),
        SizedBox(height: 5,),
        Text('210.067.6132',style: TextStyle(color: Colors.white),
        ),
      ],
    )
    ],
    ),
    ),
  ],
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
