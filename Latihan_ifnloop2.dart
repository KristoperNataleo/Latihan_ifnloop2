import 'dart:io';
import 'dart:math';
void main() {
  
  // 1. Program untuk menentukan nilai huruf dari angka 0–100:
  stdout.write('Masukan Angka Anda:');
  int A1 = int.parse(stdin.readLineSync()!);

if (A1 >= 85) {
  print("A");
} else if (A1 >= 70) {
  print("B");
} else if (A1 >= 55) {
  print("C");
} else if (A1 < 55) {
  print("D");
}

print("==============================================================================================");
  // 2. Program yang menampilkan bilangan 1–20

  for (var i = 1; i <= 20; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("FizzBuzz");
    } else if (i % 3 == 0) {
      print("Fizz");
    } else if (i % 5 == 0) {
      print("Buzz");
    } else {
      print(i);
    }
  }

print("==============================================================================================");
  // 3. Aplikasi Penghitung

  List X = [];
  for (var j = 1; j <= 5; j++) {
    stdout.write('Masukan Angka ke-$j :');
    double Input = double.parse(stdin.readLineSync()!);
    X.add(Input);
  }

  double Jml = X[0] + X[1] + X[2] + X[3] + X[4];
  double Avg = Jml / X.length;
  X.sort();
  print("Jumlah : $Jml");
  print("Rata-Rata : $Avg");
  print("Maksimal : ${X.last}");
  print("Minimal : ${X.first}");
  
  print("==============================================================================================");
  // 4. Menebak Angka

  var random = Random();
  int angkaRandom = random.nextInt(5)+1;
  int angkaTebakan;
 
  do {
    stdout.write("Tebak angka (0-5): ");
    angkaTebakan = int.parse(stdin.readLineSync()!);
 
    if (angkaTebakan < angkaRandom) {
      print("Terlalu kecil, coba lagi.");
    } else if (angkaTebakan > angkaRandom) {
      print("Terlalu besar, coba lagi.");
    }
  } while (angkaTebakan != angkaRandom);
 
  print("Selamat! Angka yang benar adalah $angkaRandom");
}