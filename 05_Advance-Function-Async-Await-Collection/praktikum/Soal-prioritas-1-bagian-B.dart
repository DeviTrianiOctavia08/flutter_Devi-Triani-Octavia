//SOAL PRIORITAS 1

//Buatlah sebuah fungsi dengan spesifikasi berikut:
//Lakukan perulangan pada list data secara asynchronous

Future<void> loopAsync(List<int> data) async {
  for (int number in data) {
    await Future.delayed(Duration(seconds: 1));
    print("Processed: $number");
  }
}

void main() {
  List<int> dataList = [2, 4, 6, 8, 10];

  loopAsync(dataList);
  print("Loop started...");
}
