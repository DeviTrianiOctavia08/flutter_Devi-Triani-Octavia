Flutter platform widget
Abstract
Memanfaatkan widget dengan gaya berbeda pada Android dan iOS.

1. MaterialApp 
Widget dasar yang mengemas seluruh widget dalam aplikasi, Widget yang digunakan pada sistem Android, Di-impor dari package: flutter/material.dart

Struktur
Widget yang pertama kali dibuka, diletakkan pada bagian home.
-theme : mengatur tema aplikasi
-home : halaman utama
mengatur halaman juga dapat dilakukan dengan menggunakan routes dan initialRoute.
-theme : mengatur tema aplikasi
-initialRoute : Route utama
- 'home' : mendaftarkan halaman pada routes


2. Scaffold
Widget dasar untuk membangun sebuah halaman pada MaterialApp.

 Struktur
Membentuk tata letak dasar sebuah halaman yang ditulis melalui properti-properti.
- appBar : bar menu bagian atas halaman
- drawer : menu bagian samping halaman
- body : bagian utama halaman
- bottomNavigattionBar : menu bagian bawah halaman

3. CupertinoApp
Widget dasar yang mengemas seluruh widget dalam aplikasi, Widget yang digunakan pada sistem iOS, di-diimpor dari package: flutter/cupertino.dart.

Struktur
Variabel_themeDark dibuat untuk menyimpan tema, diperlukan karena cupertino tidak menyediakan ThemeData.dark() seperti pada material.
- const CupertinoThemeData.raw : membuat dasar tema
- Brightness.dark : mengatur brightness menjadi dark.

Widget yang pertama kali dibuka diletakkan pada bagian home.
-theme : mengatur tema aplikasi
- home : mengatur halaman utama

4. CupertinoPageScaffold
Widget dasar untuk membangun sebuah halaman pada CupertinoApp

Struktur
Membentuk tata letak dasar sebuah halaman yang ditulis melalui properti-properti.
-navigationBar : bar menu bagian atas halaman
- child : bagian utama halaman..

Meningkatkan kemampuan komunikasi efektif

1. Tujuan pelatihan
Mampu berkomunikasi yang efektif di tempat kerja, mengetahui kelebihan dan kekurangan dalam berkomunikasi, mengetahui prosedur menjadi komunikator dan komunikan yang baik.

Komunikasi efektif di tempat kerja yaitu proses pertukaran informasi baik verbal maupun nonverbal dalam sebuah organisasi atau perusahaan dengan tujuan menyampaikan, menerima dan memahami sebuah pesan dengan baik.

Implikasi komunikasi efektif di tempat kerja adalah komunikasi efektif di tempat kerja memastikan bahwa tujuan organisasi dapat tercapai.

Komunikasi efektif itu penting karena dapat meningkatkan produktivitas karyawan, meningkatkan kepuasan karyawan, dan mengurangi tingkat pergantian karyawan.

2. 5W elemen komunikasi
The lasswell's 5w
- who : dari siapa
- (says) what : apa pesannya
- (in which) channel : di kanal mana
- (to) whom : kepada siapa
- (with what) effects : apa efeknya

Who should be told?
Everyone who need to be told something should be told, as soon as possible

When they should be told?
Key communications should be made as soon as possible following a significant event or decision.

What they should be told?
Clear messages, related to the subject or problem. In complex situations it is advisible to create a shared meaning and understanding.

Where they should be told?
Choose the most effective medium and make time to communicated propertly.

Who should control the communication process?
The most appropiate person depending on the subject.

3. 7C komunikasi efektif
- conciseness (keringkasan)
Menyampaikan semua fakta yang dibutuhkan oleh audiens.
Komunikasi yang lengkap yaitu tidak ada informasi penting yang tertinggal, tidak membuat penerima semakin bingung, membantu penerima pesan untuk mengambil keputusan.
- completeness (kelengkapan)
Menyampaikan sesuatu seringkas mungkin singkat jelas dan padat.
Komunikasi yang ringkas yaitu menghemat waktu dan biaya, menyoroti pesan utama, menghindari penggunaan kata yang berlebihan dan tidak diperlukan, tidak mengulang-ulang atau bertele-tele.
- consideration (pertimbangan)
Pahami posisi orang lain.
Komunikasi yang penuh pertimbangan yaitu utamakan pendekatan "kamu", mendengarkan dan mempertimbangkan hal yang diminati penerima, penekanan pada "apa yang mungkin".
- coreectness (ketepatan)
Bahasa yang tepat dan tidak salah.
Pesan yang tepat yaitu pesan yang disampaikan tepat dan di waktu yang tepat, menggunakan bahasa yang benar dan sesuai, memvalidasi ketepatan dan keakuratan fakta dan angka.
- clarity (kejelasan)
Fokus pada pesan atau tujuan yang spesifik dalam satu waktu.
Komunikasi yang jelas yaitu kejelasan terhadap ide dan gagasan, gunakan kata-kata yang tepat, sesuai dan konkret.
- concreteness (kongkret)
Tidak kabur dan terlalu umum.
Pesan yang konkret yaitu didukung oleh fakta dan angka tertentu, pesan konkret tidak di misinterpretasikan.
- courtesy (sopan santun)
Pesan tersebut harus menunjukkan ekspresi komunikator dan juga harus menghormati komunikan.
Pesan yang sopan yaitu mempertimbangkan sudut pandang kedua belah pihak dan juga apa yang dirasakan oleh komunikan, pesan yang sopan adalah pesan yang positif dan fokus pada audiens, menunjukkan penghormatan kepada lawan penerima pesan tidak bias.

4. Sync vs async communication
- Synchronous
Komunikasi real Time
In person meetings, video conferencing meetings through tools like zoom and Google meet, phone calls.

Pro 
Menyelesaikan masalah lebih cepat, memudahkan interpersonal communication, menjalin hubungan baik antar orang, team work lebih terjalin, memungkinkan untuk mendapatkan lebih banyak ide atau masukan dari orang lain.

Cons
Lebih banyak tenaga dan pikiran, memungkinkan untuk membuat keputusan yang tidak berkualitas, output dari meeting bisa tidak jelas, terkadang tidak memiliki agenda.

- Asynchronous
Komunikasi tidak real Time
Texting, instant messaging, email, marked up, screenshots, recorded video, slack or other collaboration tools.

Pro
Memudahkan komunikasi distributed teams dengan zona waktu yang berbeda, komunikasi yang terdokumentasi dengan baik, meningkatkan proses komunikasi setiap saat, sehingga memperjelas pesan yang ingin disampaikan, biasanya menghasilkan solusi yang lebih berkualitas, memberdayakan tim untuk bekerja sesuai waktu produktif mereka. 

Cons
Tidak segera, memakan waktu yang lebih lama, kurang hubungan interpersonal, terkadang kurang bisa memahami konteks dari komunikasi.

Tips komunikasi asinkronus yang efektif
Membuat rencana komunikasi, tingkatkan visibilitas, jadikan sebagai budaya, komunikasikan jam kerja.

Qoutes : "orang bijak bicara karena dia harus bicara; orang bodoh bicara karena dia merasa ingin mengucapkan sesuatu". 
-plato...
