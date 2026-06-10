// double — тип возвращаемого значения
// calculateArea — имя функции
// (double width, double height) — параметры и их типы
double calculateArea(double width, double height) {
  return width * height; // Тело функции и возврат значения
}

void sayHello() {
  print('Привет!');
}

void printAddress(String city, String street) {
  print('$city, $street');
}

// Переименовано, чтобы избежать конфликта с другим определением
void printAddressInfo(String city, String street) {
  print('$city, $street');
}

void printCarInfo({required String brand, int? year}) {
  print('Марка: $brand, Год: $year');
}
// Вызов: порядок любой, имена обязательны
// Вызовы перенесены в main

// Обычная запись:
double multiply(double a, double b) {
  return a * b;
}

// Стрелочная запись (делает абсолютно то же самое):
double multiplyArrow(double a, double b) => a * b;

// Если статус не передан, он автоматически будет 'guest'
void loginUser(String name, {String status = 'guest'}) {
  print('Пользователь $name вошел со статусом $status');
}

void main() {
  loginUser('Алексей'); // Выведет: ... статусом guest
  loginUser('Ольга', status: 'admin'); // Выведет: ... статусом admin
  describeUser(
    name: 'Иван',
    age: 30,
  ); // Выведет: Пользователь Иван, возраст: 30
  describeUser(name: 'Мария'); // Выведет: Пользователь Мария, возраст не указан
  describeUser(
    age: 25,
    name: 'Сергей',
  ); // Выведет: Пользователь Сергей, возраст: 25)
  print(createEmail('jane', domain: 'google.com')); // Вернет: 6ZrH8@example.com
  print(createEmail("Bill"));
}

// Функция проверяет, совершеннолетний ли пользователь
bool isAdult({required int age}) => age >= 18;

void describeUser({required String name, int? age}) {
  if (age != null) {
    print('Пользователь $name, возраст: $age');
  } else {
    print('Пользователь $name, возраст не указан');
  }
}

String createEmail(String username, {String domain = 'example.com'}) =>
    '$username@$domain';
