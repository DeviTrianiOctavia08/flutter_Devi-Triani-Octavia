Branch, Loop, Function Dart

1. Pengambilan keputusan
Menentukan alur program pada kondisi tertentu

2. IF
Memerlukan nilai bool dari operator logical atau comparison, menjalankan bagian proses jika nilai bool bernilai true
Contoh : if (nilai_bool) {
// Proses jika nilai_bool adalah true
}

3. IF-ELSE
Berjalan dengan if, menambah alternatif jika nilai bool adalah false.
Contoh : if (nilai_bool){
//Proses jika nilai_bool adalah true) {
} else {
// Proses jika nilai_bool adalah false 
}

4. Sisipan Else-if
Berjalan dengan if, menambah alternatif nilai bool adalah false, menambah pengujian nilai bool lain
Contoh : if (nilai_bool){
//Proses jika nilai_bool adalah true) {
} else if (nilai_bool) { 
// Proses jika nilai_bool adalah false 
//Dan nilai_bool adalah true
}

5. Perulangan
Menjalankan proses berulang kali

6. For
Diketahui berapa kali perulangan terjadi, memerlukan nilai awal, memerlukan nilai bool, jika true maka perulangan dilanjutkan, memerlukan pengubah nilai.
Contoh : for (nilai_awal; nilai_bool; pengubah_nilai_awal){
//Proses berulang jika nilai_bool adalah true
}

7. While
Tidak diketahui berapa kali perulangan terjadi, memerlukan nilai bool, jika true maka perulangan dilanjutkan.
Contoh : while (nilai_bool){
//Proses berulang jika nilai_bool adalah true
}

8. Do-while
Mengubah bentuk while, proses dijalankan minimum sekali, akan diteruskan jika nilai bool adalah true
Contoh : do {
//Proses berulang jika nilai_bool adalah true
} While (nilai_bool);

9. Break dan continue
Cara lain menghentikan perulangan
Deskripsi :
Perulangan menggunakan nilai bool untuk lanjut atau berhenti, break dan continue dapat menghentikan perulangan dengan mengabaikan nilai bool, continue dapat menghentikan satu kali proses.

10. Perbedaan break dan continue
Break menghentikan seluruh proses perulangan sedangkan continue menghentikan satu kali proses perulangan.

11. Fungsi 
Kumpulan kode yang dapat digunakan ulang
Deskripsi: 
Kumpulan perintah, dapat digunakan berkali-kali, cukup mengubah fungsi sekali, penggunaan lainnya akan ikut berubah.

12. Membuat fungsi
tipe_data nama_fungsi () {
//Perintah yang dijalankan saat fungsi dipanggil
}

13. Memanggil fungsi
nama_fungsi () ;
14. Fungsi dengan parameter
Mengirim data saat menjalankan fungsi
tipe_data nama_fungsi (tipe_data nama_parameter) {
// Perintah yang dijalankan saat fungsi dipanggil 
}

15. Fungsi dengan return
Memberi nilai pada fungsi saat dipanggil
tipe_data nama_fungsi (tipe_data nama_parameter) {
// Perintah yang dijalankan saat fungsi dipanggil 
Return nilai;
}