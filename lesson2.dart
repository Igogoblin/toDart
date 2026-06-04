import 'dart:io';

void main() {
  int number = int.parse(stdin.readLineSync()!);
  int count = 0;
  bool flag = false;
  for (int i = 0; i < number; i++) {
    flag = false;
    int num = int.parse(stdin.readLineSync()!);
    for (int j = 2; j < num; j++) {
      if (num % i == 0) {
        flag = true;
        break;
      }
    }
    if (flag) {
      count++;
    }
  }

  stdout.write(count);
}
