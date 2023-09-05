//Soal Eksplorasi

// Sebuah toko buku ingin mengembangkan sebuah sistem untuk mengelola data buku. Data buku tersebut terdiri dari ID, judul, penerbit, harga dan kategori. Sistem tersebut dapat menambahkan, mendapatkan semua data buku dan menghapus data buku. Buatlah program berdasarkan skenario tersebut.

class Buku {
  int id;
  String judul;
  String penerbit;
  double harga;
  String kategori;

  Buku(this.id, this.judul, this.penerbit, this.harga, this.kategori);
}

class TokoBuku {
  List<Buku> daftarBuku = [];

  void tambahBuku(Buku buku) {
    daftarBuku.add(buku);
  }

  List<Buku> semuaBuku() {
    return daftarBuku;
  }

  void hapusBuku(int id) {
    daftarBuku.removeWhere((buku) => buku.id == id);
  }
}

void main() {
  var toko = TokoBuku();

  var buku1 = Buku(1, 'Pemrograman Dart', 'Penerbit A', 50.0, 'Teknologi');
  var buku2 = Buku(2, 'Algoritma dan Struktur Data', 'Penerbit B', 70.0, 'Teknologi');

  toko.tambahBuku(buku1);
  toko.tambahBuku(buku2);

  print('Daftar Semua Buku:');
  var semuaBuku = toko.semuaBuku();
  for (var buku in semuaBuku) {
    print('ID: ${buku.id}, Judul: ${buku.judul}, Penerbit: ${buku.penerbit}, Harga: ${buku.harga}, Kategori: ${buku.kategori}');
  }

  toko.hapusBuku(1);

  print('\nDaftar Buku Setelah Penghapusan:');
  for (var buku in toko.semuaBuku()) {
    print('ID: ${buku.id}, Judul: ${buku.judul}, Penerbit: ${buku.penerbit}, Harga: ${buku.harga}, Kategori: ${buku.kategori}');
  }
}
