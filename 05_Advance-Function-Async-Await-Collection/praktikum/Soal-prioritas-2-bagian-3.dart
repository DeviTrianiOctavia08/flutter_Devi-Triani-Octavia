//SOAL PRIORITAS 2

//Buatlah sebuah program untuk melakukan perhitungan bilangan faktorial secara asinkron.

//Sampel Input: 5
//Sampel Output: 120

import 'dart:async';

Future<int> hitungFaktorial(int n) async {
  if (n == 0 || n == 1) {
    return 1;
  }
  
  int faktorial = 1;
  for (int i = 2; i <= n; i++) {
    await Future.delayed(Duration(milliseconds: 100)); // Simulasi operasi asinkron
    faktorial *= i;
  }
  return faktorial;
}

Future<void> main() async {
  int input = 5;

  int hasilFaktorial = await hitungFaktorial(input);

  print("Input: $input");
  print("Hasil Faktorial: $hasilFaktorial");
}
