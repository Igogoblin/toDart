void main() {
  Map<String, dynamic> user = {'name': 'Илья', 'balance': 250.0};
  if (user['balance'] is num && user['balance'] > 100) {
    print('Баланс пользователя ${user['name']} больше 100');
  } else {
    print('Баланс пользователя ${user['name']} меньше или равен 100');
  }

  List<Map<String, dynamic>> users1 = [
    {'name': 'Аня', 'balance': 500.0},
    {'name': 'Боря', 'balance': null}, // Null-баланс
    {'name': 'Влад', 'balance': 50.0}, // Маленький баланс
    {'name': 'Дима', 'balance': 120.5},
    {'name': 'Клон', 'balance': 'NaN'},
  ];
  List<Map<String, dynamic>> richUsers = users1.where((user) {
    final balance = user['balance'];
    return balance != null && !balance as num > 100 && !balance.isNaN;
  }).toList();

  print('Пользователи с балансом больше 100:');
  for (var user in richUsers) {
    print('${user['name']} - ${user['balance']}');
  }
  print(richUsers);
  print("----1------------------------");
  task1(users1);
  print("----2-------------------------");
  //task2(users1);
  print("----3-------------------------");
  //task3(users1);
}

// Задание 1: Уменьшить баланс на 13% (налог)
// Используем .where для фильтрации только тех, у кого баланс — это реально число
List<Map<String, dynamic>> task1(List<Map<String, dynamic>> users1) {
  return users1
      .where((user) => user['balance'] is num) // Защита от null и 'NaN'
      .map((user) {
        final updatedUser = Map<String, dynamic>.from(user);
        updatedUser['balance'] = (updatedUser['balance'] as num) * 0.87;
        return updatedUser;
      })
      .toList();
}

// Задание 2: Общий фонд (Агрегация)
double task2(List<Map<String, dynamic>> users1) {
  // Используем оператор ?? 0, как указано в подсказке,
  // но сначала проверяем, что баланс является числом
  double totalBalance = users1.fold(0.0, (sum, user) {
    final balance = user['balance'];
    final actualBalance = (balance is num) ? balance.toDouble() : 0.0;
    return sum + actualBalance;
  });

  print('Общий баланс всех пользователей: $totalBalance');
  return totalBalance;
}

// Задание 3: Черный список
// Оставляем только тех пользователей, чей баланс СТРОГО является числом (is num)
List<Map<String, dynamic>> task3(List<Map<String, dynamic>> users1) {
  return users1.where((user) {
    return user.containsKey('balance') && user['balance'] is num;
  }).toList();
}
