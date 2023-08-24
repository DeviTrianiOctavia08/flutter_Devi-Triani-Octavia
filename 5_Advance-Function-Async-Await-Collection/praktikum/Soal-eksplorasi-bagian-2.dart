//Soal Eksplorasi

//Buatlah sebuah program untuk menghitung frekuensi pada setiap data di dalam sebuah list. Frekuensi merupakan jumlah kemunculan data di dalam list.

//Sampel Input: [js,js,js,golang,python,js,js,golang,rust]
//Sampel Output: js: 5, golang: 2, python: 1, rust: 1

void main() {
  List<String> inputData = ["js", "js", "js", "golang", "python", "js", "js", "golang", "rust"];

  Map<String, int> frekuensiMap = {};

  for (String nilai in inputData) {
    if (frekuensiMap.containsKey(nilai)) {
      frekuensiMap[nilai] = frekuensiMap[nilai]! + 1;
    } else {
      frekuensiMap[nilai] = 1;
    }
  }

  print("Input Data: $inputData");
  print("Output:");

  frekuensiMap.forEach((kunci, frekuensi) {
    print("$kunci: $frekuensi");
  });
}
