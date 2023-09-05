// SOAL PRIORITAS 1
// Tugas Percabangan (Branching)

//Terdapat sebuah nilai:
//jika nilai > 40 akan mereturn “Nilai B”

String getGrade(int nilai) {
  if (nilai > 40) {
    return "Nilai B";
  } else {
    return ""; // Mengembalikan teks kosong jika tidak memenuhi kondisi
  }
}

void main() {
  int nilaiSiswa = 45;
  String grade = getGrade(nilaiSiswa);
  if (grade.isNotEmpty) {
    print("Nilai siswa: $grade");
  } else {
    print("Nilai tidak memenuhi kriteria.");
  }
}
