void main() {

  String test1 = "test2";
  if (test1 == "test1") {
    print("Test1");
  } else if (test1 == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test1 == "test2") {
    print("Test2 again");
  }


  bool test2 = true;
  if (test2) {
    print("Kebenaran");
  }

  int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }


  do {
    print(counter);
    counter++;
  } while (counter < 77);

   for (int index = 10; index < 27; index++) {
    
    if (index == 21) {
      break;
    }
    else if (index > 1 && index < 7) {
      continue;
    }

    print(index);
  }

  // void main() {
  String namaLengkap = "Brilliantna Salsabila";
  String nim = "NIM123456"; // Ganti dengan NIM yang sesuai

  // Fungsi untuk mengecek apakah sebuah bilangan adalah prima
  bool isPrime(int number) {
    if (number < 2) return false;
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }

  // Loop dari 0 sampai 201
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print('$i adalah bilangan prima.');
      print('Nama: $namaLengkap');
      print('NIM: $nim');
    }
  }
}


