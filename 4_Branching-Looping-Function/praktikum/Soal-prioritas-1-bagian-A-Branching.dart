// SOAL PRIORITAS 1
// Tugas Percabangan (Branching)

//Terdapat sebuah nilai:
//jika nilai > 70 akan mereturn “Nilai A”

String getGrade(int nilai) {
  if (nilai > 70) {
    return "Nilai A";
  } else {
    return ""; // Mengembalikan teks kosong jika tidak memenuhi kondisi
  }
}

void main() {
  int nilaiSiswa = 80;
  String grade = getGrade(nilaiSiswa);
  if (grade.isNotEmpty) {
    print("Nilai siswa: $grade");
  } else {
    print("Nilai tidak memenuhi kriteria.");
  }
}

