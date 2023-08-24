//SOAL PRIORITAS 1
//Tugas Perulangan (Looping)

//Buatlah sebuah piramid bintang 

import 'dart:io';

void main() {
  int rows = 8; // Jumlah baris pada piramida

  for (int i = 1; i <= rows; i++) {
    // Menampilkan spasi setelah bintang
    for (int j = 1; j <= rows - i; j++) {
      stdout.write(" ");
    }
    for (int k = 1; k <= 2 * i - 1; k++) {
      stdout.write("*");
    }
    print(''); // Pindah baris setelah setiap baris bintang
  }
}


