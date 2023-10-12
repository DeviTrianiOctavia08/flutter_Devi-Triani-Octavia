UI Testing

1. Pengertian UI Testing
Pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna.

UI Testing di flutter
Disebut juga widget testing sehingga pengujian dilakukan pada widget dengan menuliskan script yang dapat dijalankan secara otomatis.

Keuntungan UI testing
Memastikan seluruh widget memberi tampilan yang sesuai, memastikan seluruh interaksi dapat diterima dengan baik, menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada Widget.

2. Melakukan UI testing
Instalasi package testing
Pada umumnya pakai testing sudah terinstall sejak project pertama kali dibuat, tetapi cara ini dapat dilakukan jika ingin menginstal secara manual.
Pubspec.yaml
dev_dependencies:
flutter_test:
sdk: flutter
Lalu flutter pub get diterminal.

Penulisan script testing
Dilakukan pada folder test, nama file harus diikuti _test.dart, contoh contact_test.dart, tiap file berisi fungsi main () yang di dalamnya dapat dituliskan script testing, tiap skenario pengujian disebut test case.

Script testing
Tes case diawali dengan testWidgets dan diberi judul, simulasi proses mengaktifkan halaman AboutScreen, memeriksa apakah di halaman tersebut terdapat teks "About Screen".

Menjalankan testing
Perintah flutter test akan menjalankan seluruh file test yang dibuat, hasil dari perintah ini adalah lamanya waktu pengujian, total pengujian yang dilakukan, dan pesan bahwa pengujian berhasil.

Menjalankan testing gagal
Akan ditampilkan penyebab gagalnya pengujian

Output Build Flutter

Output build
File atau berkas hasil keluaran dari project flutter, digunakan untuk merilis aplikasi ke app store, terdiri dari format apk atau AAB untuk Android dan IPA untuk iOS,
Flutter build apk = output format APK (.apk), Flutter build appbundle =output format AAB(.aab)  , Flutter build ios = output format IPA(.ipa)

Mode build
Mode debug, mode profile, mode release
- flutter build apk --debug , untuk pengujian selama proses development, 
-flutter build apk --profile, untuk pengujian performa aplikasi
- flutter build apk --release, untuk merilis aplikasi ke Google play store dan stores Android lainnya

2. Build APK
Hanya dapat berjalan di Android, memiliki format .apk, dapat diinstal langsung pada perangkat Android

Proses sebelum build APK
Mengatur nama aplikasi di AndroidManifest.xml, mengatur icon aplikasi, mengatur perizinan aplikasi di AndroidManifest.xml

Persiapan
Buat project baru beri nama counter_app, di terminal flutter create counter_app.

AndroidManifest.xml
File yang berisi informasi penting tentang aplikasi Android, seperti nama, komponen, permission, dan fitur hardware aplikasi, terletak di tiga folder untuk setiap mode build debug, release/main, dan profile.

android/src/debug,main,profile/AndroidManifest.xml

3. Mengatur nama aplikasi
- ubah properti Android: label pada AndroidManifest.xml yang ada di folder android/app/src/main/Android Manifest.xml, nama default sama seperti nama saat membuat project flutter flutter.
-stop dan jalankan ulang  aplikasi, jalankan aplikasi di emulator dan lihat nama aplikasinya yaitu counter_app sama seperti ketika membuat project flutter baru,

4. Mengatur ikon aplikasi
- men-generat ikon menggunakan website
- download zip file hasil generate
-unzip hasil download
-kopi seluruh folder meet map ke project flutter
-stop dan jalankan ulang aplikasi, ikon flutter merupakan ikon default setiap pembuat project flutter baru.

Mengatur ikon aplikasi
Mengganti ic_launcher.png yang ada di dalam folder android/app/src/main/res, ikon aplikasi dengan beberapa ukuran resolusi
-men generate ikon aplikasi menggunakan Android aset studio, foreground image mengunggah gambar dari komputer, clipart menggunakan clipart yang tersedia sebagai ikon aplikasi
- download zip file dari Android aset studio
-buka folder ic_launcher, buka folder res, kopi seluruh folder meet map ke dalam folderes yang ada di project flutter menggantikan folder mind map bawaan.
-stop dan jalankan ulang aplikasi

Mengatur perizinan aplikasi
Menambahkan tag uses-permission, contoh perizinan seperti: kamera bluetooth, internet, dll 

Melakukan build APK
Membuat file APK dengan mode debug dan profile, membuat file APK dengan mode release, jalankan ulang perintah flutter build APK --release

Output build APK
Outputfile .apk berada di folder
build/apk/outputs/apk/debug/app-debug.apk
build/apk/outputs/apk/debug/app-profile.apk
build/apk/outputs/apk/debug/app-release.apk

Install aplikasi pada real device

Pindahkan file APK hasil build ke smartphone Android dan lakukan proses instalasi, ubah pengaturan di HP Android untuk pemasangan aplikasi tidak dikenal, jika ada notifikasi play protect diabaikan saja dan tetap install aplikasi.

5. Build IPA
Hasil output hanya dapat berjalan di ios, memiliki format .ipa, perlu mendaftar akun Apple developer program, perintah build tak hanya dapat dijalankan pada perangkat Apple

Info.plist
Tempat konfigurasi data informasi mengenai aplikasi IOS, berada di folder iOS/Runner/info.plist, untuk mengatur nama aplikasi ubah nama di dalam teks string di bawah key bundel name yang ada di info.plist.

Mengatur icon aplikasi
Menggunakan website app ikon generator, unggah file gambar dengan ukuran 1024 x 1024, pilih jenis platform iPhone, lalu klik generate untuk mengunduh zip file icon hasil generatenya

Unzip hasil download AppIcons.zip, ganti folder AppIcon.appiconset pada folder ios/Runner/Assets.xcassets/AppIcon.appiconset

6. Bonus
Package rename
Mengubah nama aplikasi menggunakan package rename

Persiapan
Buat project baru beri nama bonus di terminal flutter create bonus.
-install package rename
-jalankan perintah pada terminal
-stop dan jalankan ulang aplikasi, jalankan aplikasi di emulator dan lihat nama aplikasinya yaitu bonus

-install package rename dengan menjalankan perintah di terminal flutter pub global activate rename
-jalankan perintah pada terminal di flutter pub global run rename --appname "Nama Aplikasi"
Hasil
Nama aplikasi otomatis diubah untuk semua platform
-stop dan jalankan ulang aplikasi

Package flutter launcher icons
Mengubah ikon aplikasi menggunakan flutter_launcher_icons
-buat folder assets di root project flutter
-pindahkan file icon beresolusi 1024 x 1024
-tambahkan package
-tambahkan flutter_icons di pubspec.yaml
-jalankan perintah di terminal
-stop dan jalankan ulang aplikasi