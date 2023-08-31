//SOAL PRIORITAS 1 bagian 1

class BangunRuang {
  double panjang;
  double lebar;
  double tinggi;

  BangunRuang(this.panjang, this.lebar, this.tinggi);

  double volume() {
    return 0; // Implementasi palsu, akan di-override oleh subclass
  }
}

class Kubus extends BangunRuang {
  double sisi;

  Kubus(this.sisi) : super(sisi, sisi, sisi);

  @override
  double volume() {
    return sisi * sisi * sisi;
  }
}

class Balok extends BangunRuang {
  Balok(double panjang, double lebar, double tinggi)
      : super(panjang, lebar, tinggi);

  @override
  double volume() {
    return panjang * lebar * tinggi;
  }
}

void main() {
  Kubus kubus = Kubus(5);
  print("Volume Kubus: ${kubus.volume()}");

  Balok balok = Balok(3, 4, 6);
  print("Volume Balok: ${balok.volume()}");
}
