// SOAL PRIORITAS 1

//Nomor 1 & 2
import 'dart:math';

// Menghitung luas persegi
double hitungLuasPersegi(double sisi) {
  return sisi * sisi;
}

// Menghitung keliling persegi
double hitungKelilingPersegi(double sisi) {
  return 4 * sisi;
}

// Menghitung luas persegi panjang
double hitungLuasPersegiPanjang(double panjang, double lebar) {
  return panjang * lebar;
}

// Menghitung keliling persegi panjang
double hitungKelilingPersegiPanjang(double panjang, double lebar) {
  return 2 * (panjang + lebar);
}

// Menghitung luas lingkaran
double hitungLuasLingkaran(double jariJari) {
  return pi * jariJari * jariJari;
}

// Menghitung keliling lingkaran
double hitungKelilingLingkaran(double jariJari) {
  return 2 * pi * jariJari;
}

void main() {
  double sisiPersegi = 5.0;
  double panjangPersegiPanjang = 6.0;
  double lebarPersegiPanjang = 3.0;
  double jariJariLingkaran = 5.0;

  double luasPersegi = hitungLuasPersegi(sisiPersegi);
  double kelilingPersegi = hitungKelilingPersegi(sisiPersegi);

  double luasPersegiPanjang = hitungLuasPersegiPanjang(panjangPersegiPanjang, lebarPersegiPanjang);
  double kelilingPersegiPanjang = hitungKelilingPersegiPanjang(panjangPersegiPanjang, lebarPersegiPanjang);

  double luasLingkaran = hitungLuasLingkaran(jariJariLingkaran);
  double kelilingLingkaran = hitungKelilingLingkaran(jariJariLingkaran);

  print("Luas persegi dengan sisi $sisiPersegi adalah $luasPersegi");
  print("Keliling persegi dengan sisi $sisiPersegi adalah $kelilingPersegi");

  print("Luas persegi panjang dengan panjang $panjangPersegiPanjang dan lebar $lebarPersegiPanjang adalah $luasPersegiPanjang");
  print("Keliling persegi panjang dengan panjang $panjangPersegiPanjang dan lebar $lebarPersegiPanjang adalah $kelilingPersegiPanjang");

  print("Luas lingkaran dengan jari-jari $jariJariLingkaran adalah $luasLingkaran");
  print("Keliling lingkaran dengan jari-jari $jariJariLingkaran adalah $kelilingLingkaran");
}

