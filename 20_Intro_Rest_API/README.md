Introduction REST API - JSON serialization/deserialization

1. REST - API (Representational State Transfer - Application Programming Interface)
Arsitektural yang memisahkan tampilan dengan proses bisnis, bagian tampilan dengan proses bisnis berkirim data melalui HTTP request.

2. HTTP
Protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web.

Pola komunikasi
Clien mengirim request, server mengolah dan membalas dengan memberi response.

- Struktur Request
* URL
Alamat halaman yang akan
* Method(GET,POST, PUT, DELETE) 
Menunjukkan aksi yang diinginkan
* Header
Informasi tambahan terkait request yang dikirimkan
* Body
Data yang disertakan bersama request

- Struktur Response
* Status Code
Kode yang mewakili keseluruhan response, baik sukses maupun gagal
* Header
Informasi tambahan terkait response yang diberikan
* Body
Data yang disertakan bersama response

3. Dio
Dia sebagai http client, dimanfaatkan untuk melakukan rest api.

Instalasi
Tambahkan dependencies pada pubspec.yaml, jalankan perintah flutter pub get pada terminal

Penggunaan
Mengambil data menggunakan Dio dan menampilkan hasilnya pada console

4. Serialisasi JSON
JSON merupakan javascript object notation yang umumnya digunakan pada Rest API, cara penulisan data pada json biasanya dalam bentuk q dan kalu.

Serialisasi JSON
Yaitu mengubah struktur data ke bentuk json, terdapat map atau list yang merupakan objek lalu dengan serialisasi objek yang kompleks akan diubah menjadi bentuk json.

Menggunakan serialisasi dengan menggunakan fungsi jsonEncode dari package dart:convert

- Deserialisasi json
Mengubah bentuk json ke struktur data

Menggunakan fungsi jsonDecode dari package dart:convert