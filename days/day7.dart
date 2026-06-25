/* Практика: Напиши программу, которая хранит баланс пользователя. В цикле запрашивай действие: 1 — проверить баланс, 2 — пополнить, 3 — снять, 4 — выход. Храни историю операций в List.
Самопроверка: Программа не должна уходить в бесконечный цикл при неверном вводе и не должна позволять уходить в минус.
*/
/*
1. проходиться циклом
2. проверять не надо ли заканчивать
3. вычислять действия согласно условию
4. записывать в массив действия

*/
import 'dart:io';

void main() {
  int forAut = 1;
  int step = 0;
  int balance = 100;
  List<String> History = [];
  while (forAut == 1) {
    step++;
    roles();
    int iteration = input();
    if (iteration == 1) {
      print("Ваш баланс: $balance");
      History.add("Шаг $step, Ваш баланс: $balance");
    } else if (iteration == 2) {
      print("Введите сумму для пополнения: ");
      int sum = input();
      balance = balance + sum;
      print("Ваш баланс: $balance");
      History.add("Шаг $step, Ваш баланс: $balance");
    } else if (iteration == 3) {
      print("Введите сумму для снятия: ");
      if (int.parse(stdin.readLineSync()!) > balance) {
        print("Недостаточно средств");
        continue;
      } else {
        int sum = input();
        balance = balance - sum;
        print("Ваш баланс: $balance");
        History.add("Шаг $step, Ваш баланс: $balance");
      }
    } else if (iteration == 4) {
      forAut = 0;
      print("Пока!");
    }
  }
}

int input() {
  try {
    int iteration = int.parse(stdin.readLineSync()!);
    return iteration;
  } catch (e) {
    print("Ошибка ввода. Пожалуйста, введите число.");
    return input();
  }
}

void roles() {
  print("действие: 1 — проверить баланс, 2 — пополнить, 3 — снять, 4 — выход.");
}
