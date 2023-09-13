Flutter form input button

1. Form
Menerima isian data dari pengguna, isian data dapat lebih dari satu.

Membuat form
Menggunakan stateful Widget, keadaan form disimpan menggunakan GlobalKey<FromState>
// Property
Var fromKey = GlobalKey<FromState>();

//build
Form(
Key: formKey,
Child: inputWidgets,
);

2. Input
Textfield
Menerima isian data dari pengguna, isian data dapat lebih dari satu.

Membuat Textfield
Data diambil menggunakan teks editing controller, isian data berupa teks.
// Property
Var inputController = TextEditingController();

// build
Textfield(
Controller: inputController,
);

Radio 
Memberi opsi pada pengguna, hanya dapat memilih satu opsi.

Membuat radio
Data diambil menggunakan properti dengan tipe data sesuai value pada radio.
// Property
Var radioValue = ' ';

// build
Radio<String>(
value: 'Laki-laki',
groupValue: radioValue,
OnChanged: (String? value) {
SetState((){
radioValue = value ?? ' ' ;
});
},
);

Checkbox
Memberi opsi pada pengguna, dapat memilih beberapa opsi.

Membuat Checkbox
Data diambil menggunakan properti bertipe bool.
//Property
Var checkValue = false;

//build
Checkbox (
Value: checkValue,
OnChanged: (bool? Value) {
SetState (() {
checkValue= value ?? False;
});
},
);

Dropdown Button
Memberi opsi pada pengguna, hanya dapat memilih satu opsi, opsi tidak ditampilkan di awal, hanya tampil jika ditekan.

Membuat DropdownButton
Data diambil menggunakan properti dengan tipe data sesuai value pada DropdownMenuItem.
//Property
Var dropdownValue = 0;

// build
DropdownButton (
Value: dropdownValue,
OnChanged: (int? Value) {
SetState (() {
dropdownValue = value ?? 0;
});
},
Items: const [
DropdownMenuItem(
Value: 0,
Child: Text ('pilih...'),
),
DropdownMenuItem(
Value: 1,
Child: Text ('satu'),
),
DropdownMenuItem(
Value: 2,
Child: Text ('dua'),
),
DropdownMenuItem(
Value: 3,
Child: Text ('tiga'),
),
],
);

3. Button
Bersifat seperti tombol, dapat melakukan sesuatu saat ditekan.

Elvated Button 
Tombol yang timbul, jika ditekan akan menjalankan onPressed.
ElvatedButton(
Child: const Text ('submit'),
onPressed: () {
//Lakukan sesuatu
},
);

IconButton
Tombol yang hanya menampilkan icon, jika ditekan akan menjalankan onPressed.
IconButton(
Icon: const Icon(Icons.add),
onPressed: (){
// lakukan sesuatu
},
);