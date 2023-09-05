//Soal Eksplorasi

//Buatlah sebuah program untuk mengecek apakah sebuah bilangan termasuk bilangan prima atau bukan.

//Sampel Input: 23
//Sampel Output: bilangan prima

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  
  return true;
}

void main() {
  int inputNumber = 23;

  if (isPrime(inputNumber)) {
    print("$inputNumber adalah bilangan prima");
  } else {
    print("$inputNumber bukan bilangan prima");
  }
}
