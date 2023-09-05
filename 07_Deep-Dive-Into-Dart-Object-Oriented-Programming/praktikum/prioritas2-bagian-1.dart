//SOAL PRIORITAS 2 bagian 1

class Matematika {
  int hasil() {
    return 0; // Implementasi umum, akan di-override oleh subclass
  }
}

class KelipatanPersekutuanTerkecil extends Matematika {
  int x;
  int y;

  KelipatanPersekutuanTerkecil(this.x, this.y);

  @override
  int hasil() {
    int max = (x > y) ? x : y;
    while (true) {
      if (max % x == 0 && max % y == 0) {
        return max;
      }
      max++;
    }
  }
}

class FaktorPersekutuanTerbesar extends Matematika {
  int x;
  int y;

  FaktorPersekutuanTerbesar(this.x, this.y);

  @override
  int hasil() {
    while (y != 0) {
      int temp = y;
      y = x % y;
      x = temp;
    }
    return x;
  }
}

void main() {
  KelipatanPersekutuanTerkecil kpt = KelipatanPersekutuanTerkecil(12, 18);
  print("Kelipatan Persekutuan Terkecil: ${kpt.hasil()}");

  FaktorPersekutuanTerbesar fpt = FaktorPersekutuanTerbesar(56, 48);
  print("Faktor Persekutuan Terbesar: ${fpt.hasil()}");
}
