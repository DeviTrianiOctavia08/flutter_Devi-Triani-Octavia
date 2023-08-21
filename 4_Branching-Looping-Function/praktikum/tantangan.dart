void main() {
  int buku = 10000;
  int pensil = 5000;
  int tas = 100000;

  Map<String, int> pesanan = {
    "buku": 3,
    "pensil": 5,
    "tas": 2,
  };
  
  int totalBarang = hitungTotalBarang(pesanan, buku, pensil, tas);
  double totalDiskon = hitungDiskon(totalBarang);
  double totalHarga = totalBarang - totalDiskon;

  print("Total barang yang dibeli: $totalBarang");
  print("Total diskon: $totalDiskon");
  print("Total harga yang harus dibayar: $totalHarga");
}

int hitungTotalBarang(Map<String, int> pesanan, int hargaBuku, int hargaPensil, int hargaTas) {
  int total = 0;
  pesanan.forEach((barang, jumlah) {
    if (barang == "buku") {
      total += jumlah * hargaBuku;
    } else if (barang == "pensil") {
      total += jumlah * hargaPensil;
    } else if (barang == "tas") {
      total += jumlah * hargaTas;
    }
  });
  return total;
}

double hitungDiskon(int total) {
  double diskon = total * 0.1; // 10% diskon
  return diskon;
}
