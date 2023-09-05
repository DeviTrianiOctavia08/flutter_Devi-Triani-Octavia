//Soal Eksplorasi

//Buatlah sebuah program untuk menghilangkan nilai atau data yang sama pada sebuah data sehingga output akhirnya adalah sekumpulan nilai atau data yang unik.

//Sampel Input: [amuse, tommy kaira, spoon, HKS, litchfield, amuse,HKS]
//Sampel Output: [amuse, tommy kaira, spoon, HKS, litchfield]

void main() {
  List<String> inputData = ["amuse", "tommy kaira", "spoon", "HKS", "litchfield", "amuse", "HKS"];

  List<String> uniqueData = List.from(Set.from(inputData));

  print("Input Data: $inputData");
  print("Data Unik: $uniqueData");
}
