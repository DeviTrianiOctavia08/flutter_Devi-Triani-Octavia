Flutter command line interface & flutter package management

1. Flutter CLI
Alat yang digunakan untuk berinteraksi dengan flutter SDK, perintah dijalankan dalam terminal.

Important CLI commands
- flutter doctor
Perintah untuk menampilkan informasi software yang dibutuhkan flutter.
- flutter create <APP_NAME>
Perintah untuk membuat project aplikasi flutter baru di direktori tertentu.
- flutter run <DART_FILE>
Perintah untuk menjalankan project aplikasi di device yang tersedia.
- flutter emulators
flutter emulators --launch <EMULATOR_ID>
flutter emulators --create [--name xyz]
Perintah untuk menampilkan daftar emulator yang terinstal dan menampilkan option untuk membuka emulator atau membuat emulator baru.
- flutter channel
Perintah untuk menampilkan daftar flater channel yang tersedia dan menunjukkan channel yang digunakan saat ini.
- flutter pub
Ada dua syntax yang bisa digunakan
*Flutter pub add, untuk menambahkan packages ke dependencies jadi pubspec.yaml
flutter pub add <package_name>
*Flutter pub get, untuk mendownload semua packages atau dependencies yang ada di pubspec.yaml
Flutter pub get
- flutter build <DIRECTORY>
Perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke appstore, play store, dan lain-lain.
- flutter clean
Perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator, perintah ini akan memperkecil ukuran project tersebut.

2. Packages Management
Flutter mendukung sharing packages, packages dibuat developers lain, cepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau form scratch, mendapatkan packages di website pub.dev.

Cara menambahkan packages
Cari packages di pub.dev, copy baris dependencies yang ada di bagian installing, buka pubspec.yaml, paste barisnya di bawah dependencies pubspec.yaml, run flutter pub get di terminal, import package di file dart agar bisa digunakan, stop atau restart aplikasi jika dibutuhkan.

Cara menambahkan packages
Cari package di pub.dev, 
Ex. Menambahkan package percent indicator, copy baris dependencies yang ada di bagian installing, buka pubspec.yaml dan paste barisnya di bawah dependencies, run flutter pub get di terminal atau ctrl+s, impor package di file dart agar bisa digunakan, hanya membutuhkan beberapa baris kode untuk menghasilkan UI yang kompleks.