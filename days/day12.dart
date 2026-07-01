void main() {
  Map<String, dynamic> user = {'name': 'Илья', 'balance': 250.0};
  if (user['balance'] is num && user['balance'] > 100) {
    print('Баланс пользователя ${user['name']} больше 100');
  } else {
    print('Баланс пользователя ${user['name']} меньше или равен 100');
  }
}
