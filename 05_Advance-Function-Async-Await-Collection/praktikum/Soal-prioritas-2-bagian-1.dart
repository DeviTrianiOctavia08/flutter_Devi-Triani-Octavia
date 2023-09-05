//Soal Prioritas 2 

//Buatlah sebuah list dengan spesifikasi berikut:

//Tiap elemen wajib berupa list juga
//Tiap element wajib terdapat 2 data(sub-elemen)
//Buatlah sebuah map dengan menggunakan list tersebut

void main() {
  List<List<int>> dataList = [
    [1, 10],
    [2, 20],
    [3, 30],
    [4, 40]
  ];

  Map<int, int> dataMap = {};

  for (List<int> subList in dataList) {
    if (subList.length == 2) {
      dataMap[subList[0]] = subList[1];
    }
  }

  print("Data List: $dataList");
  print("Data Map: $dataMap");
}
