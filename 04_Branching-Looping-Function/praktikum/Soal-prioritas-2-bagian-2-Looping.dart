//SOAL PRIORITAS 2
//Tugas Perulangan (Looping)

//Buatlah sebuah jam pasir 

import 'dart:io';

void main() {
  int tinggi = 5; // Jumlah baris
  
  // Bagian atas jam pasir
  for (int i = tinggi -1; i >= 1; i--) {
    for (int j = 1; j <= tinggi - i; j++) {
      stdout.write(" ");
    } 
    for (int k = 1; k <= 2 * i - 1; k++) {
      stdout.write("*");
    }
    print('');
  }
 
  // Bagian bawah jam pasir
  for (var i = 1; i <= tinggi; i++) {
    for (var j = 1; j <= tinggi - i; j++) {
      stdout.write(" ");
    }
    for (var k = 1; k <= 2 * i - 1; k++) {
      stdout.write("*");
    }
    print('');
  }
}
