// SOAL PRIORITAS 1
// Tugas Percabangan (Branching)

//Terdapat sebuah nilai:
//jika nilai > 0 akan mereturn “Nilai C”

String getGrade(int nilai) {
  if (nilai > 0) {
    return "Nilai C";
  } else {
    return ""; // Mengembalikan teks kosong jika tidak memenuhi kondisi
  }
}

void main() {
  int nilaiSiswa = 25;
  String grade = getGrade(nilaiSiswa);
  if (grade.isNotEmpty) {
    print("Nilai siswa: $grade");
  } else {
    print("Nilai tidak memenuhi kriteria.");
  }
}
