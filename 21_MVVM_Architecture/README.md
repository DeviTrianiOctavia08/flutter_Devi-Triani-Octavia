MVVM Architecture

1. Apa itu MVVM Architecture
MVVM (Model-View ViewModel)
Memisahkan logic dengan tampilan view ke dalam ViewModel.

Keuntungan 
1. Reusability
Jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan view model yang sama, ini akan meningkatkan efisiensi kode kita.

2. Maintainability
Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic

3. Testability
Pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian.

2. Melakukan MVVM
Struktur direktori
Model memiliki dua bagian yaitu bentuk data yang akan digunakan dan sumber dari data tersebut, tiap screen diletakkan dalam sebuah direktori yang di dalamnya terdapat view dan ViewModel.

Model
Bentuk data yang akan digunakan dibuat dalam bentuk class, data-data yang dimuat diletakkan pada property.

Model API
ViewModel
Menyimpan data-data dan logic yang diperlukan halaman ContactScreen, jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga

Mendaftarkan ViewModel
Menggunakan MultiProvider agar dapat menggunakan banyak ViewModel, MaterialApp sebagai child utama.

View
Menggunakan StatefulWidget

Menampilkan Data di View
Letakkan pada bagian build, menggunakan getters yang ada pada ViewModel, data dapat langsung ditampilkan pada Widgets

Hasil Akhir:
Sebuah halaman aplikasi, terdapat AppBar yang berjudul Contacts, terdapat list data contact berupa nama dan nomor telepon