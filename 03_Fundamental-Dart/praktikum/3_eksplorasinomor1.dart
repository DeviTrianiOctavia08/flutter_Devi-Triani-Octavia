// SOAL EKSPLORASI 

//Nomor 1
bool isPalindrome(String kata) {
  // Menghilangkan spasi dan mengubah huruf menjadi lowercase
  kata = kata.replaceAll(' ', '').toLowerCase();
  
  // Menghitung panjang kata
  int panjangKata = kata.length;
  
  // Mengecek apakah kata merupakan palindrom
  for (int i = 0; i < panjangKata / 2; i++) {
    if (kata[i] != kata[panjangKata - i - 1]) {
      return false;
    }
  }
  return true;
}

void main() {
  String input1 = "kasur rusak";
  String input2 = "mobil balap";
  
  if (isPalindrome(input1)) {
    print("$input1 adalah palindrom");
  } else {
    print("$input1 bukan palindrom");
  }
  
  if (isPalindrome(input2)) {
    print("$input2 adalah palindrom");
  } else {
    print("$input2 bukan palindrom");
  }
}
