// SOAL PRIORITAS 1
// Tugas Percabangan (Branching)

//Terdapat sebuah nilai:
//selain itu return teks kosong

String getGrade(int nilai) {
  if (nilai > 70) {
    return "Nilai A";
  } else if (nilai > 40) {
    return "Nilai B";
  } else if (nilai > 0) {
    return "Nilai C";
  } else {
    return ""; // Mengembalikan teks kosong jika tidak memenuhi kondisi apa pun
  }
}

void main() {
  int nilaiSiswa = 15;
  String grade = getGrade(nilaiSiswa);
  if (grade.isNotEmpty) {
    print("Nilai siswa: $grade");
  } else {
    print("Nilai tidak memenuhi kriteria.");
  }
}
