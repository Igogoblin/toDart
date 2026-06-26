/*  меню выбора действий, используя switch-case, а историю операций преврати в список мап List<Map<String, dynamic>>, чтобы фиксировать тип операции и сумму.7
*/

import 'dart:io';

void main() {
  List<Map<String, dynamic>> operations = [
    {'steps': 0},
    {'amount': 0},
    {"lastOperation": null},
  ];
  int forAut = 1;
  while (forAut == 1) {
    operations[0]['steps'] = (operations[0]['steps'] as int) + 1;
    roles();
    int iteration = input();
    switch (iteration) {
      case 1:
        print("Ваш баланс: ${operations[1]['amount']}");
        operations[2]["lastOperation"] = "Проверка баланса";
        break;
      case 2:
        print("Введите сумму для пополнения: ");
        int sum = input();
        operations[1]['amount'] = (operations[1]['amount'] as int) + sum;
        print("Ваш баланс: ${operations[1]['amount']}");
        operations[2]["lastOperation"] = "Пополнение на $sum";
        break;
      case 3:
        print("Введите сумму для снятия: ");
        int sum = input();
        if (sum > (operations[1]['amount'] as int)) {
          print("Недостаточно средств");
          continue;
        } else {
          operations[1]['amount'] = (operations[1]['amount'] as int) - sum;
          print("Ваш баланс: ${operations[1]['amount']}");
          operations[2]["lastOperation"] = "Снятие на $sum";
        }
        break;
      case 4:
        forAut = 0;
        print("Пока!");
        break;
      default:
        print("Неверный ввод. Пожалуйста, выберите действие от 1 до 4.");
    }
    print(
      "История операций: Шаг ${operations[0]['steps']}, Последняя операция: ${operations[2]["lastOperation"]}, Баланс: ${operations[1]['amount']}",
    );
  }

  // String? operationType;
}

void roles() {
  print("действие: 1 — проверить баланс, 2 — пополнить, 3 — снять, 4 — выход.");
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
