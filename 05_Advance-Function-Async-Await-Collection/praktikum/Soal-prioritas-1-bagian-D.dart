//SOAL PRIORITAS 1

//Buatlah sebuah fungsi dengan spesifikasi berikut:
//Return list baru yang berisi hasil proses diatas

Future<List<int>> multiplyListAsync(List<int> data, int multiplier) async {
  List<int> result = [];
  
  for (int number in data) {
    await Future.delayed(Duration(milliseconds: 100)); // Simulasi operasi asynchronous
    result.add(number * multiplier);
  }
  
  return result;
}

void main() async {
  List<int> dataList = [2, 4, 6, 8, 10];
  int multiplier = 3;

  List<int> multipliedData = await multiplyListAsync(dataList, multiplier);
  
  List<int> expectedResult = [6, 12, 18, 24, 30];

  print("Data awal: $dataList");
  print("Data yang diharapkan: $expectedResult");
  print("Data setelah dikalikan dengan $multiplier secara asynchronous: $multipliedData");
}
