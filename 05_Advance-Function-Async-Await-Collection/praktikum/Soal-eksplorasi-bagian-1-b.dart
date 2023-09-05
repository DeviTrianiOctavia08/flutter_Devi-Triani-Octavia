//Soal Eksplorasi

//Buatlah sebuah program untuk menghilangkan nilai atau data yang sama pada sebuah data sehingga output akhirnya adalah sekumpulan nilai atau data yang unik.

//Sampel Input: [JS Racing, amuse, spoon, spoon, JS Racing, amuse]
//Sampel Output: [JS Racing, amuse, spoon]

void main() {
  List<String> inputData = ["JS Racing", "amuse", "spoon", "spoon", "JS Racing", "amuse"];

  List<String> uniqueData = [];

  for (String value in inputData) {
    if (!uniqueData.contains(value)) {
      uniqueData.add(value);
    }
  }

  print("Input Data: $inputData");
  print("Data Unik: $uniqueData");
}
