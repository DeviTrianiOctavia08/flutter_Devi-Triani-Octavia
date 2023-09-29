State management (Bloc)
1. Declarative UI
Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini

State
State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori, flutter akan membangun ulang UI nya ketika ada state atau data yang berubah, ada 2 jenis state dalam flutter,
- ephemeral state 
Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widget nya, contohnya: PageView, bottomNavigattionBar, Switch Button.
Tidak perlu state management yang kompleks, hanya membutuhkan StatefulWidget dengan menggunakan fungsi SetState ()
- app state.
Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya:
Login info, pengaturan preferensi pengguna, keranjang belanja, dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda.

Pendekatan state management
- setState, lebih cocok penggunaan nya pada ephemeral state. 
- Provider, penggunaan untuk state management yang lebih kompleks seperti app store, pendekatan ini direkomendasikan oleh tim flutter karena mudah dipelajari.
- Bloc menggunakan pola stream/observable, untuk memisahkan UI dengan bisnis logic nya.

2. setState
Latihan membuat aplikasi shop cart
Menggunakan pendekatan state management dengan setState
- membuat project flutter baru
(Main.dart) pada bagian main.dart buat kode seperti ini:
Void main () {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp ({Key? key}) : super(key: key);

//This widget is the root of your application.
@override
Widget build (BuildContext context) {
return MaterialApp (
debugShowCheckedModeBanner: false,
title: 'Shop Cart',
theme: ThemeData(
primary Swatch: colors.orange,
), // ThemeData
home: const ProductPage(),
); //MaterialApp
}
}

- membuat halaman utama
Buat folder baru screens, didalam nya tambahkan file dart baru product_page.dart, (product_page.dart) tambahkan AppBar dan IconButton.
Class ProductPage extends StatelessWidget {
const ProductPage ({Key? key}) : super(key: key);

@override
Widget build (BuildContext context) {
return Scaffold (
appBar: AppBar (
title: const Text ('Laptop Shop'),
centerTitle: true,
actions: [
IconButton (
onPressed: () {},
icon : const Icon(Icons.shopping_cart_rounded),
),
],
),
);
}
}

- membuat widget untuk product list
(Product_page.dart) buat StatelessWidget baru ProductList dibawah StatelessWidget ProductPage, dan dipanggil widget ProductList nya di properti body ProductPage
body: ProductList (),
);
}
}

class ProductList extends StatelessWidget {
const ProductList ({Key? key}) : super(key: key);

@override
Widget build (BuildContext context) {
return Container (
padding: const EdgeInsets.all(16),
color: Colors.orange.withOpacity(0.5),
);
}
}

- step 4 membuat class product
Buat folder baru models, didalam nya buat file dart baru product.dart , (product.dart) buat class product yang memiliki list nama-nama product.
Class Product {
final List<String> productList = [
'Laptop Asus',
'Laptop Dell',
'Laptop Macbook ',
'Laptop Lenovo',
'Laptop HP',
'Laptop Toshiba',
'Laptop Acer',
'Laptop Xiaomi ',
];
}

//Step 5 belum sama codingan
- menambahkan grid view
(product_page.dart) tambahkan GridView.builder (), 
(product_page.dart) buat variabel final baru produkList.

- membuat widget productCards
(product_page.dart) buat StatelessWidget ProductCards, (product_page.dart) tambahkan constructor productName dan widget card dengan child column.

- membuat tampilan card
(product_page.dart) tambahkan 2 expanded widget di dalam column, satu untuk image.network kedua untuk nama produk dan icon cart.

- membuat halaman cart page
Buat file dart baru cart_page.dart Dan tambahkan Appbar dan container Widget pada body

- membuat navigasi ke cart page
(product_page.dart) buat navigasi di IconButton yang ada di bagian action AppBar.

- mengubah ke stateful Widget
( product_page.dart) ubah productList menjadi StatefullWidget, karena di sini menyimpan step yang dapat berubah dan tambahkan variabel cartList yang menjadi statenya.

- membuat constructor di ProductCards
(product_page.dart) membuka constructor diakses atau tidak halaman yang di ProductCards untuk mengirim perubahan state ke productList, (product_page.dart) pada Iconbutton nya tambahkan properti constructor-nya.

- mengubah pemanggilan di ProductCards
(product_page.dart) menambahkan properti yang dibutuhkan Widget ProductCards.

- memahami hierarki Widget
Bagaimana mengirimkan data step ke cart page?
Melakukan lift the state up, ya itu dengan memindahkan state ke hirarki di atasnya supaya dapat digunakan oleh Widget Widget di bawahnya.

