//Soal Prioritas 2 bagian 1

//Buatlah sebuah class Calculator dengan kriteria sebagai berikut:
// Terdapat method untuk melakukan penjumlahan dua bilangan.
// Terdapat method untuk melakukan pengurangan dua bilangan.
// Terdapat method untuk melakukan perkalian dua bilangan.
// Terdapat method untuk melakukan pembagian dua bilangan.

class Calculator {
  double tambah(double a, double b) {
    return a + b;
  }

  double kurang(double a, double b) {
    return a - b;
  }

  double kali(double a, double b) {
    return a * b;
  }

  double bagi(double a, double b) {
    if (b != 0) {
      return a / b;
    } else {
      throw ArgumentError('Pembagian oleh nol tidak diizinkan');
    }
  }
}

void main() {
  var calculator = Calculator();

  double a = 10;
  double b = 5;

  print('$a + $b = ${calculator.tambah(a, b)}');
  print('$a - $b = ${calculator.kurang(a, b)}');
  print('$a * $b = ${calculator.kali(a, b)}');

  try {
    print('$a / $b = ${calculator.bagi(a, b)}');
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }

  // Mencoba pembagian dengan nol
  try {
    print('$a / 0 = ${calculator.bagi(a, 0)}');
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }
}
