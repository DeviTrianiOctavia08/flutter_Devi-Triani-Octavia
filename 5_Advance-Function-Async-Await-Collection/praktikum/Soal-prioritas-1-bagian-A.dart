//SOAL PRIORITAS 1

//Buatlah sebuah fungsi dengan spesifikasi berikut:
//Menerima 2 parameter, yaitu list data dan pengali

List<int> multiplyList(List<int> data, int multiplier) {
  List<int> result = [];
  
  for (int number in data) {
    result.add(number * multiplier);
  }
  
  return result;
}

void main() {
  List<int> dataList = [2, 4, 6, 8, 10];
  int multiplier = 3;

  List<int> multipliedData = multiplyList(dataList, multiplier);
  
  print("Data awal: $dataList");
  print("Data setelah dikalikan dengan $multiplier: $multipliedData");
}

