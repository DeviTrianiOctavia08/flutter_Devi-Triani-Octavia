OpenAI in Flutter

1. OpenAI Introduction
Open ai sebuah library yang dapat digunakan untuk memanfaatkan teknologi ai atau artificial intelligence yang disediakan oleh open ai, library ini nantinya dapat diintegrasikan dengan berbagai aplikasi seperti api, web dan mobile.

Keuntungan dari open ai yaitu gratis, mudah dipasang, dapat digunakan di berbagai perangkat, jumlah parameternya 175 miliar atau model davinci 03.

2. Project overview
Mengembangkan sebuah aplikasi mobile untuk mendapatkan rekomendasi mobil berdasarkan asal merek dan dana yang dimiliki.

3. Project example
Mendapatkan api key dari open ai.
Kunjungi halaman berikut lalu membuat api key baru, mengisi nama api key, tekan tombol create secret key untuk membuat api key, setelah api key dibuat. Pastikan api key disimpan di dalam sebuah file karena api key hanya bisa dicopy satu kali.

Membuat project flutter
Tekan ctrl + shift + p kemudian pilih flutter new project, pilih application, setelah folder untuk membuat project ditentukan kemudian isi nama project lalu tekan enter, lalu melakukan instalasi berbagai package yaitu flutter pub add http, flutter pub add intl, flutter pub add envied, flutter pub add --dev envied_generator, flutter pub add --dev build_runner, lalu membuat file konfigurasi, jika menggunakan git pastikan file .env dan env.g.dart sudah ditambahkan di dalam file .gtignore, membaca file konfigurasi, melakukan generate kode untuk membaca .env, membuat variabel untuk menyimpan api key, membuat data model, membuat komponen servis, membuat halaman beranda, membuat halaman daftar rekomendasi, membuat konfigurasi di main.dart