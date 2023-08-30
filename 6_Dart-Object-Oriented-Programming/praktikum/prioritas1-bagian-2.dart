//Soal Prioritas 1 bagian 2

class Hewan {
  double berat;

  Hewan(this.berat);
}

class Mobil {
  double kapasitas;
  double beratMaksimumMuatan;
  List<Hewan> muatan = [];

  Mobil(this.kapasitas, this.beratMaksimumMuatan);

  bool tambahMuatan(Hewan hewan) {
    double totalBeratMuatan = muatan.fold(0, (previous, h) => previous + h.berat);
    if (totalBeratMuatan + hewan.berat <= beratMaksimumMuatan) {
      muatan.add(hewan);
      return true;
    }
    return false;
  }

  double totalMuatan() {
    return muatan.fold(0, (previous, h) => previous + h.berat);
  }
}

void main() {
  var mobil = Mobil(1000, 500); // Membuat objek mobil dengan kapasitas 1000 dan berat maksimum muatan 500

  var hewan1 = Hewan(200); // Membuat objek hewan dengan berat 200
  var hewan2 = Hewan(300); // Membuat objek hewan dengan berat 300

  if (mobil.tambahMuatan(hewan1)) {
    print('Hewan 1 ditambahkan ke muatan');
  } else {
    print('Kapasitas muatan tidak mencukupi');
  }

  if (mobil.tambahMuatan(hewan2)) {
    print('Hewan 2 ditambahkan ke muatan');
  } else {
    print('Kapasitas muatan tidak mencukupi');
  }

  print('Total muatan mobil: ${mobil.totalMuatan()}');
}