- melakukan drilling
Ubah produk page jadi statefullWidget, pindahkan cart list yang menyimpan data state di sini.

- membuat constructor di produk list
Buat constructor cartList di productList dan memperbaiki pemanggilan widgetnya

- ( cart_page.dart) buat constructor cartList di cart page dan memperbaiki pemanggilan widgetnya di navigasi yang ada di product_page.dart

- menambahkan tampilan di cart page
(cart_page.dart) buat column yang terdapat list view dan button.

Hasil akhir: Full Source Code: 
https://bit.ly/3ssM6dc.

3. Provider
Latihan membuat aplikasi shop cart
Menggunakan pendekatan state management dengan provider.
 
- install package provider
tambahkan package provider di dependencies
dependencies:
flutter:
sdk: flutter
provider: ^6.0.2

Class yang perlu diperhatikan dalam penggunaan provider yaitu dari - package provider: ChangeNotifierProvider, MultiProvider, Constumer.
- built in class dari flutter SDK: ChangeNotifier : 
Class yang menambah dan menghapus listeners, digunakan dengan cara mengextends, memanggil notifyListeners(), fungsi yang memberitahu Widget yang menggunakan state bahwa terjadi perubahan data sehingga UI nya harus dibangun ulang.

- membuat provider manager
Buat file dart baru di dalam folder models dengan nama cart_page.dart, (cart_page.dart) pindahkan variabel cartList yang menyimpan data state di dalam class CartManager.

- membuat method
(cart_page.dart) buat method complete () di dalam class, yang digunakan untuk menambahkan data baru ke dalam list cartlist

ChangeNotifierProvider
Widget yang membungkus sebuah class, mengimplementasikan change notifier dan menggunakan child untuk Widget ui-nya, menggunakan create, provider yang akan menyimpan model yang telah dibuat.

MultiProvider
Jika kita membutuhkan lebih dari satu provider
- menambahkan ChangeNotifierProvider
(main.dart) bungkus material app dengan change notifier provider

Customer 
Widget yang mendengarkan perubahan kelas yang mengimplementasikan change notifier, membangun ulang Widget yang dibungkus customer saja, penting untuk meletakkan customer pada lingkup sekecil mungkin, membutuhkan properti builder yang berisi context model dan child.
- menambahkan customer
(product_page.dart) bungkus Widget ProductCards dengan customer, ganti dengan method yang telah dibuat di chart manager.

- akses data dengan provider.of
(cart_page.dart) buat variabel baru yang menampung data dari provider

- hapus kode yang tidak dibutuhkan
Hapus variabel dan constructor tidak dibutuhkan lagi, ubah menjadi stateless widget karena tidak memanggil fungsi set-state() lagi, 

Hasil akhir:
Full Source Code:
https//bit.ly/3uq2VYK

4. BLoC
Bloc ( busines logic component), memisahkan antara bussines logic dengan UI.

Kenapa bloc?
Simple, powerful, testable.

Cara kerja bloc
Menerima event sebagai input, dianalisa dan dikelola di dalam bloc, menghasilkan state sebagai output.

Stream
Rangkaian proses secara asinkronus, aktor utama di dalam bloc.

Latihan bloc
Membuat counter app dengan pendekatan state management bloc

- install package
Dependencies:
Flutter:
SDK: Flutter 
Flutter_bloc: ^8.0.1
Equatable: ^2.0.3
Agar dapat menggunakan kode bloc, mencegah rebuilds yang tidak dibutuhkan.

- membuat folder bloc
Buat 3 file dart baru, counter_bloc.dart, counter_event.dart, dan counter_state.dart, bisa buat secara manual atau buat dengan extensions di kode editor.

- menambahkan event
Tambahkan event di counter_event.dart

- menambahkan state
Tambahkan state untuk menyimpan nilai counter di counter_state.dart

- menambahkan logika bisnis
Tambahkan logika bisnis di counter_bloc.dart, gunakan fungsi emit untuk mengirim state terbaru

- menambahkan bloc provider
Tambahkan BlocProvider di main.dart, Widget yang menyediakan bloc ke childrennya

-membangun UI
Buat folder baru screens, di dalamnya buat file dart baru home_page.dart

- menambahkan BlocBuilder
Tambahkan BlocBuilder di home_page.dart, Widget yang menangani pembuatan widget sebagai respon terhadap state baru

- mengganti text
Menampilkan nilai terbaru yang dimiliki State

-menambahkan context.read
Tambahkan context.read pada fungsi onPressed ElevatedButton, memungkinkan kita mengakses bloc dengan BuildContext dan tidak menghasilkan rebuilds.