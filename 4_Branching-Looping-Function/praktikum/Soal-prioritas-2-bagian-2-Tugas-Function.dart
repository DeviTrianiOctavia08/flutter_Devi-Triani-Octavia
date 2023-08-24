//SOAL PRIORITAS 2
// Tugas Function

//Buatlah sebuah function yang dapat menampilkan faktorial dari nilai-nilai di bawah ini:
//10
//40
//50

BigInt hitungFaktorial(int n) {
  if (n == 0 || n == 1) {
    return BigInt.from(1);
  } else {
    return BigInt.from(n) * hitungFaktorial(n - 1);
  }
}

void main() {
  List<int> nilai = [10, 40, 50];

  for (int n in nilai) {
    print("Faktorial dari $n adalah ${hitungFaktorial(n)}");
  }
}
