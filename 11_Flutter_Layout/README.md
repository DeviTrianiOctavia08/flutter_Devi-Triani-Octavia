1. Flutter Layout
Layout adalah untuk mengatur tata letak, layout berbentuk Widget yang mengatur widget di dalamnya

2. Single-child layout
Container
Membuat sebuah box, membungkus widget lain, box memiliki margin, padding, dan border
Contoh: 
Container (
child: Text(teks),
);

Penggunaan container
Container (
Margin: const EdgeInsets.all(10),
Padding: const EdgeInsets.all(10), 
Decoration: BoxDecoration(
border: Border.all(),
),
child: const Text ('HALO'),
),
);

Center
Membuat sebuah box, membungkus widget lain, memenuhi lebar dan tinggi ruang di luarnya, meletakkan widget berada di bagian tengah.
Center (
child: Text(teks),
);

SizedBox
Membuat sebuah box, membungkus widget lain, box dapat diatur lebar dan tingginya, lebih sederhana dari container
SizedBox (
Width: 100,
Height: 150,
child: Text(teks),
);

3. Multi-child layout
Column
Mengatur widgets secara vertikal
Column(
Children: const [
Text(teks),
Text(teks),
Text(teks),
Text(teks),
],
);

Penggunaan column
Column(
Children: [
Container (
Margin: const EdgeInsets.all(10),
Decoration: BoxDecoration (border: Border.all()),
Child: const Text ('H'),
),
Container (
Margin: const EdgeInsets.all(10),
Decoration: BoxDecoration (border: Border.all()),
Children: const Text ('A'),
),
Container (
Margin: const EdgeInsets.all(10),
Decoration: BoxDecoration (border: Border.all()),
Children: const Text ('L'),
),
Container (
Margin: const EdgeInsets.all(10),
Decoration: BoxDecoration (border: Border.all()),
Children: const Text ('O'),
),
],
);

Row
Mengatur widgets secara horizontal
Row(
Children: const [
Text(teks),
Text(teks),
Text(teks),
Text(teks),
],
);

Penggunaan Row
Row
Children: [
Container (
Margin: const EdgeInsets.all(10),
Decoration: BoxDecoration (border: Border.all()),
Child: const Text ('H'),
),
Container (
Margin: const EdgeInsets.all(10),
Decoration: BoxDecoration (border: Border.all()),
Children: const Text ('A'),
),
Container (
Margin: const EdgeInsets.all(10),
Decoration: BoxDecoration (border: Border.all()),
Children: const Text ('L'),
),
Container (
Margin: const EdgeInsets.all(10),
Decoration: BoxDecoration (border: Border.all()),
Children: const Text ('O'),
),
],
);

ListView
Mengatur widgets dalam bentuk list, memiliki kemampuan scroll
ListView(
Children: [
Container (
Margin: const EdgeInsets.all(10),
Decoration: BoxDecoration (border: Border.all()),
Child: const Text ('H'),
),
);

GridView
Mengatur widgets dalam bentuk galeri
GridView.count(
CrossAxisCount: angka,
Children: [],
);

Penggunaan GridView 
GridView.count(
CrossAxisCount: 2,
Children: [
Container (
Margin: const EdgeInsets.all(10),
Decoration: BoxDecoration (border: Border.all()),
Child: const Text ('H'),
),
],
);
.