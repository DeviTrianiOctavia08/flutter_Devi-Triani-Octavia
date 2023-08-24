//Soal Eksplorasi

//Buatlah sebuah program untuk mencetak tabel perkalian.
//Sampel Input: 9

void main() {
  int inputNumber = 9;
  
  print("Tabel Perkalian $inputNumber:");
  
  for (int i = 1; i <= 10; i++) {
    print("$inputNumber x $i = ${inputNumber * i}");
  }
}

