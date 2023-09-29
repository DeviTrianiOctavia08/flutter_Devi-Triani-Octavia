Storage

1. Penyimpanan lokal
Diperlukan untuk efisiensi penggunaan data internet, ada beberapa cara implementasi penyimpanan lokal contohnya seperti shared preference dan local database

2. Shared preference
Menyimpan data yang sederhana, penyimpanan dengan format key value, menyimpan tipe data dasar seperti teks angka dan boolean, contoh penggunaan share preference seperti menyimpan data login dan menyimpan riwayat pencarian.

Implementasi share preference
Menambahkan share preference pada fitur login
- tambahkan package shared_preference
dependencies:
flutter:
sdk: flutter
email_validator: ^2.0.1
shared_preferences: ^ 2.0.12

-buat properti baru untuk TextEditingController Dan tambahkan di setiap TextFormField

- buat method dispose (), untuk menghindari kebocoran memori

- buat variabel baru untuk menyimpan SharedPreference dan nilai bool newUser

- buat method baru dengan nama checkLogin()

- panggil method checkLogin () di method initState(), fungsi yang pertama kali dipanggil sebelum widget tree nya dibangun.

- di dalam onPressed ElevatedButton, buat variabel baru username untuk menampung input dari user

- buat setBool dan setString di dalam blok kode if, dan buat navigasi untuk ke halaman HomePage

-buat file dart baru home_page.dart dan tambahkan ui-nya

- (home_page.dart) buat variabel baru untuk menyimpan SharedPreference Dan username, (home_page.dart) buat method baru initial (), dan panggil di method initState ()

- (home_page.dart) mengganti text 'username' menjadi variabel username

- (home_page.dart) tambahkan method setBool dan remove pada ElevatedButton.

Hasil akhir
Ketika menekan login maka akan masuk ke homepage dan menampilkan teks username sesuai yang diinputkan di teks form field.

3. Aplikasi task management

- menambahkan fitur login
Menambahkan login screen pada aplikasi task management, dan menambahkan shared_preference package, dan email_validator package

- (main.dart) mengganti home menjadi routes

- (profile_sheet.dart) menambahkan kode untuk share preference di profile sheet

4. Lokal database atau SQ lite
Menyimpan dan meminta data dalam jumlah besar pada local device, bersifat privat, menggunakan SQlite database melalui package sqflite, SQlite adalah database open source yang mendukung insert, read, update, dan remove data.

Implementasi SQLite
-menambahkan package sqflite dan path (pubspec.yaml), pastikan import package-nya di file dart yang kita kerjakan,

- (task_,model.dart) membuat model atau modifikasi model yang sudah ada dan membuat fungsi toMap dan formMap

- buat folder baru helper dan di dalamnya buat file dart baru database_helper.dart

- (database_helper.dart) buat kelas baru DatabaseHelper Dan tambahkan factory Constructor

- (database_helper.dart) membuat objek database

- (database_helper.dart) membuka koneksi ke database dan membuat tabelnya

- (database_helper.dart) membuat method untuk menambahkan data ke tabel

- (database_helper.dart) membuat method untuk membaca data

- (database_helper.dart) membuat method untuk mengambil data dengan id,

- (database_helper.dart) membuat metode untuk memperbarui data

- (database_helper.dart) membuat method untuk menghapus data

- membuat file dart baru db_manajer.dart

- (db_manajer.dart) membuat constructor untuk membuat instance kelas DatabaseHelper

- (db_manajer.dart) membuat method_getAllTasks

- (db_manajer.dart) membuat method addTask, getTaskById, updateTask, dan deleteTask

- (main dart) mengganti providernya menjadi DbManager

- (task_screen.dart) mengganti customer yang ada di buildTaskScreen jadi DbManager

- (task_screen.dart) mengganti kode yang ada di onPressed FloatingActionButton

- (task_item_screen.dart) menghapus properti onCreate dan membuat properti baru taskModel

- (task_item_screen.dart) hapus properti _taskName, buat properti baru _isUpdate, dan ganti kode pada blok method initState ()

- (task_item_screen.dart) ganti kode yang ada di blok kode onPressed buildButton ()

- (task_list_screen.dart) ganti TaskManager jadi DbManager

-(task_list_screen.dart) bungkus ListView.separated dengan Customer<DbManager>(). Dan pindahkan variabel taskItem didalam builder costumer

- (task_list_screen.dart) hapus key yang ada di Widget TaskItemCard. Dan ganti index untuk deleteTask nya menggunakan item.id!

- (task_list_screen.dart) bungkus Widget TaskItemCard dengan Widget InkWell dan gunakan onTap dengan fungsi async. Di dalam blok fungsinya tambahkan variabel selectedTask yang menampung item.id!, Dan tambahkan navigasi ke TaskItemCard
Full Source Code:
https://bit.ly/3J8dinV..