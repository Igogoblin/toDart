void main() {
  processData(42); // Вывод: Вы ввели целое число: 42
  processData(3.14); // Вывод: Вы ввели число с плавающей точкой: 3.14
  processData("Hello"); // Вывод: Вы ввели строку: Hello
  processData(true); // Вывод: Неизвестный тип данных: bool

  dynamic rawData = 'Передай привет Flutter';
  String strongData = rawData as String; // Приведение типа
  print(strongData.toUpperCase()); // Вывод: ПЕРЕДАЙ ПРИВЕТ FLUTTER

  try {
    print(apiKey); // Ошибка: переменная не инициализирована
  } catch (e) {
    print("Ошибка: переменная apiKey не инициализирована. ${e.toString()}");
  }
  initApp(); // Инициализация переменной
  print(apiKey); // Вывод: 1234567890abcdef
}

void processData(dynamic input) {
  if (input is int) {
    print("Вы ввели целое число: $input");
  } else if (input is double) {
    print("Вы ввели число с плавающей точкой: $input");
  } else if (input is String) {
    print("Вы ввели строку: $input");
  } else {
    print("Неизвестный тип данных: ${input.runtimeType}");
  }
}

late String apiKey; // Объявление переменной без инициализации

void initApp() {
  apiKey = "1234567890abcdef"; // Инициализация переменной
  print("API Key инициализирован: $apiKey");
}
