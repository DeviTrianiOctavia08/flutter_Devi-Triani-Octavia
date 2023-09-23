Flutter navigation
Navigation adalah berpindah dari halaman 1 ke halaman lain,

1. Navigation Dasar
Perpindahan halaman menggunakan navigator.push () //Go
//Back  kembali ke halaman sebelumnya menggunakan navigator.pop ()

Perpindahan halaman
class HomeScreen extends StatelessWidget {
const HomeScreen{Key? key}) : super(key: key);

@override
Widget build (BuildContext context) {
return Scaffold (
appBar: AppBar (
title: const Text ('Home Screen'),
),
body: Center(
child: ElevatedButton (
child: const Text ('Go To About Page'),
onPressed: () {

//saat tombol ditekan
//Pindah ke halaman about screen
Navigator.off(context).push(
MaterialPageRoute (builder: (_) => const AboutScreen()),
);
},
},
),
);
}
}

Perpindahan halaman
class AboutScreen extends StatelessWidget {
const AboutScreen{Key? key}) : super(key: key);

@override
Widget build (BuildContext context) {
return Scaffold (
appBar: AppBar (
title: const Text ('About Screen'),
),
);
}
}

Mengirim data ke halaman baru
Menggunakan parameter pada konstruktor halaman
ElevatedButton (
child: const Text ('Go To About Page'),
onPressed: () {

//Saat tombol ditekan
//Pindah ke halaman about screen dengan parameter
Navigator.of(context).push(
MaterialPageRoute (
builder: (_) => const AboutScreen (parameter: 'Hore'),
),
);
},
);

class AboutScreen extends StatelessWidget {

//Properti yang akan menerima parameter
final String parameter;
const AboutScreen {Key? key, required this.parameter}) : super(key: key);

@override
Widget build (BuildContext context) {
return ...;
}
}

2. Navigation dengan Named Routes
Tiap halaman memiliki alamat yang disebut route, perpindahan halaman menggunakan navigator.pushNamed () //Go
//Back kembali ke halaman sebelumnya menggunakan navigator.pop ()

Mendaftarkan route
Tambahkan initial route, dan Routes pada MaterialApp, tiap route adalah fungsi yang membentuk halaman.
MaterialApp(
debugShowCheckedModeBanner: false,

//Menentukan halaman yang pertama kali dibuka
initialRoute: '/',

//Daftar halaman yang dapat dibuka
routes: {
'/': (_) => const HomeScreen(),
'/about': (_) => const AboutScreen (),
},
);

Perpindahan halaman
ElevatedButton (
child: const Text ('Go To About Page'),
onPressed: () {}

//Saat tombol ditekan
//Pindah ke halaman dengan nama/about
Navigator.of(context).pushNamed('/about');
},
);

Mengirim data ke halaman baru
Menggunakan argumen saat melakukan push named
ElevatedButton (
child: const Text ('Go To About Page'),
onPressed: () {}

//Saat tombol ditekan
//Pindah ke halaman AboutScreen dengan parameter
Navigator.of(context).pushNamed('/about'
arguments: 'Hore',
);
},
);

class AboutScreen extends StatelessWidget {
//...
@override
Widget build (BuildContext context) {

//Mengambil parameter yang dikirim melalui argumen
Final parameter = ModalRoute.of(context)!. settings.arguments as String;
return ...;
}
}