/*Что учим: Приватные поля (_fieldName), геттеры (get) и сеттеры (set).
Практика: Создай класс BankAccount. Сделай поле _balance приватным. Напиши сеттер для баланса, который не позволяет установить отрицательное значение (выводи ошибку в консоль).
Самопроверка: Попробуй изменить _balance напрямую из другого файла (или внутри DartPad, сымитировав приватность).
*/

void main() {
  final account = BankAccount(1000.0);
  print('Initial Balance: ${account.balance}'); // Выводит начальный баланс
  account.balance = 500.0; // Устанавливаем новый баланс через сеттер
}

class BankAccount {
  double _balance; // Приватное поле для хранения баланса

  BankAccount(this._balance);

  // Геттер для получения значения баланса
  double get balance => _balance;

  // Сеттер для установки значения баланса
  set balance(double newBalance) {
    if (newBalance < 0) {
      print('Ошибка: Баланс не может быть отрицательным!');
    } else {
      _balance = newBalance;
    }
  }
}
