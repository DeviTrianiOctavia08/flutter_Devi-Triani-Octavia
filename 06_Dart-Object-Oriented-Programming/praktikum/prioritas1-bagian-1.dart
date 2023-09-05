//SOAL PRIORITAS 1 bagian 1

class Hewan {
  late double _berat;

  Hewan(double berat) {
    if (berat <= 0) {
      throw ArgumentError('Berat harus lebih dari 0');
    }
    _berat = berat;
  }

  double get berat => _berat;

  set berat(double value) {
    if (value <= 0) {
      throw ArgumentError('Berat harus lebih dari 0');
    }
    _berat = value;
  }
}

void main() {
  try {
    var kucing = Hewan(3.5); // Membuat objek kucing dengan berat 3.5
    print('Berat kucing: ${kucing.berat} kg');

    kucing.berat = 4.2; // Mengubah berat kucing menjadi 4.2
    print('Berat kucing setelah diubah: ${kucing.berat} kg');

    // Contoh jika mencoba mengatur berat menjadi nilai yang tidak valid
    // kucing.berat = -1.0; // Akan menghasilkan exception
  } catch (e) {
    print('Terjadi kesalahan: $e');
  }
}
