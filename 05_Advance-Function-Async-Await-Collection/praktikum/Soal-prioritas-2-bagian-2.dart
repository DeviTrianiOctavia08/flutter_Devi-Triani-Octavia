//SOAL PRIORITAS 2

//Buatlah sebuah program untuk menghitung rata-rata dari sekumpulan nilai. Lakukan pembulatan keatas untuk nilai hasil perhitungan rata-rata.

//Sampel Input: [7,5,3,5,2,1]
//Sampel Output: 4

int hitungRataRata(List<int> nilai) {
  int jumlah = nilai.reduce((a, b) => a + b);
  double rataRata = jumlah / nilai.length;
  return rataRata.ceil();
}

void main() {
  List<int> nilaiInput = [7, 5, 3, 5, 2, 1];

  int rataRataPembulatan = hitungRataRata(nilaiInput);

  print("Nilai Input: $nilaiInput");
  print("Rata-rata dengan Pembulatan: $rataRataPembulatan");
}
