//SOAL PRIORITAS 2
// Tugas Function

//Buatlah sebuah function dengan parameter untuk menghitung luas lingkaran. Kemudian function lingkaran tersebut dijalankan pada function main!

double hitungLuasLingkaran(double jariJari) {
  return 3.14 * jariJari * jariJari;
}

void main() {
  double jariJari = 5.0; // Nilai jari-jari lingkaran
  double luas = hitungLuasLingkaran(jariJari);
  
  print("Luas lingkaran dengan jari-jari $jariJari adalah $luas");
}
